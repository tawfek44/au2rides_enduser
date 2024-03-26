import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/presentation/bloc/choose_fuel_consumption_units_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseFuelConsumptionUnitsScreen extends StatefulWidget {
  const ChooseFuelConsumptionUnitsScreen({super.key});

  @override
  State<ChooseFuelConsumptionUnitsScreen> createState() => _ChooseFuelConsumptionUnitsScreenState();
}

class _ChooseFuelConsumptionUnitsScreenState extends State<ChooseFuelConsumptionUnitsScreen> {
  var fuelConsumptionUnitsList = [];
  var tempFuelConsumptionUnitsList = [];


  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      fuelConsumptionUnitsList = await context.read<ChooseFuelConsumptionUnitsCubit>().getFuelConsumptionUnits();
      tempFuelConsumptionUnitsList = fuelConsumptionUnitsList;
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
              text: S.current.chooseFuelType,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<ChooseFuelConsumptionUnitsCubit, ChooseFuelConsumptionUnitsState>(
          builder: (context, state) {
            if (state is LoadingChooseFuelConsumptionUnitsState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is ErrorChooseFuelConsumptionUnitsState) {
              return Center(
                  child: AppText(
                text: state.e.toString(),
                fontSize: fontSize,
              ));
            } else if (state is LoadedChooseFuelConsumptionUnitsState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      getSearchBar(),
                      gap(height: 15.h),
                      getFuelConsumptionUnitsListGroup(fuelConsumptionUnitsList: tempFuelConsumptionUnitsList),
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

  getFuelConsumptionUnitsListGroup({required fuelConsumptionUnitsList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getFuelConsumptionUnitsList(fuelConsumptionUnitsList: fuelConsumptionUnitsList),
        ],
      );

  getFuelConsumptionUnitsList({required fuelConsumptionUnitsList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getFuelConsumptionUnitsListTile(
          fuelType: fuelConsumptionUnitsList[index].fuelConsumptionUnitTypeName,
          fuelConsumptionUnitId: fuelConsumptionUnitsList[index].fuelConsumptionUnitTypeId
        ),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),

        itemCount: fuelConsumptionUnitsList.length,
      );
  getFuelConsumptionUnitsListTile({required fuelType,required fuelConsumptionUnitId}) =>
      CupertinoListTile.notched(
        onTap: () {
          setState(() {
            getIt<UserRepository>().setSelectedFuelConsumptionUnitsId(fuelConsumptionUnitId);
            getIt<UserRepository>().setSelectedFuelConsumptionUnits(fuelType);

            Navigator.pop(context,fuelType);
          });
        },
        backgroundColor: Colors.white,
        title: AppText(
          text: fuelType,
          fontSize: fontSize,
        ),
        trailing: fuelType == getIt<UserRepository>().getSelectedFuelConsumptionUnitName
            ? Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        )
            : Container()
      );

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
                  for (var element in tempFuelConsumptionUnitsList) {
                    if (element.fuelConsumptionUnitTypeName.toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempFuelConsumptionUnitsList = temp;
                  } else {
                    tempFuelConsumptionUnitsList = fuelConsumptionUnitsList;
                  }
                });
              },
            ),
          )
        ],
      );
}
