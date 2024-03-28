import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/presentation/bloc/choose_ride_type_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseRideTypeScreen extends StatefulWidget {
  const ChooseRideTypeScreen({super.key});

  @override
  State<ChooseRideTypeScreen> createState() => _ChooseRideTypeScreenState();
}

class _ChooseRideTypeScreenState extends State<ChooseRideTypeScreen> {
  var carTypeList;

  var tempCarTypeList=[];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      carTypeList = await context.read<ChooseRideTypeCubit>().getRideTypes();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: S.current.chooseRideType,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: Column(
          children: [
            getSearchBar(),
            getRideTypeList(),
          ],
        ),
      ),
    );
  }
  getRideTypeList() => BlocBuilder<ChooseRideTypeCubit, ChooseRideTypeState>(
        builder: (context, state) {
          if (state is LoadingChooseRideTypeState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorChooseRideTypeState) {
            return Center(
                child: AppText(
              text: state.e.toString(),
              fontSize: fontSize,
            ));
          } else if (state is LoadedChooseRideTypeState) {
            tempCarTypeList = state.response;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    getCarTypeListGroup(carTypesList: state.response),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getCarTypeListGroup({required carTypesList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getCarTypesList(carTypesList: carTypesList),
        ],
      );

  getCarTypesList({required carTypesList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getCarTypeListTile(
            rideTypeId: carTypesList[index].rideTypeId,
            rideType: carTypesList[index].rideTypeName,
            rideTypeImageUrl: carTypesList[index].rideTypeLogoUrl,
            index: index),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: carTypesList.length,
      );

  getCarTypeListTile(
          {required rideType,
          required rideTypeImageUrl,
          required index,
          required rideTypeId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedRideTypeIndex(index);
              getIt<UserRepository>().setSelectedRideType(rideType);
              getIt<UserRepository>().setSelectedRideTypeId(rideTypeId);

              Navigator.pop(context, rideType);
            });
          },
          backgroundColor: Colors.white,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30.w),
            child: CachedNetworkImage(
              imageUrl: rideTypeImageUrl,
            ),
          ),
          title: AppText(
            text: rideType,
            fontSize: fontSize,
          ),
          trailing: rideType == getIt<UserRepository>().getSelectedRideType
              ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                )
              : Container());

  getSearchBar() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.all(10.w),
        children: [
          CupertinoListTile(
            leading: const Icon(
              Icons.search,
              color: AppColors.greyColor,
            ),
            leadingToTitle: 5.w,
            title: CupertinoTextField(
              style: TextStyle(fontSize: fontSize),
              placeholder: S.current.search,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) async {
                await context.read<ChooseRideTypeCubit>().search(
                  textValueFromSearchBar: text,
                  responseList: tempCarTypeList,
                );
              },
            ),
          )
        ],
      );
}
