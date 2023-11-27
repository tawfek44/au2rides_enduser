import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/countries.dart';


import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/constants/constants.dart';
import '../../../core/styles/colors.dart';

class CountriesScreen extends StatefulWidget {
  const CountriesScreen({super.key});

  @override
  State<CountriesScreen> createState() => _CountriesScreenState();
}

class _CountriesScreenState extends State<CountriesScreen> {
  List<String> countriesList = [];
  List<String> tempCountryList = [];
  TextEditingController countriesSearchText = TextEditingController();

  @override
  void initState() {
    countriesList = ["Egypt", "Qatar", "Brazil"];
    tempCountryList = countriesList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
              context: context,
              title: AppText(
                text: "Countries",
                fontSize: 16.sp,
                color: AppColors.white,
              ))),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSearchBar(),
                gap(height: 10.h),
                getCountriesListSection()
              ],
            )),
      ),
    );
  }

  getCountriesListSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getListView(
              countries: tempCountryList)
        ],
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
              placeholder: "Search...",
              controller: countriesSearchText,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) {
                List<String>temp=[];
                if(text.isNotEmpty){
                  for(var element in tempCountryList){
                    if(element.toLowerCase().contains(text)){
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if(temp.isNotEmpty){
                    tempCountryList=temp;
                  }
                  else{
                    tempCountryList=countriesList;
                  }
                });


              },
            ),
          )
        ],
      );

  Widget getListView({required List<String> countries}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => CupertinoListTile(
          onTap: () {},
          title: AppText(
            text: countries[index],
            fontSize: fontSize,
          ),
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
                  text: countriesList[index],
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
