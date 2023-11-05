import 'package:au2rides/features/show_reminders_screen/presentation/screen/reminders_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShowRemindersScreen extends StatefulWidget {
  const ShowRemindersScreen({super.key});

  @override
  State<ShowRemindersScreen> createState() => _ShowRemindersScreenState();
}

class _ShowRemindersScreenState extends State<ShowRemindersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          isLeadingIconExists: false,
          context: context,
          route: AppBarRoutes.showFuelUp,
          onPressed: () {
            NamedNavigatorImpl().push(Routes.addReminderScreenRoute);
          },
          title: AppText(
            text: "Reminders",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15.w),
        child: DefaultTabController(
          length: 3,
          child: Column(
            children: [
              getRideNameSection(),
              gap(height: 20.h),
              getTabBar(),
              const Expanded(
                child: TabBarView(
                  children: [
                    RemindersTypeScreen(),
                    RemindersTypeScreen(),
                    RemindersTypeScreen(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getTabBar() => SizedBox(
        height: 51.h,
        child: AppBar(
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: AppColors.greyColor,
            labelStyle: TextStyle(fontSize: fontSize),
            tabs: const [
              Tab(
                text: "Upcoming",
              ),
              Tab(
                text: "Completed",
              ),
              Tab(
                text: "Cancelled",
              ),
            ],
          ),
        ),
      );

  Widget getRideNameSection() => CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          CupertinoListTile(
            title: AppText(
              text: "Vehicle",
              fontSize: fontSize,
            ),
            leading: Icon(
              CupertinoIcons.car_detailed,
              color: Theme.of(context).primaryColor,
            ),
            trailing: AppText(
              text: 'Manar',
              fontSize: fontSize,
              color: AppColors.greyColor,
            ),
          )
        ],
      );
}
