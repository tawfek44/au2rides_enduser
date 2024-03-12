import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/presentation/bloc/choose_fuel_types_cubit.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/presentation/bloc/choose_metric_units_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseMetricUnitsScreen extends StatefulWidget {
  const ChooseMetricUnitsScreen({super.key});

  @override
  State<ChooseMetricUnitsScreen> createState() => _ChooseMetricUnitsScreenState();
}

class _ChooseMetricUnitsScreenState extends State<ChooseMetricUnitsScreen> {
  var metricUnitsList = [];
  var tempMetricUnitsList = [];


  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      metricUnitsList = await context.read<ChooseMetricUnitsCubit>().getMetricUnits();
      tempMetricUnitsList = metricUnitsList;
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
              text: S.current.chooseMetricUnit,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<ChooseMetricUnitsCubit, ChooseMetricUnitsState>(
          builder: (context, state) {
            if (state is LoadingChooseMetricUnitsState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is ErrorChooseMetricUnitsState) {
              return Center(
                  child: AppText(
                text: state.e.toString(),
                fontSize: fontSize,
              ));
            } else if (state is LoadedChooseMetricUnitsState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      getSearchBar(),
                      gap(height: 15.h),
                      getMetricUnitsListGroup(metricUnitsList: tempMetricUnitsList),
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

  getMetricUnitsListGroup({required metricUnitsList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getMetricUnitsList(metricUnitsList: metricUnitsList),
        ],
      );

  getMetricUnitsList({required metricUnitsList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getMetricUnitsListTile(
            metricUnit: metricUnitsList[index].metricUnitName,
          index: index
        ),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),

        itemCount: metricUnitsList.length,
      );

  getMetricUnitsListTile({required metricUnit,required index}) =>
      CupertinoListTile.notched(
        onTap: () {
          setState(() {
            getIt<UserRepository>().setSelectedMetricUnitsIndex(index);
            getIt<UserRepository>().setSelectedMetricUnitsName(metricUnit);

            Navigator.pop(context,metricUnit);
          });
        },
        backgroundColor: Colors.white,
        title: AppText(
          text: metricUnit,
          fontSize: fontSize,
        ),
        trailing: metricUnit == getIt<UserRepository>().getSelectedMetricUnitName
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
                  for (var element in tempMetricUnitsList) {
                    if (element.metricUnitName.toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempMetricUnitsList = temp;
                  } else {
                    tempMetricUnitsList = metricUnitsList;
                  }
                });
              },
            ),
          )
        ],
      );
}
