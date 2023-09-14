import 'package:au2rides/features/search_screen/presentation/screen/my_code_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height+40.h),
          child: getAppBar(
            context: context,
            title: AppText(
              text: "au2rides QR code",
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
                Tab(text: "My code",),
                Tab(text: "Scan",),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            const MyCodeScreen(),
            AppText(text: "a")
          ],
        ),
      ),
    );
  }
}
