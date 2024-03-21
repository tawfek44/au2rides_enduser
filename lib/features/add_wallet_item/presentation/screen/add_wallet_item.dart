
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/app_text.dart';

class AddWalletItemScreen extends StatefulWidget {
  const AddWalletItemScreen({super.key});

  @override
  State<AddWalletItemScreen> createState() => _AddWalletItemScreenState();
}

class _AddWalletItemScreenState extends State<AddWalletItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.saveAndDelete,
          onPressed: (){

          },
          onPressedDelete: (){

          },
          title: AppText(
            text: "Add Wallet Item",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
            top: 15.w,
            right: 15.w,
            left: 15.w,
            bottom: MediaQuery.of(context).viewInsets.bottom + 10.h),
        child: SingleChildScrollView(
          child: CupertinoListSection.insetGrouped(
            margin: EdgeInsets.only(
                left: 0, right: 0, top: 0, bottom: 15.h),
            children: [
              getListTileInModalButtonSheet(
                  icon: CupertinoIcons.right_chevron,
                  title: "Wallet provider",
                  value: "Mobil",
                  choice: WalletCountryChoice.wallet,
                  leadingIcon: Icon(
                    CupertinoIcons.square_favorites,
                    color: Theme.of(context).primaryColor,
                  )),
              getListTileInModalButtonSheet(
                  icon: CupertinoIcons.right_chevron,
                  title: "Country",
                  value: "Egypt",
                  choice: WalletCountryChoice.country,
                  leadingIcon: Icon(
                    CupertinoIcons.globe,
                    color: Theme.of(context).primaryColor,
                  )),
              getListTileInModalButtonSheet(
                  icon: CupertinoIcons.right_chevron,
                  title: "Currency",
                  value: "EGP",
                  choice: WalletCountryChoice.currency,
                  leadingIcon: Icon(
                    CupertinoIcons.money_dollar_circle,
                    color: Theme.of(context).primaryColor,
                  )),
              getReusableTextField(
                  title: "Account",
                  leadingIcon: CupertinoIcons.mail,
                  hintText: "ex:****@gmail.com"),
              getReusableTextField(
                  title: "Total points",
                  leadingIcon: CupertinoIcons.star_circle,
                  hintText: "0"
              ),
              getNotesSection(context: context)
            ],
          ),
        ),
      ),
    );
  }

  Widget getListTileInModalButtonSheet({
    required String title,
    IconData? icon,
    required String value,
    required Widget leadingIcon,
    required WalletCountryChoice choice
  }) =>
      CupertinoListTile.notched(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          onTap: () {
            switch(choice) {
              case WalletCountryChoice.wallet:
                NamedNavigatorImpl().push(Routes.providersScreenRoute);
                break;
              case WalletCountryChoice.country:
                NamedNavigatorImpl().push(Routes.countriesScreenRoute);
                break;
              case WalletCountryChoice.currency:
                NamedNavigatorImpl().push(Routes.chooseCurrencyScreen);
                break;
            }
          },
          leading: leadingIcon,
          title: AppText(
            text: title,
            fontSize: fontSize,
          ),
          trailing: Row(
            children: [
              SizedBox(
                width: 120.w,
                child: AppText(
                  maxLines: 2,
                  textAlign: TextAlign.end,
                  text: value,
                  fontSize: fontSize,
                  color: AppColors.greyColor,
                ),
              ),
              gap(width: 5.w),
              Icon(
                icon,
                color: AppColors.secondaryColor,
                size: 15.w,
              ),
            ],
          ));

  Widget getReusableTextField(
      {required String title,
        required IconData leadingIcon,
        required String hintText}) =>
      CupertinoListTile.notched(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        leading: Icon(
          leadingIcon,
          color: Theme.of(context).primaryColor,
        ),
        additionalInfo: SizedBox(
          width: 150.w,
          child: CupertinoTextField(
            textAlign: TextAlign.right,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            maxLines: 1,
            placeholderStyle: TextStyle(
                fontSize: fontSize, height: 1.7.h, color: AppColors.greyColor),
            placeholder: hintText,
            decoration:
            BoxDecoration(border: Border.all(style: BorderStyle.none)),
          ),
        ),
      );
}

enum WalletCountryChoice{wallet,country,currency}
