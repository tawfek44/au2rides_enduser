import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/presentation/bloc/choose_ride_makes_cubit.dart';
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
import '../bloc/choose_ride_model_trim_cubit.dart';

class ChooseRideModelTrimScreen extends StatefulWidget {
  const ChooseRideModelTrimScreen({super.key});

  @override
  State<ChooseRideModelTrimScreen> createState() =>
      _ChooseRideModelTrimScreenState();
}

class _ChooseRideModelTrimScreenState extends State<ChooseRideModelTrimScreen> {
  var rideModelTrimsList = [];
  var tempRideModelTrimsList = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<ChooseRideModelTrimCubit>().getRideModelTrims(
          rideMakesModelId: getIt<UserRepository>().getSelectedRideModelId);
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
              text: S.current.chooseRideModelTrim,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [getSearchBar(), getModelTrimListView()],
        ),
      ),
    );
  }

  getModelTrimListView() =>
      BlocBuilder<ChooseRideModelTrimCubit, ChooseRideModelTrimState>(
        builder: (context, state) {
          if (state is LoadingChooseRideModelTrimState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorChooseRideModelTrimState) {
            return Center(
                child: AppText(
              text: state.e.toString(),
              fontSize: fontSize,
            ));
          } else if (state is LoadedChooseRideModelTrimState) {
            tempRideModelTrimsList = state.response;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    getRideModelTrimsListGroup(
                        rideModelTrimsList: state.response),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getRideModelTrimsListGroup({required rideModelTrimsList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getRideMakesList(rideMakesList: rideModelTrimsList),
        ],
      );

  getRideMakesList({required rideMakesList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getRideModelTrimsListTile(
            rideModelTrimName: rideMakesList[index].rideTrimName,
            rideTrimId: rideMakesList[index].rideTrimId,
            index: index),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: rideMakesList.length,
      );

  getRideModelTrimsListTile(
          {required rideModelTrimName, required index, required rideTrimId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedRideModelTrimsIndex(index);
              getIt<UserRepository>()
                  .setSelectedRideModelTrimsName(rideModelTrimName);
              getIt<UserRepository>().setSelectedRideModelTrimId(rideTrimId);

              Navigator.pop(context, rideModelTrimName);
            });
          },
          backgroundColor: Colors.white,
          title: AppText(
            text: rideModelTrimName,
            fontSize: fontSize,
          ),
          trailing:
              rideModelTrimName == getIt<UserRepository>().getSelectedRideMakes
                  ? Icon(
                      Icons.check,
                      color: Theme.of(context).primaryColor,
                    )
                  : Container());

  getSearchBar() => CupertinoListSection.insetGrouped(
        margin:
            EdgeInsets.only(left: 15.w, right: 15.w, top: 15.h, bottom: 10.h),
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
                await context.read<ChooseRideModelTrimCubit>().search(
                      textToSearch: text,
                      responseList: tempRideModelTrimsList,
                    );
              },
            ),
          )
        ],
      );
}
