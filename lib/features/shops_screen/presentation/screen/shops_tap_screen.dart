import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShopsTabScreen extends StatefulWidget {
  const ShopsTabScreen({super.key});

  @override
  State<ShopsTabScreen> createState() => _ShopsTabScreenState();
}

class _ShopsTabScreenState extends State<ShopsTabScreen> {
  List<ShopModel> shopsList = [
    ShopModel(
        shopName: "AMS AUTO MILA SERVICE",
        shopAddress: "4 Richmond Parade, Brighton BN2 9PH",
        shopPhoneNumber: "T: +44 20 343 25 25",
        shopEmail: "E: info@milaservice.co.uk",
        shopRate: 2.5),
    ShopModel(
        shopName: "AUTO MARVEL",
        shopAddress: "Agoza, Giza, Egypt",
        shopPhoneNumber: "T: +20 10000005404",
        shopEmail: "E: info@automarvel.co.eg",
        shopRate: 4.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        children: [
          CupertinoListSection.insetGrouped(
            margin: EdgeInsets.zero,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Dismissible(
                  direction: DismissDirection.endToStart,
                  key: ObjectKey(shopsList[index]),
                  background: Container(
                    color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.delete,
                          color: AppColors.white,
                          size: 25.w,
                        )
                      ],
                    ),
                  ),
                  onDismissed: (direction) {
                    setState(() {
                      shopsList.removeAt(index);
                    });
                  },
                  child: shopsItem(shopModel: shopsList[index]),
                ),
                separatorBuilder: (context, index) => Divider(
                  height: 0,
                  indent: 15.w,
                ),
                itemCount: shopsList.length,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget shopsItem({required ShopModel shopModel}) => CupertinoListTile.notched(
        padding: EdgeInsets.all(15.w),
        onTap: () {},
        title: getShopData(shopModel: shopModel),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: AppColors.secondaryColor,
          size: 15.w,
        ),
      );

  Widget getShopData({required ShopModel shopModel}) => SizedBox(
        width: 200.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: shopModel.shopName,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
            gap(height: 5.h),
            AppText(
              text: shopModel.shopAddress,
              fontSize: fontSize,
              maxLines: 10,
            ),
            AppText(
              text: shopModel.shopPhoneNumber,
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
            AppText(
              text: shopModel.shopEmail,
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
            gap(height: 10.h),
            getShopRatingBar(itemSize: 25.w, ratingValue: shopModel.shopRate)
          ],
        ),
      );

  getShopRatingBar({required ratingValue, required itemSize}) =>
      RatingBarIndicator(
        itemPadding: EdgeInsets.zero,
        rating: ratingValue,
        itemBuilder: (context, index) => const Icon(
          Icons.star,
          color: Colors.amber,
        ),
        itemCount: 5,
        itemSize: itemSize,
        direction: Axis.horizontal,
      );
}

class ShopModel {
  String shopName;
  String shopAddress;
  String shopPhoneNumber;
  String shopEmail;
  double shopRate;

  ShopModel(
      {required this.shopName,
      required this.shopAddress,
      required this.shopPhoneNumber,
      required this.shopEmail,
      required this.shopRate});
}
