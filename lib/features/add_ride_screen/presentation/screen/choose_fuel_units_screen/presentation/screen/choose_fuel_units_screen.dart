import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/presentation/bloc/choose_fuel_units_cubit.dart';
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
      fuelUnitsList = await context.read<ChooseFuelUnitsCubit>().getFuelUnits();
      tempFuelUnitsList = fuelUnitsList;
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
        body: BlocBuilder<ChooseFuelUnitsCubit, ChooseFuelUnitsState>(
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
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      getSearchBar(),
                      gap(height: 15.h),
                      getFuelUnitsListGroup(fuelUnitsList: tempFuelUnitsList),
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
          index: index
        ),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),

        itemCount: fuelUnitsList.length,
      );

  getFuelUnisListTile({required fuelUnitName,required index}) =>
      CupertinoListTile.notched(
        onTap: () {
          setState(() {
            getIt<UserRepository>().setSelectedFuelUnitIndex(index);
            getIt<UserRepository>()
                .setSelectedFuelUnitName(fuelUnitName);

            Navigator.pop(context,fuelUnitName);
          });
        },
        backgroundColor: Colors.white,
        title: AppText(
          text: fuelUnitName,
          fontSize: fontSize,
        ),
        trailing: fuelUnitName == getIt<UserRepository>().getSelectedFuelUnitName
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
                  for (var element in tempFuelUnitsList) {
                    if (element.fuelUnitName.toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempFuelUnitsList = temp;
                  } else {
                    tempFuelUnitsList = fuelUnitsList;
                  }
                });
              },
            ),
          )
        ],
      );
}