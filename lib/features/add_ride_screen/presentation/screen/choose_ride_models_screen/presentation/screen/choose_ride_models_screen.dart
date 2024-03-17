import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/presentation/bloc/choose_ride_models_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseRideModelsScreen extends StatefulWidget {
  const ChooseRideModelsScreen({super.key});

  @override
  State<ChooseRideModelsScreen> createState() => _ChooseRideModelsScreenState();
}

class _ChooseRideModelsScreenState extends State<ChooseRideModelsScreen> {
  var rideModelsList ;
  var tempRideModelsList ;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      rideModelsList = await context
          .read<ChooseRideModelsCubit>()
          .getRideModels(
              rideMakeId: getIt<UserRepository>().getSelectedRideMakeId);
      tempRideModelsList = rideModelsList;
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
              text: S.current.chooseTheModel,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<ChooseRideModelsCubit, ChooseRideModelsState>(
          builder: (context, state) {
            if (state is LoadingChooseRideModelsState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is ErrorChooseRideModelsState) {
              return Center(
                  child: AppText(
                text: state.e.toString(),
                fontSize: fontSize,
              ));
            } else if (state is LoadedChooseRideModelsState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      getSearchBar(),
                      gap(height: 15.h),
                      getRideModelsListGroup(rideModelsList: tempRideModelsList),
                    ],
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  getRideModelsListGroup({required rideModelsList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getRideModelsList(rideModelsList: rideModelsList),
        ],
      );

  getRideModelsList({required rideModelsList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getRideModelsListTile(
            rideModelName: rideModelsList[index].rideModelName,
            rideModelId: rideModelsList[index].rideModelId,
            index: index),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: rideModelsList.length,
      );

  getRideModelsListTile(
          {required rideModelName,  required index,required rideModelId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedRideModelsIndex(index);
              getIt<UserRepository>().setSelectedRideModelsName(rideModelName);
              getIt<UserRepository>().setSelectedRideModelsId(rideModelId);
              Navigator.pop(context,rideModelName);
            });
          },
          backgroundColor: Colors.white,
          title: AppText(
            text: rideModelName,
            fontSize: fontSize,
          ),
          trailing: rideModelName == getIt<UserRepository>().getSelectedRideModelName
              ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                )
              : Container());

  getSearchBar() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
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
              onChanged: (String text) {
                var temp = [];
                if (text.isNotEmpty) {
                  for (var element in tempRideModelsList) {
                    if (element.rideModelName.toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempRideModelsList = temp;
                  } else {
                    tempRideModelsList = rideModelsList;
                  }
                });
              },
            ),
          )
        ],
      );
}
