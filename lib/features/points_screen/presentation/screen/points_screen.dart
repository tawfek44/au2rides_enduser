import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              text: "My Points",
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.w),
          child: Column(
            children: [
              getCurrencyWidget(),
              gap(height: 15.h),
              getUpperCard(),
              getQrCodeCard(),
              gap(height: 15.h),
              getButtonsWidget(buttonTitle: "TRANSACTION HISTORY"),
              gap(height: 8.h),
              getButtonsWidget(buttonTitle: "COUPONS"),
              gap(height: 10.h),
              getCouponsContainerWidget()
            ],
          ),
        ),
      ),
    );
  }
  getCurrencyWidget()=>Material(
    color: Colors.white,
    child: InkWell(
      onTap: (){
        NamedNavigatorImpl().push(Routes.currencyScreenRoute);
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
        width: double.infinity,

        child: Row(
          children: [
            AppText(text: "Currency",fontSize: fontSize,),
            const Spacer(),
            AppText(text: "EGP",fontSize: fontSize,color: Colors.grey[500]!,),
            Icon(Icons.arrow_forward_ios,color: AppColors.greyColor,size: 15.w,)
          ],
        ),
      ),
    ),
  );
  getCouponsContainerWidget()=>Container(
    width: double.infinity,
    color: Colors.white,
    child: Padding(
      padding: EdgeInsets.all(15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "Coupons",
            fontWeight: FontWeight.bold,
          ),
          gap(height: 25.h),
          getCoupons()
        ],
      ),
    ),
  );
  getButtonsWidget({required String buttonTitle}) => Material(
        color: Colors.white,
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 5.h),
              child: Center(
                  child: AppText(
                text: buttonTitle,
                fontWeight: FontWeight.bold,
                maxLines: 2,
                color: Theme.of(context).primaryColor,
              )),
            ),
          ),
        ),
      );
  getQrCodeCard() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.w),
            bottomRight: Radius.circular(10.w),
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
                topLeft: Radius.circular(10.w),
                topRight: Radius.circular(10.w),
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
            fontSize: 15.sp,
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
            fontSize: 14.sp,
          ),
          const Spacer(),
          AppText(
            text: "861.66",
            color: Colors.white,
            fontSize: 13.sp,
          ),
        ],
      );
  getUpperCardCurrencyAndMoney() => Row(
        children: [
          AppText(
            text: "EGP",
            color: Colors.white,
            fontSize: 14.sp,
          ),
          const Spacer(),
          AppText(
            text: "86.16",
            color: Colors.white,
            fontSize: 13.sp,
          ),
        ],
      );
  getCoupons() =>ListView.builder(
    itemCount: 2,
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    itemBuilder: (context, index) => getCouponItemWidget()
  );
  getCouponItemWidget()=>Padding(
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
        const Divider(height: 0,),
      ],
    ),
  );
  getVendorImage()=>SizedBox(
    width: 50.w,
    child: Image.asset('images/img.png'),
  );
  getTitles()=>Column(
    crossAxisAlignment:
    CrossAxisAlignment.start,
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
    crossAxisAlignment:
    CrossAxisAlignment.start,
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

  getTransferButton()=> TextButton.icon(
    onPressed: (){},
    icon: const Icon(Icons.compare_arrows_sharp),
    label: AppText(text: "Transfer",color: Theme.of(context).primaryColor,),
  );
}
