import 'dart:ui';

import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      "Acquisition details"
    ];
    List<String> rideDetailsItemLinkSubTitle = [
      "This is scheduled maintenance",
      "This is tire pressure",
      "This is licence details",
      "This is insurance policy",
      "This is acquisition details"
    ];
    List<Icon> rideDetailsItemLinkLeadingIcon = [
      Icon(Icons.car_repair,color: Theme.of(context).primaryColor),
      Icon(Icons.compress_outlined,color: Theme.of(context).primaryColor),
      Icon(CupertinoIcons.doc_checkmark,color: Theme.of(context).primaryColor),
      Icon(Icons.local_police_outlined,color: Theme.of(context).primaryColor),
      Icon(Icons.ac_unit_sharp,color: Theme.of(context).primaryColor)
    ];
    List<RideDetailsExpansionListModel> historyExpansionListData = [
      RideDetailsExpansionListModel(
        title: "Show Expenses",
        icon: Icons.help_center,
        choice: RideDetailsExpansionListTileChoice.expense,
      ),
      RideDetailsExpansionListModel(
        title: "Show Odometer Reading",
        icon: Icons.help_center,
        choice: RideDetailsExpansionListTileChoice.odometer,
      ),
      RideDetailsExpansionListModel(
        title: "Show Maintenances",
        icon: Icons.help_center,
        choice: RideDetailsExpansionListTileChoice.maintenance,
      ),
      RideDetailsExpansionListModel(
        title: "Show Reminders",
        icon: Icons.help_center,
        choice: RideDetailsExpansionListTileChoice.reminders,
      ),
      RideDetailsExpansionListModel(
        title: "Show Trips",
        icon: Icons.help_center,
        choice: RideDetailsExpansionListTileChoice.trips,
      ),
    ];
    return Scaffold(

      backgroundColor: AppColors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          route: AppBarRoutes.edit,
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
                icons: rideDetailsItemLinkLeadingIcon
              ),
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
  getExpansionListTile(
      {required IconData icon,
        required int listLength,
        required List<RideDetailsExpansionListModel> list,
        required String title}) =>
      ExpansionTile(
        title: Row(
          children: [

            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            gap(width: 10.w),
            AppText(
              text: title,
              fontSize: fontSize + 2.sp,
              fontWeight: FontWeight.bold,
            ),
          ],
        ),
        children: List.generate(
          listLength,
              (index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: ListTile(
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(corner)),
              tileColor: Colors.white,
              title: AppText(
                text: list[index].title,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
              leading: Icon(
                list[index].icon,
                color: Theme.of(context).primaryColor,
              ),
              onTap: () {

              },
            ),
          ),
        ),
      );
  Widget getNotesSection() => CupertinoListSection.insetGrouped(
    backgroundColor: AppColors.white,
        header: AppText(
          text: "Notes",
          color: AppColors.greyColor,
          fontSize: fontSize,
        ),
        margin: EdgeInsets.zero,
        children: const [
          CupertinoListTile(
            title: CupertinoTextField(
              //decoration: BoxDecoration(border: Border(right: BorderSide.none)),
              maxLines: 5,
            ),
          )
        ],
      );



  getRideDetailsLinksListView(
          {required List<String> rideDetailsItemLink,
          required List<String> rideDetailsItemLinkSubTitle,
            required List<Icon> icons
          }) =>
      ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getRideDetailsLinksItem(
            title: rideDetailsItemLink[index],
            subTitle: rideDetailsItemLinkSubTitle[index],
            icon: icons[index]
        ),
        separatorBuilder: (context, index) =>  Divider(
          height: 0,
          thickness: 0.5,
          indent: 55.w,
        ),
        itemCount: rideDetailsItemLink.length,
      );

  getRideDetailsLinksItem({required String title, required String subTitle,required Icon icon}) =>
      CupertinoListTile(
        onTap: () {},
        title: AppText(
          text: title,
          fontSize: fontSize,
        ),
        subtitle: AppText(
          text: subTitle,
          fontSize: fontSize-1.sp,
          color: AppColors.greyColor,
        ),
        leading: icon,
        trailing: const Icon(
          CupertinoIcons.right_chevron,
          color: AppColors.greyColor,
        ),
      );

  Widget getRidePic() => SizedBox(
        width: double.infinity,
        height: 180.h,
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
                      fit: BoxFit.fitWidth,
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

  getRideDetailsOnPic() => Padding(
        padding: EdgeInsets.all(15.w),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            getRideDetails(),
            const Spacer(),
            Icon(
              CupertinoIcons.qrcode,
              size: 60.w,
              color: Colors.white,
            ),
          ],
        ),
      );

  getRideDetails() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          getRideNameAndType(),
          gap(height: 5.h),
          getRideYearAndModel(),
          gap(height: 5.h),
          getOdometerRead(),
          gap(height: 5.h),
          getVINNumber(),
          gap(height: 5.h),
          getPlateNumber()
        ],
      );

  getRideNameAndType() => Row(
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
        ],
      );

  getRideYearAndModel() => Row(
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

  getOdometerRead() => AppText(
        text: "23243 KM",
        fontSize: fontSize,
        color: AppColors.white,
        shadowList: [
          getShadow(),
        ],
      );

  getVINNumber() => AppText(
        text: "56576879",
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
}

enum RideDetailsLinksNames {
  scheduledMaintenance,
  tirePressure,
  licenceDetails,
  insurancePolicy,
  acquisitionDetails
}
enum RideDetailsExpansionListTileChoice {
  expense,
  maintenance,
  odometer,
  fuelUp,
  reminders,
  trips,
}
class RideDetailsExpansionListModel{
  String title;
  IconData icon;
  RideDetailsExpansionListTileChoice choice;

  RideDetailsExpansionListModel({required this.title, required this.icon,required this.choice});
}