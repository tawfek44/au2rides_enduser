import 'dart:ui';

import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/app_routes/app_routes_names.dart';
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
              width: MediaQuery.of(context).size.width * (2 / 3) + 20.w,
              child: getDrawerItems()),
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(AppBar().preferredSize.height),
              child: getAppBar(
                  context: context,
                  title: InkWell(
                    onTap: (){
                      NamedNavigatorImpl().push(Routes.searchQRScreenRoute);
                    },
                    child: CupertinoTextField(
                      enabled: false,
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
                  ),
                  leading: Builder(
                    builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  actions: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                        ))
                  ])),
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
          getDrawerLinks(
              title: "Profile",
              icon: Icons.home,
              drawerChoices: DrawerChoices.profile),
          getDrawerLinks(
              title: "Au2rides club",
              icon: Icons.area_chart,
              drawerChoices: DrawerChoices.club),
          getDrawerLinks(
              title: "Notifications",
              icon: Icons.notifications_active,
              drawerChoices: DrawerChoices.notifications),
          getDrawerLinks(
              title: "Messages",
              icon: Icons.messenger,
              drawerChoices: DrawerChoices.messages),
          getDrawerLinks(
              title: "Overdue",
              icon: Icons.access_alarm_rounded,
              drawerChoices: DrawerChoices.overdue),
          getDrawerLinks(
              title: "My requests",
              icon: Icons.compare_arrows_rounded,
              drawerChoices: DrawerChoices.requests),
          getDrawerLinks(
              title: "Languages",
              icon: Icons.language,
              drawerChoices: DrawerChoices.languages),
          const Divider(),
          getDrawerLinks(
              title: "Logout",
              icon: Icons.logout,
              drawerChoices: DrawerChoices.logout),
        ],
      );

  Widget getDrawerLinks({
    required String title,
    required IconData icon,
    required DrawerChoices drawerChoices,
  }) =>
      CupertinoListTile(
        onTap: () {
          switch (drawerChoices) {
            case DrawerChoices.profile:
              NamedNavigatorImpl().push(Routes.profileScreenRoute);
              break;
            case DrawerChoices.club:
              // TODO: Handle this case.
              break;
            case DrawerChoices.notifications:
              // TODO: Handle this case.
              break;
            case DrawerChoices.messages:
              // TODO: Handle this case.
              break;
            case DrawerChoices.overdue:
              // TODO: Handle this case.
              break;
            case DrawerChoices.requests:
              // TODO: Handle this case.
              break;
            case DrawerChoices.logout:
              // TODO: Handle this case.
              break;
            case DrawerChoices.languages:
              NamedNavigatorImpl().push(Routes.languagesScreenRoute);
              break;
          }
        },
        title: AppText(
          text: title,
          color: AppColors.darkGray,
          fontSize: fontSize,
        ),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
      );

  Widget getDrawerHeader() => Padding(
        padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                getImageProfile(),
                Positioned(
                  bottom: -20.h,
                  right: -10.w,
                  child: IconButton(
                    onPressed: () {},
                    icon: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.white),
                        borderRadius: BorderRadius.all(Radius.circular(50.w))
                      ),
                      child: CircleAvatar(
                        radius: 20.w,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      text: 'Tawfek Hesham',
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                    ),
                    AppText(
                      text: '01143178019',
                      fontSize: fontSize,
                      color: AppColors.secondaryColor,
                    ),
                  ],
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    NamedNavigatorImpl().push(Routes.searchQRScreenRoute);
                  },
                  icon: SizedBox(
                    width: 40.w,
                    child: Image.asset("images/qrcode.png"),
                  ),
                )
              ],
            ),
          ],
        ),
      );

  Widget getImageProfile()=>SizedBox(
      width: 100.w,
      height: 100.h,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Image.asset("images/img.png")));
  Widget getMyRides() => ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => getRideItem(),
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
      );

  Widget getRideItem() => GestureDetector(
    onTap: (){
      NamedNavigatorImpl().push(Routes.rideDetailsScreenRoute);
    },
    child: SizedBox(
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
        ),
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
            fontSize:fontSize,
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
          fontSize: fontSize,
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

enum DrawerChoices {
  profile,
  club,
  notifications,
  messages,
  overdue,
  requests,
  languages,
  logout
}
