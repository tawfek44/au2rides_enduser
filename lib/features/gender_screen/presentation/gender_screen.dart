import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/dependancy_injection/injection.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
import '../../../generated/l10n.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  var genderItemList = [];
  var tempGenderList = [];

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      genderItemList = await context.read<GetGenderCubit>().getAllGender();
      tempGenderList = genderItemList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<IconData> genderIconList = [
      Icons.male,
      Icons.female,
      Icons.do_not_disturb_on_total_silence
    ];
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: SafeArea(
          child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: S.current.chooseYourGender,
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<GetGenderCubit, GetGenderState>(
          builder: (context, state) {
            if (state is LoadingGetGenderState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is LoadedGetGenderState) {
              return Padding(
                padding: EdgeInsets.all(20.w),
                child: CupertinoListSection.insetGrouped(
                  margin: EdgeInsets.zero,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: genderItemList.length,
                      itemBuilder: (context, index) => getGenderItem(
                        index: index,
                        genderIconList: genderIconList,
                        genderItemList: state.response,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Center(
                child: AppText(
                  text: S.current.thereIsAnErrorInGender,
                  fontSize: fontSize,
                ),
              );
            }
          },
        ),
      )),
    );
  }

  Widget getGenderItem({required index, genderItemList, genderIconList}) =>
      Column(
        children: [
          getCountriesWidget(
            text: genderItemList[index]["gender_name"],
            icon: genderIconList[index],
            genderId: genderItemList[index]["gender_id"],
            genderIndex: index
          ),
          if (index != genderItemList.length - 1) ...[
            Divider(
              indent: 55.w,
              height: 0,
            )
          ]
        ],
      );

  Widget getCountriesWidget(
          {IconData? icon, required text, required genderId, required genderIndex}) =>
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedGenderId(genderId);
              getIt<UserRepository>().setSelectedGenderIndex(genderIndex);
              getIt<UserRepository>().setSelectedGenderName(text);

              NamedNavigatorImpl().push(Routes.enterUserInfoScreenRoute,replace: true);
            });
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Theme.of(context).primaryColor,
                ),
                gap(width: 20.w),
                AppText(
                  text: text,
                  fontSize: fontSize,
                ),
                const Spacer(),
                if(text == getIt<UserRepository>().getSelectedGenderName)...[
                  Icon(
                    Icons.check,
                    color: Theme.of(context).primaryColor,
                  )
                ]
                else Container()

              ],
            ),
          ),
        ),
      );
}
