import 'dart:ui';

import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          drawer: Drawer(
              shape: const BeveledRectangleBorder(),
              width: MediaQuery.of(context).size.width * (2 / 3),
              child: getDrawerItems()),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: getAppBar(
                context: context,
                 title: CupertinoTextField(
                suffix: SizedBox(
                  height: 42.h,
                  child: IconButton(
                    icon: Icon(
                      Icons.qr_code,
                      color: Theme.of(context).primaryColor,
                    ),
                    onPressed: () async {},
                  ),
                ),
              ),
                leading: Builder(
                  builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon:  Icon(
                      Icons.menu,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon:  Icon(
                        Icons.notifications_active,
                        color: Theme.of(context).primaryColor,
                      ))
                ]
              )),
          body: Padding(
            padding: EdgeInsets.only(top: 10.h, left: 5.w, right: 5.w),
            child: ListView(
              children: [
                getCarouselSliderWidget(),
                SizedBox(
                  height: 10.h,
                ),
                getSponsoredAds(),
                SizedBox(
                  height: 10.h,
                ),
                AppText(text: 'My Rides'),
                SizedBox(
                  height: 5.h,
                ),
                getMyRides(),
              ],
            ),
          )),
    );
  }

  Widget getDrawerItems() => ListView(
        children: [
          getDrawerHeader(),
          const Divider(),
        ],
      );

  Widget getDrawerHeader() => Padding(
        padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  width: 70.w,
                  height: 70.h,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.w),
                      child: CachedNetworkImage(
                          imageUrl:
                              'https://img.freepik.com/free-icon/user_318-159711.jpg'))),
              SizedBox(
                height: 10.h,
              ),
              AppText(
                text: 'Tawfek Hesham',
                fontWeight: FontWeight.bold,
              ),
              AppText(
                text: 'View profile',
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
                color: AppColors.secondaryColor,
              ),
            ],
          ),
        ),
      );

  Widget getMyRides() => ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => getRideItem(),
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
      );

  Widget getRideItem() => SizedBox(
        width: double.infinity,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(corner)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(5.w),
                    child: Image.asset('images/car.png'))
              ],
            )),
      );

  Widget getSponsoredAds() => CarouselSlider.builder(
        itemCount: 4,
        itemBuilder: (context, _, index) {
          return getSponsoredAdsItemWidget();
        },
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1,
          height: 125.h,
        ),
      );

  Widget getSponsoredAdsItemWidget() => SizedBox(
        width: double.infinity,
        child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(corner)),
          ),
          child: Center(
            child: AppText(
              text: 'Ads',
            ),
          ),
        ),
      );
  Widget getCarouselSliderWidget() => Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CarouselSlider.builder(
            itemCount: 4,
            itemBuilder: (context, _, index) {
              return getWeatherItemWidget();
            },
            options: CarouselOptions(
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1,
                height: 235.h,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index)),
          ),
          buildIndicator(),
        ],
      );

  Widget getWeatherItemWidget() => Stack(
        children: [
          SizedBox(
            width: double.infinity,
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(corner)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(corner),
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl:
                      "https://img.freepik.com/free-photo/nature-colorful-landscape-dusk-cloud_1203-5705.jpg?w=740&t=st=1692536862~exp=1692537462~hmac=8da6d81c6089c37c50e6f347cbefb7df068bae260ff2d43be45176ec810e4649",
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              children: [
                getLocationAndMoreRow(),
                getWeatherDegreeRow(),
                getSeeFullForecastTextButtonWidget()
              ],
            ),
          )
        ],
      );

  Widget getLocationAndMoreRow() => Row(
        children: [
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: Image.asset("images/sunny_weather.png"),
          ),
          SizedBox(
            width: 5.w,
          ),
          AppText(
            text: 'Desert of Giza Governorate',
            fontSize: 12.sp,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      );

  Widget getWeatherDegreeRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 100.w,
              height: 100.h,
              child: Image.asset("images/cloud.png")),
          SizedBox(
            width: 5.w,
          ),
          AppText(text: '22', fontSize: 30.sp),
          SizedBox(
            width: 5.w,
          ),
          AppText(
            text: '°C',
            fontSize: 24.sp,
          )
        ],
      );

  Widget getSeeFullForecastTextButtonWidget() => TextButton(
        onPressed: () {},
        child: AppText(
          text: 'See full forecast',
        ),
      );

  buildIndicator() {
    return Positioned(
      bottom: 15.h,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: ExpandingDotsEffect(
            dotWidth: 10.w,
            dotHeight: 10.h,
            activeDotColor: Theme.of(context).primaryColor),
      ),
    );
  }
}
