import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import '../../../more_screen/utils/expansion_list_model.dart';

class RideDetails extends StatefulWidget {
  const RideDetails({super.key});

  @override
  State<RideDetails> createState() => _RideDetailsState();
}

class _RideDetailsState extends State<RideDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> rideDetailsItemLinkTitle = [
      "Scheduled maintenance",
      "Tire pressure",
      "Licence details",
      "Insurance policy",
      "Acquisition details",
      "Dashboard Signs"
    ];
    List<String> rideDetailsItemLinkSubTitle = [
      "This is scheduled maintenance",
      "This is tire pressure",
      "This is licence details",
      "This is insurance policy",
      "This is acquisition details",
      "This is dashboard signs"
    ];
    List<Icon> rideDetailsItemLinkLeadingIcon = [
      Icon(Icons.car_repair, color: Theme
          .of(context)
          .primaryColor),
      Icon(Icons.compress_outlined, color: Theme
          .of(context)
          .primaryColor),
      Icon(CupertinoIcons.doc_checkmark, color: Theme
          .of(context)
          .primaryColor),
      Icon(Icons.local_police_outlined, color: Theme
          .of(context)
          .primaryColor),
      Icon(Icons.ac_unit_sharp, color: Theme
          .of(context)
          .primaryColor),
      Icon(Icons.dashboard, color: Theme
          .of(context)
          .primaryColor)
    ];
    List<RideDetailsExpansionListModel> historyExpansionListData = [
      RideDetailsExpansionListModel(
        title: "Show Expenses",
        icon: Icons.monetization_on_outlined,
        choice: RideDetailsExpansionListTileChoice.expense,
      ),
      RideDetailsExpansionListModel(
        title: "Show Odometer Reading",
        icon: Icons.speed,
        choice: RideDetailsExpansionListTileChoice.odometer,
      ),
      RideDetailsExpansionListModel(
        title: "Show Maintenances",
        icon: CupertinoIcons.wrench,
        choice: RideDetailsExpansionListTileChoice.maintenance,
      ),
      RideDetailsExpansionListModel(
        title: "Show Trips",
        icon: Icons.beach_access,
        choice: RideDetailsExpansionListTileChoice.trips,
      ),
      RideDetailsExpansionListModel(
        title: "Show Fuel Up",
        icon: Icons.local_gas_station_rounded,
        choice: RideDetailsExpansionListTileChoice.fuelUp,
      ),
      RideDetailsExpansionListModel(
        title: "Show Reminders",
        icon: CupertinoIcons.bell_fill,
        choice: RideDetailsExpansionListTileChoice.reminders,
      ),
    ];
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.editAndDelete,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.addRideScreenRoute);
          },
          title: AppText(
            text: "Ride Details",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            children: [
              getRidePic(),
              gap(height: 15.h),
              getRideDetailsLinksListView(
                  rideDetailsItemLink: rideDetailsItemLinkTitle,
                  rideDetailsItemLinkSubTitle: rideDetailsItemLinkSubTitle,
                  icons: rideDetailsItemLinkLeadingIcon),
              gap(height: 15.h),
              getExpansionListTile(
                icon: Icons.history,
                title: "History",
                list: historyExpansionListData,
                listLength: historyExpansionListData.length,
              ),
              gap(height: 15.h),
              getNotesSection()
            ],
          ),
        ),
      ),
    );
  }

  getExpansionListTile({required IconData icon,
    required int listLength,
    required List<RideDetailsExpansionListModel> list,
    required String title}) =>
      ExpansionTile(
          title: Row(
            children: [
              Icon(
                icon,
                color: Theme
                    .of(context)
                    .primaryColor,
              ),
              gap(width: 10.w),
              AppText(
                text: title,
                fontSize: fontSize + 2.sp,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          children: [
            CupertinoListSection.insetGrouped(
              margin: EdgeInsets.zero,
              children: [
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) =>
                      CupertinoListTile(
                        trailing: const Icon(CupertinoIcons.right_chevron,
                          color: AppColors.greyColor,),
                        title: AppText(
                          text: list[index].title,
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                        ),
                        leading: Icon(
                          list[index].icon,
                          color: Theme
                              .of(context)
                              .primaryColor,
                        ),
                        onTap: () {
                          switch (index) {
                            case 0:
                              NamedNavigatorImpl().push(
                                  Routes.showExpensesScreenRoute);
                              break;
                            case 1:
                              NamedNavigatorImpl().push(
                                  Routes.showOdometerScreenRoute);
                              break;
                            case 2:
                              NamedNavigatorImpl().push(
                                  Routes.showMaintenanceScreenRoute);
                              break;
                            case 3:
                              NamedNavigatorImpl().push(
                                  Routes.showTripsScreenRoute);
                              break;
                            case 4:
                              NamedNavigatorImpl().push(
                                  Routes.showFuelUpScreenRoute);
                              break;
                            case 5:
                              NamedNavigatorImpl().push(
                                  Routes.showRemindersScreenRoute);
                              break;
                          }
                        },
                      ),
                  separatorBuilder: (context, index) =>
                      Divider(height: 0, indent: 55.w, thickness: 0.5,),
                  itemCount: listLength,
                ),
              ],
            )
          ]
      );

  Widget getNotesSection() =>
      CupertinoListSection.insetGrouped(
        header: AppText(
          text: "NOTES",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: const [
          CupertinoListTile(
            title: CupertinoTextField(
              decoration: BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: highMaxLines,
            ),
          )
        ],
      );

  getRideDetailsLinksListView({required List<String> rideDetailsItemLink,
    required List<String> rideDetailsItemLinkSubTitle,
    required List<Icon> icons}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) =>
                getRideDetailsLinksItem(
                    title: rideDetailsItemLink[index],
                    index: index,
                    subTitle: rideDetailsItemLinkSubTitle[index],
                    icon: icons[index]),
            separatorBuilder: (context, index) =>
                Divider(
                  height: 0,
                  thickness: 0.5,
                  indent: 55.w,
                ),
            itemCount: rideDetailsItemLink.length,
          ),
        ],
      );

  getRideDetailsLinksItem({required String title,
    required String subTitle,
    required Icon icon,
    required index,}) =>
      CupertinoListTile(
        onTap: () {
          switch(index){
            case 0:
              NamedNavigatorImpl().push(Routes.scheduledMaintenanceScreenRoute);
              break;
            case 1:
              NamedNavigatorImpl().push(Routes.tirePressureScreenRoute);
              break;
            case 2:
              NamedNavigatorImpl().push(Routes.licenceDetailsScreenRoute);
              break;
            case 3:
              NamedNavigatorImpl().push(Routes.insurancePolicyScreenRoute);
              break;
            case 4:
              NamedNavigatorImpl().push(Routes.acquisitionScreenRoute);
              break;
            case 5:
              NamedNavigatorImpl().push(Routes.dashboardScreenRoute);
              break;
          }
        },
        title: Row(
          children: [
            AppText(
              text: title,
              fontSize: fontSize,
            ),
            if(index == 2 || index == 3)...[
              gap(width: 5.w),
              getVerifiedComponent()
            ]
          ],
        ),
        subtitle: AppText(
          text: subTitle,
          fontSize: fontSize - 1.sp,
          color: AppColors.greyColor,
        ),
        leading: icon,
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
      );

  Widget getVerifiedComponent()=> Container(
    decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(corner)),
    height: 25.h,
    width: 50.w,
    child: Center(
        child: Text(
          "Verified",
          style: TextStyle(
              color: Colors.white, fontSize: fontSize - 2.sp),
          textAlign: TextAlign.center,
        )),
  );
  Widget getRidePic() =>
      SizedBox(
        width: double.infinity,
        height: 160.h,
        child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(corner)),
            ),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5.w),
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      'images/car.png',
                      fit: BoxFit.cover,
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
                      child: getRideDetailsOnPic(),
                    ),
                  ),
                ),
              ],
            )),
      );

  getRideDetailsOnPic() =>
      Padding(
        padding: EdgeInsets.all(12.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            getRideDetails(),
            const Spacer(),
            IconButton(
              onPressed: (){
                showQrCodeDialog(context);
              },
              icon: Icon(
                CupertinoIcons.qrcode,
                size: 60.w,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );


  getRideDetails() =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getRideNameAndType(),
          getRideYearAndModel(),
          getVINNumber(),
          getPlateNumber(),
          getOdometerRead(),
        ],
      );

  getRideNameAndType() =>
      Row(
        children: [
          AppText(
            text: "My car name",
            fontSize: fontSize,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            shadowList: [
              getShadow(),
            ],
          ),
          gap(width: 5.w),
          AppText(
            text: "(Car)",
            fontSize: fontSize,
            color: AppColors.white,
            fontWeight: FontWeight.bold,
            shadowList: [
              getShadow(),
            ],
          ),
          gap(width: 5.w),
          getVerifiedWidget(),
        ],
      );

  Widget getVerifiedWidget()=> Container(
    decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(corner)),
    height: 25.h,
    width: 50.w,
    child: Center(
        child: Text(
          'Verified',
          style: TextStyle(
              color: Colors.white, fontSize: fontSize - 2.sp),
          textAlign: TextAlign.center,
        )),
  );
  getRideYearAndModel() =>
      Row(
        children: [
          AppText(
            text: "2024 GG-ZS",
            fontSize: fontSize,
            color: AppColors.white,
            shadowList: [
              getShadow(),
            ],
          ),
          gap(width: 5.w),
          AppText(
            text: "(Trim)",
            fontSize: fontSize,
            color: AppColors.white,
            shadowList: [
              getShadow(),
            ],
          ),
        ],
      );

  getOdometerRead() =>
      AppText(
        text: "23243 KM",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getVINNumber() =>
      AppText(
        text: "56576879",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getPlateNumber() =>
      AppText(
        text: "ج ر ص - 542",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getShadow() =>
      const Shadow(
        color: Colors.black,
        blurRadius: 2.0,
        offset: Offset(1.0, 1.0),
      );
}

enum RideDetailsLinksNames {
  scheduledMaintenance,
  tirePressure,
  licenceDetails,
  insurancePolicy,
  acquisitionDetails,
  dashboardSigns
}

enum RideDetailsExpansionListTileChoice {
  expense,
  maintenance,
  odometer,
  fuelUp,
  reminders,
  trips,
}

class RideDetailsExpansionListModel {
  String title;
  IconData icon;
  RideDetailsExpansionListTileChoice choice;

  RideDetailsExpansionListModel(
      {required this.title, required this.icon, required this.choice});
}
