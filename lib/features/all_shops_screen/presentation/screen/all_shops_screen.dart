import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class AllShopsScreen extends StatefulWidget {
  const AllShopsScreen({super.key});

  @override
  State<AllShopsScreen> createState() => _AllShopsScreenState();
}

class _AllShopsScreenState extends State<AllShopsScreen> {
  List<String> shopsList = [];
  List<String> tempShopsList = [];
  TextEditingController shopsSearchText = TextEditingController();

  @override
  void initState() {
    shopsList = ["AMS auto mila service", "auto marvel"];
    tempShopsList = shopsList;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.showFuelUp,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.addShopScreenRoute);
          },
          title: AppText(
            text: "Shops",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                getSearchBar(),
                gap(height: 10.h),
                getShopsListSection()
              ],
            )),
      ),
    );
  }

  getShopsListSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [getListView(countries: tempShopsList)],
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
              controller: shopsSearchText,
              decoration:BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) {
                List<String> temp = [];
                print(text);
                if (text.isNotEmpty) {
                  for (var element in tempShopsList) {
                    if (element.toLowerCase().contains(text)) {
                      print(1);
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempShopsList = temp;
                  } else {
                    tempShopsList = shopsList;
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
          leading: const Image(
            image: AssetImage("images/user.png"),
          ),
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

  Widget getShopsWidget({required index}) => Material(
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
                  text: shopsList[index],
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
