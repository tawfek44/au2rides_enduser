import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/presentation/bloc/choose_ride_makes_cubit.dart';
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

class ChooseRideMakesScreen extends StatefulWidget {
  const ChooseRideMakesScreen({super.key});

  @override
  State<ChooseRideMakesScreen> createState() => _ChooseRideMakesScreenState();
}

class _ChooseRideMakesScreenState extends State<ChooseRideMakesScreen> {
  var carMakesList=[];

  var tempCarMakesList=[];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      carMakesList = await context.read<ChooseRideMakesCubit>().getRideMakes(
          rideTypeId: getIt<UserRepository>().getSelectedRideTypeId);
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
        body: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            getSearchBar(),
            getRideMakesListView(),
          ],
        ),
      ),
    );
  }

  getRideMakesListView() =>
      BlocBuilder<ChooseRideMakesCubit, ChooseRideMakesState>(
        builder: (context, state) {
          if (state is LoadingChooseRideMakesState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorChooseRideMakesState) {
            return Center(
                child: AppText(
              text: state.e.toString(),
              fontSize: fontSize,
            ));
          } else if (state is LoadedChooseRideMakesState) {
            tempCarMakesList = state.response;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    getRideMakesListGroup(rideMakesList: state.response),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getRideMakesListGroup({required rideMakesList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getRideMakesList(rideMakesList: rideMakesList),
        ],
      );

  getRideMakesList({required rideMakesList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getRideMakesListTile(
            rideMakeName: rideMakesList[index].makeName,
            rideMakeImageUrl: rideMakesList[index].makeLogoUrl,
            rideMakeId: rideMakesList[index].makeId,
            index: index),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: rideMakesList.length,
      );

  getRideMakesListTile(
          {required rideMakeName,
          required rideMakeImageUrl,
          required index,
          required rideMakeId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedRideMakesIndex(index);
              getIt<UserRepository>().setSelectedRideMakesName(rideMakeName);
              getIt<UserRepository>().setSelectedRideMakesId(rideMakeId);

              Navigator.pop(context, rideMakeName);
            });
          },
          backgroundColor: Colors.white,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30.w),
            child: CachedNetworkImage(
              imageUrl: rideMakeImageUrl,
            ),
          ),
          title: AppText(
            text: rideMakeName,
            fontSize: fontSize,
          ),
          trailing: rideMakeName == getIt<UserRepository>().getSelectedRideMakes
              ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                )
              : Container());

  getSearchBar() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.all(20.w),
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
                await context
                    .read<ChooseRideMakesCubit>()
                    .searchInRideMakesListView(
                     rideId: getIt<UserRepository>().getSelectedRideTypeId,
                      text: text,
                      responseList: tempCarMakesList,
                    );
              },
            ),
          )
        ],
      );
}
