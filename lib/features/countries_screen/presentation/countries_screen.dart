import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart';
import 'package:au2rides/features/download_screen/data/models/country/country_model.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/constants/constants.dart';
import '../../../core/dependancy_injection/injection.dart';
import '../../../core/storage/local/table_names.dart';
import '../../../core/styles/colors.dart';
import '../../../generated/l10n.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  var countriesList = [];

  var tempCountryList = [];
  TextEditingController countriesSearchText = TextEditingController();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await context.read<GetCountriesCubit>().getCountriesLocalDatabase(
          tableName: TableNames.countryTableName,
          languageId: getIt<UserRepository>().userLanguage == "ar"
              ? arLanguageNumberCode
              : enLanguageNumberCode);
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
                  text: S.current.countries,
                  fontSize: 16.sp,
                  color: AppColors.white,
                ))),
        body: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            getSearchBar(),
            getCountriesListView(),
          ],
        ),
      ),
    );
  }

  getCountriesListView() {
    return BlocBuilder<GetCountriesCubit, GetCountiesState>(
      builder: (context, state) {
        if (state is GetCountiesStateLoading) {
          return const Center(
            child: AppCircularProgressIndicator(),
          );
        } else if (state is GetCountiesStateError) {
          return Center(
              child: AppText(
            text: state.e.toString(),
            fontSize: fontSize,
          ));
        } else if (state is GetCountiesStateLoaded) {
          tempCountryList = state.response;
          return SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    getCountriesListSection(countriesList: state.response)
                  ],
                )),
          );
        } else {
          return Container();
        }
      },
    );
  }

  getCountriesListSection({required countriesList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [getListView(countries: countriesList)],
      );

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
              controller: countriesSearchText,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) async {
                await context.read<GetCountriesCubit>().search(
                      textToSearch: text,
                      responseList: tempCountryList,
                    );
              },
            ),
          )
        ],
      );

  Widget getListView({required var countries}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CupertinoListTile(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedCountryIndex(index);
              getIt<UserRepository>()
                  .setSelectedCountry(countries[index].countryName);
              getIt<UserRepository>().setSelectedCountryCallingCode(
                  countries[index].countryCallingCode);
              getIt<UserRepository>()
                  .setSelectedCountryId(countries[index].countryId);

              Navigator.pop(context, [
                countries[index].countryName,
                countries[index].countryCallingCode
              ]);
            });
          },
          title: AppText(
            text: countries[index].countryName,
            fontSize: fontSize,
          ),
          trailing: countries[index].countryName ==
                  getIt<UserRepository>().getSelectedCountry
              ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                )
              : Container(),
        ),
        itemCount: countries.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            height: 0,
            indent: 20.w,
          );
        },
      );

  Widget getCountriesSection() => ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: countries.length,
      itemBuilder: (context, index) => getCountryItemWidget(index: index));

  Widget getCountryItemWidget({required index}) => Container(
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(Radius.circular(corner))),
      child: Column(
        children: [
          getCountriesWidget(index: index),
          if (index != countries.length - 1) ...[
            Divider(
              height: 0,
              indent: 55.w,
            ),
          ]
        ],
      ));

  Widget getCountriesWidget({required index}) => Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            NamedNavigatorImpl().push(Routes.countriesScreenRoute);
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, top: 15.h, bottom: 15.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.flag,
                  color: Theme.of(context).primaryColor,
                ),
                gap(width: 20.w),
                AppText(
                  text: countriesList[index].countryKeyCode,
                  fontSize: 13.sp,
                  color: AppColors.greyColor,
                ),
                const Spacer(),
                const Icon(
                  CupertinoIcons.forward,
                  color: AppColors.greyColor,
                )
              ],
            ),
          ),
        ),
      );
}
