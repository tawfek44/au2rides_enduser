import 'package:au2rides/features/shops_screen/presentation/screen/shops_tap_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({super.key});

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height+30.h),
            child: getAppBar(
              isLeadingIconExists: false,
              context: context,
              route: AppBarRoutes.showFuelUp,
              onPressed: () {
                //NamedNavigatorImpl().push(Routes.ad);
              },
              title: AppText(
                text: "Shops",
                fontSize: 15.sp,
                color: AppColors.white,
              ),
              bottom:  TabBar(
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.black,
              labelStyle: TextStyle(
                  fontSize: fontSize
              ),
              tabs: const [
                Tab(text: "Repair Shop",),
                Tab(text: "Auto Parts",),
              ],
            ),
            ),
          ),
          body:const TabBarView(
            children: [
              ShopsTabScreen(),
              ShopsTabScreen(),
            ],
          )
      ),
    );
  }

}