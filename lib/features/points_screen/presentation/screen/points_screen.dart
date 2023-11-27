
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class PointsScreen extends StatefulWidget {
  const PointsScreen({super.key});

  @override
  State<PointsScreen> createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "My au2rides Club",
              fontSize: 16.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCurrencyWidget(),
              gap(height: 15.h),
              getUpperCard(),
              getQrCodeCard(),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  getButtonsWidget(
                      buttonTitle: "Transaction History",
                      screenRoute: ScreenRoute.transactionHistory,
                      icon: Icon(
                        Icons.history,
                        color: Theme.of(context).primaryColor,
                      )),
                   Divider(height: 0,indent: 60.w,thickness: 0.5,),
                  getButtonsWidget(
                      buttonTitle: "Coupons",
                      screenRoute: ScreenRoute.coupons,
                      icon: Icon(
                        CupertinoIcons.star_circle,
                        color: Theme.of(context).primaryColor,
                      )),
                ],
              ),
              gap(height: 10.h),
              AppText(
                fontSize: fontSize,
                text: "Others",
                fontWeight: FontWeight.bold,
              ),
              gap(height: 15.h),
              getOthersContainerWidget()
            ],
          ),
        ),
      ),
    );
  }

  getCurrencyWidget() => Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {
            NamedNavigatorImpl().push(Routes.currencyScreenRoute);
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            width: double.infinity,
            child: Row(
              children: [
                AppText(
                  text: "Currency",
                  fontSize: fontSize,
                ),
                const Spacer(),
                AppText(
                  text: "EGP",
                  fontSize: fontSize,
                  color: Colors.grey[500]!,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.greyColor,
                  size: 15.w,
                )
              ],
            ),
          ),
        ),
      );

  getOthersContainerWidget() => Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [getOthers()],
          ),
        ),
      );

  getButtonsWidget(
          {required String buttonTitle,
          required ScreenRoute screenRoute,
          required Icon icon}) =>
      CupertinoListTile(
        onTap: () {
          switch (screenRoute) {
            case ScreenRoute.transactionHistory:
              NamedNavigatorImpl().push(Routes.transactionHistoryScreenRoute);
              break;
            case ScreenRoute.coupons:
              NamedNavigatorImpl().push(Routes.couponsScreenRoute);
              break;
          }
        },
        leading: icon,
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
        title: AppText(
          fontSize: fontSize,
          text: buttonTitle,
          fontWeight: FontWeight.bold,
          maxLines: 2,
        ),
      );

  getQrCodeCard() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(corner),
            bottomRight: Radius.circular(corner),
          ),
          color: Colors.white,
        ),
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Column(
            children: [
              SizedBox(
                width: 100.w,
                child: Image.asset("images/qrcode.png"),
              )
            ],
          ),
        ),
      );

  getUpperCard() => Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(corner),
                topRight: Radius.circular(corner),
              ),
              color: Theme.of(context).primaryColor,
            ),
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
              child: Column(
                children: [
                  getUpperCardTitle(),
                  gap(height: 8.h),
                  getUpperCardPoints(),
                  gap(height: 8.h),
                  getUpperCardCurrencyAndMoney(),
                ],
              ),
            ),
          ),
          Opacity(
              opacity: .2,
              child: Icon(Icons.star_rate_sharp,
                  color: Colors.grey[100], size: 100.w))
        ],
      );

  getUpperCardTitle() => Row(
        children: [
          AppText(
            text: "My CLUB",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: fontSize,
          ),
          const Spacer(),
          AppText(
            text: "Earn More Everyday",
            color: Colors.white,
            fontSize: fontSize,
          ),
        ],
      );

  getUpperCardPoints() => Row(
        children: [
          AppText(
            text: "POINTS",
            color: Colors.white,
            fontSize: fontSize,
          ),
          const Spacer(),
          AppText(
            text: "861.66",
            color: Colors.white,
            fontSize: fontSize,
          ),
        ],
      );

  getUpperCardCurrencyAndMoney() => Row(
        children: [
          AppText(
            text: "EGP",
            color: Colors.white,
            fontSize: fontSize,
          ),
          const Spacer(),
          AppText(
            text: "86.16",
            color: Colors.white,
            fontSize: fontSize,
          ),
        ],
      );

  getOthers() => ListView.builder(
      itemCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => getOthersItemWidget());

  getOthersItemWidget() => Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                getVendorImage(),
                gap(width: 10.w),
                getTitles(),
                const Spacer(),
                getValues()
              ],
            ),
            getTransferButton(),
            const Divider(
              height: 0,
            ),
          ],
        ),
      );

  getVendorImage() => SizedBox(
        width: 50.w,
        child: Image.asset('images/img.png'),
      );

  getTitles() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "My Points",
            fontSize: fontSize,
          ),
          gap(height: 5.h),
          AppText(
            text: "Money",
            fontSize: fontSize,
          ),
        ],
      );

  getValues() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "657",
            fontSize: fontSize,
            color: Colors.grey[500]!,
          ),
          gap(height: 5.h),
          AppText(
            text: "1000 EGP",
            fontSize: fontSize,
            color: Colors.grey[500]!,
          ),
        ],
      );

  getTransferButton() => TextButton.icon(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Directionality(
              textDirection: TextDirection.ltr,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(corner),
                      topLeft: Radius.circular(corner),
                    ),
                    color: Colors.grey[200]),
                width: double.infinity,
                child: getModalBottomSheetWidgets(),
              ),
            ),
          );
        },
        icon: const Icon(Icons.compare_arrows_sharp),
        label: AppText(
          text: "Transfer",
          fontSize: fontSize,
          color: Theme.of(context).primaryColor,
        ),
      );

  getProviderNameRowInModalBottomSheet() => Row(
        children: [
          AppText(text: "From"),
          const Spacer(),
          AppText(text: "Mobilawy"),
        ],
      );

  getPointsRowInModalBottomSheet() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppText(text: "Points"),
          const Spacer(),
          SizedBox(
              width: 150.w,
              child: CupertinoTextField(
                keyboardType: TextInputType.number,
                maxLines: 1,
                decoration: BoxDecoration(
                    border: Border.all(style: BorderStyle.none),
                    color: Colors.white),
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
              )),
        ],
      );

  getAmountRowInModalBottomSheet() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppText(text: "Amount"),
          const Spacer(),
          AppText(text: "120 EGP")
        ],
      );

  getProceedButtonInModalBottomSheet() =>
      AppButton(label: "Proceed", onPressed: () {}, height: 45.h);

  getModalBottomSheetWidgets() => Wrap(children: [
        Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Points Transfer",
                fontWeight: FontWeight.bold,
              ),
              gap(height: 20.h),
              getProviderNameRowInModalBottomSheet(),
              gap(height: 10.h),
              getPointsRowInModalBottomSheet(),
              gap(height: 10.h),
              getAmountRowInModalBottomSheet(),
              gap(height: 10.h),
              getProceedButtonInModalBottomSheet()
            ],
          ),
        ),
      ]);
}

enum ScreenRoute { transactionHistory, coupons }
