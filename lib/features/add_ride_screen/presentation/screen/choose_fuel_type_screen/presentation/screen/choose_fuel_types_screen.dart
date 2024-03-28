import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/presentation/bloc/choose_fuel_types_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';

class ChooseFuelTypesScreen extends StatefulWidget {
  const ChooseFuelTypesScreen({super.key});

  @override
  State<ChooseFuelTypesScreen> createState() => _ChooseFuelTypesScreenState();
}

class _ChooseFuelTypesScreenState extends State<ChooseFuelTypesScreen> {
  var fuelTypesList = [];
  var tempFuelTypesList = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<ChooseFuelTypesCubit>().getFuelTypes();
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
        body: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            getSearchBar(),
            getFuelTypesListView(),
          ],
        ),
      ),
    );
  }

  getFuelTypesListView() =>
      BlocBuilder<ChooseFuelTypesCubit, ChooseFuelTypesState>(
        builder: (context, state) {
          if (state is LoadingChooseFuelTypesState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorChooseFuelTypesState) {
            return Center(
                child: AppText(
              text: state.e.toString(),
              fontSize: fontSize,
            ));
          } else if (state is LoadedChooseFuelTypesState) {
            tempFuelTypesList = state.response;
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    getFuelTypesListGroup(fuelTypesList: state.response),
                  ],
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getFuelTypesListGroup({required fuelTypesList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getFuelTypesList(fuelTypesList: fuelTypesList),
        ],
      );

  getFuelTypesList({required fuelTypesList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getFuelTypesListTile(
            fuelType: fuelTypesList[index].engineFuelTypeName,
            fuelTypeId: fuelTypesList[index].engineFuelTypeId),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: fuelTypesList.length,
      );

  getFuelTypesListTile({required fuelType, required fuelTypeId}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedFuelTypesId(fuelTypeId);
              getIt<UserRepository>().setSelectedFuelType(fuelType);

              Navigator.pop(context, fuelType);
            });
          },
          backgroundColor: Colors.white,
          title: AppText(
            text: fuelType,
            fontSize: fontSize,
          ),
          trailing: fuelType == getIt<UserRepository>().getSelectedFuelTypeName
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
              onChanged: (String text) {
                context.read<ChooseFuelTypesCubit>().search(
                      textToSearch: text,
                      responseList: tempFuelTypesList,
                    );
              },
            ),
          )
        ],
      );
}
