import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/presentation/bloc/choose_fuel_units_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseFuelUnitsScreen extends StatefulWidget {
  const ChooseFuelUnitsScreen({super.key});

  @override
  State<ChooseFuelUnitsScreen> createState() => _ChooseFuelUnitsScreenState();
}

class _ChooseFuelUnitsScreenState extends State<ChooseFuelUnitsScreen> {
  var fuelUnitsList = [];
  var tempFuelUnitsList = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<ChooseFuelUnitsCubit>().getFuelUnits();

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
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            getSearchBar(),
            getFuelUnitListView(),
          ],
        ),
      ),
    );
  }

  getFuelUnitListView() =>
      BlocBuilder<ChooseFuelUnitsCubit, ChooseFuelUnitsState>(
        builder: (context, state) {
          if (state is LoadingChooseFuelUnitsState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorChooseFuelUnitsState) {
            return Center(
                child: AppText(
              text: state.e.toString(),
              fontSize: fontSize,
            ));
          } else if (state is LoadedChooseFuelUnitsState) {
            tempFuelUnitsList = state.response;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    getFuelUnitsListGroup(fuelUnitsList: state.response),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getFuelUnitsListGroup({required fuelUnitsList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getFuelUnitsList(fuelUnitsList: fuelUnitsList),
        ],
      );

  getFuelUnitsList({required fuelUnitsList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getFuelUnisListTile(
            fuelUnitName: fuelUnitsList[index].fuelUnitName,
            fuelUnitId: fuelUnitsList[index].fuelUnitId),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: fuelUnitsList.length,
      );

  getFuelUnisListTile({required fuelUnitName, required fuelUnitId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedFuelUnitId(fuelUnitId);
              getIt<UserRepository>().setSelectedFuelUnitName(fuelUnitName);

              Navigator.pop(context, fuelUnitName);
            });
          },
          backgroundColor: Colors.white,
          title: AppText(
            text: fuelUnitName,
            fontSize: fontSize,
          ),
          trailing:
              fuelUnitName == getIt<UserRepository>().getSelectedFuelUnitName
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
                await context.read<ChooseFuelUnitsCubit>().search(
                      textToSearch: text,
                      responseList: tempFuelUnitsList,
                    );
              },
            ),
          )
        ],
      );
}
