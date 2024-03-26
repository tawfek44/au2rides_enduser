import 'dart:ui';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/app_circular_indicator.dart';
import '../../../../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<GetMyRidesCubit>().getMyRides();
  }

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: SafeArea(
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
                title: getQrCodeImageWidget(),
                leading: getMenuIconWidget(),
                actions: getActions(),
              ),
            ),
            body: ListView(
              children: [
                getCarouselSliderWidget(),
                gap(height: 10.h),
                getSponsoredAds(),
                gap(height: 10.h),
                getMyRidesWidget(),
              ],
            )),
      ),
    );
  }
  getMyRidesWidget() => BlocBuilder<GetMyRidesCubit, GetMyRidesState>(
        builder: (context, state) {
          if (state is LoadedGetMyRidesState) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(text: S.current.myRides),
                gap(height: 5.h),
                getMyRides(myRides: state.response),
              ],
            );
          }
          else if (state is LoadingGetMyRidesState) {
            return const Center(
              child: AppCircularProgressIndicator(),
            );
          } else if (state is ErrorGetMyRidesState) {
            return Center(
              child: AppText(
                text: state.e.toString(),
                fontSize: fontSize,
              ),
            );
          } else {
            return Container();
          }
        },
      );

  getActions() => [
        IconButton(
            onPressed: () {
              NamedNavigatorImpl().push(Routes.notificationScreenRoute);
            },
            icon: const Icon(
              Icons.notifications_active,
              color: Colors.white,
            ))
      ];

  getMenuIconWidget() => Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      );

  Widget getQrCodeImageWidget() => InkWell(
        onTap: () {
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
      );

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
            drawerChoices: DrawerChoices.club,
          ),
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
              title: "App Language",
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
              NamedNavigatorImpl().push(Routes.myPointsScreenRoute);
              break;
            case DrawerChoices.notifications:
              NamedNavigatorImpl().push(Routes.notificationScreenRoute);
              break;
            case DrawerChoices.messages:
              NamedNavigatorImpl().push(Routes.messagesScreenRoute);
              break;
            case DrawerChoices.overdue:
              NamedNavigatorImpl().push(Routes.showRemindersScreenRoute);
              break;
            case DrawerChoices.requests:
              // TODO: Handle this case.
              break;
            case DrawerChoices.logout:
              showLogoutDialog(context);
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.w))),
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
                      text: '+201143178019',
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

  Widget getImageProfile() => SizedBox(
      width: 100.w,
      height: 100.h,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Image.asset("images/img.png")));

  Widget getMyRides({required myRides}) => ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) => getRideItem(rideItem: myRides[index]),
        itemCount: myRides.length,
        physics: const NeverScrollableScrollPhysics(),
      );

  Widget getRideItem({required rideItem}) => GestureDetector(
      onTap: () {
        NamedNavigatorImpl().push(Routes.rideDetailsScreenRoute);
      },
      child: SizedBox(
        width: double.infinity,
        height: 190.h,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(corner)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.w),
                  child: SizedBox(
                    width: double.infinity,
                    child: rideItem.rideImageUrl == null ||
                            rideItem.rideImageUrl == ""
                        ? Image.asset(
                            'images/car.png',
                            fit: BoxFit.cover,
                          )
                        : CachedNetworkImage(
                            imageUrl: rideItem.rideImageUrl,
                          ),
                  ),
                ),
                ClipRRect(
                  // Clip it cleanly.
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                      alignment: Alignment.center,
                      child: getRideDetailsOnPic(rideDetails: rideItem),
                    ),
                  ),
                ),
              ],
            )),
      ));

  Widget getVerifiedWidget({required isVerified}) => Padding(
        padding: EdgeInsets.all(10.w),
        child: Wrap(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: isVerified ? AppColors.greenColor : AppColors.redColor,
                  borderRadius: BorderRadius.circular(corner)),
              child: Center(
                child: AppText(
                  text: isVerified ? S.current.verified : S.current.notVerified,
                  maxLines: 4,
                  color: AppColors.white,
                  fontSize: fontSize - 2.sp,
                ),
              ),
            ),
          ],
        ),
      );

  getRideDetailsOnPic({required rideDetails}) => Padding(
        padding: EdgeInsets.all(5.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getRideDetails(rideDetails: rideDetails),
            const Spacer(),
            SizedBox(
              width: 100.w,
              child: IconButton(
                onPressed: () {
                  showQrCodeDialog(
                      context: context,
                      imageUrl: rideDetails.rideQrCodes.rideQrCodeUrl);
                },
                icon: CachedNetworkImage(
                    placeholder: (context, url) =>
                        const AppCircularProgressIndicator(),
                    imageUrl: rideDetails.rideQrCodes.rideWhiteQrCodeUrl),
              ),
            ),
          ],
        ),
      );

  getRideDetails({required rideDetails}) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getRideNameAndType(
              isVerified: rideDetails.rideIsVerified,
              rideName: rideDetails.rideName,
              rideType: rideDetails.manufacturingDetails.rideType.rideTypeName),
          getRideYearAndModel(
              model: rideDetails.manufacturingDetails.rideModel.rideModelName,
              year: rideDetails.manufacturingDetails.manufacturingYear,
              trimName: rideDetails.manufacturingDetails.rideTrim.rideTrimName),
          getVINNumber(vinNumber: rideDetails.rideVinNumber),
          // getPlateNumber(),
          // getOdometerRead(),
        ],
      );
  getRideNameAndType(
          {required rideName, required rideType, required isVerified}) =>
      Row(
        children: [
          SizedBox(
            width: 60.w,
            child: AppText(
              text: rideName,
              fontSize: fontSize,
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              shadowList: [
                getShadow(),
              ],
            ),
          ),
          gap(width: 5.w),
          AppText(
            text: rideType,
            fontSize: fontSize,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            shadowList: [
              getShadow(),
            ],
          ),
          gap(width: 5.w),
          getVerifiedWidget(isVerified: isVerified),
        ],
      );
  getRideYearAndModel({required year, required model, required trimName}) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "$year - $model",
            fontSize: fontSize,
            color: AppColors.white,
            shadowList: [
              getShadow(),
            ],
          ),
          gap(height: 5.w),
          SizedBox(
            width: 120.w,
            child: AppText(
              text: "($trimName)",
              fontSize: fontSize,
              color: AppColors.white,
              shadowList: [
                getShadow(),
              ],
            ),
          ),

        ],
      );

  getOdometerRead() => AppText(
        text: "23243 KM",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getVINNumber({required vinNumber}) => AppText(
        text: vinNumber,
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getPlateNumber() => AppText(
        text: "ج ر ص - 542",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getShadow() => const Shadow(
        color: Colors.black,
        blurRadius: 2.0,
        offset: Offset(1.0, 1.0),
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

  Widget getCarouselSliderWidget() => SizedBox(
        height: 190.h,
        child: getWeatherItemWidget(),
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
            padding: EdgeInsets.only(top: 5.h, left: 10.w, right: 10.w),
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
          gap(width: 5.w),
          AppText(
            text: 'Desert of Giza Governorate',
            fontSize: fontSize,
          ),
          const Spacer(),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      );

  Widget getWeatherDegreeRow() => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 80.w,
              height: 80.h,
              child: Image.asset("images/cloud.png")),
          gap(width: 5.w),
          AppText(text: '22', fontSize: fontSize + 5.sp),
          SizedBox(
            width: 5.w,
          ),
          AppText(
            text: '°C',
            fontSize: fontSize + 5.sp,
          )
        ],
      );

  Widget getSeeFullForecastTextButtonWidget() => TextButton(
        onPressed: () {},
        child: AppText(
          fontSize: fontSize,
          text: S.current.seeFullForecast,
        ),
      );

  buildIndicator() {
    return Positioned(
      bottom: 15.h,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: 4,
        effect: ExpandingDotsEffect(
            dotWidth: 7.w,
            dotHeight: 7.h,
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
