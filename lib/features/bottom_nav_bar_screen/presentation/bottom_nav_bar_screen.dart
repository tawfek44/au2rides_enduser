import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/home_screen/presentation/screens/home_screen.dart';
import 'package:au2rides/features/more_screen/presentation/more_screen.dart';
import 'package:au2rides/features/shops_screen/presentation/screen/shops_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/constants/constants.dart';
import '../../show_reminders_screen/presentation/screen/show_reminders_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screens=[const HomeScreen(),const ShopsScreen(),const ShowRemindersScreen(),const MoreScreen()];
  int currentIndex=0;
  List<Map<String,IconData>> addItemNamesListInEnglish =
  [
    {"Ride":Icons.car_rental},
    {"Fuel Up":Icons.local_gas_station},
    {"Expenses":Icons.attach_money},
    {"Maintenance":Icons.car_repair},
    {"Odometer":Icons.speed},
    {"Trip":Icons.travel_explore_outlined},
    {"Reminder":Icons.add_alert}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
          onPressed: floatingActionButtonOnPress,
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.h)
          ),
          backgroundColor: Theme.of(context).primaryColor,
          child: const Icon(Icons.add,color: AppColors.white,),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.only(bottom: 0,top: 10.h),
        height: 60.h,
        shape: const CircularNotchedRectangle(),
        color: Theme.of(context).primaryColor,
        child:
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getHomeButton(),
            getShopsButton(),
            getRemindersButton(),
            getMoreButton(),
          ],
        ),
      ),
    );
  }

  floatingActionButtonOnPress(){
    showModalBottomSheet(
        context: context,
        builder: (context) => Padding(
              padding: EdgeInsets.all(10.w),
              child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 150,
                  childAspectRatio: 3/3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h
              ),
              itemCount: addItemNamesListInEnglish.length,
              itemBuilder: (context,index)=> Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(corner)
                ),
                elevation: 3,
                child:InkWell(
                  onTap: (){
                    switch(index){
                      case 0:
                        NamedNavigatorImpl().push(Routes.addRideScreenRoute);
                        break;
                      case 1:
                        NamedNavigatorImpl().push(Routes.addFuelScreenRoute);
                        break;
                      case 2:
                       // NamedNavigatorImpl().push(Routes.addRideScreenRoute);
                        break;
                      case 3:
                        //NamedNavigatorImpl().push(Routes.addRideScreenRoute);
                        break;
                      case 4:
                        NamedNavigatorImpl().push(Routes.addOdometerScreenRoute);
                        break;
                      case 5:
                        //NamedNavigatorImpl().push(Routes.addRideScreenRoute);
                        break;
                    }
                  },
                    child: getModalBottomSheetItemWidget(index: index)
                ),
              ),
              ),
        ),
    );
  }

  Widget getModalBottomSheetItemWidget({required index})=>Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        addItemNamesListInEnglish[index].values.first,
        color: Theme.of(context).primaryColor,
        size: 40.w,
      ),
      SizedBox(height: 5.h,),
      AppText(text: addItemNamesListInEnglish[index].keys.first,fontSize: 12.sp,),
    ],
  );
  Widget getHomeButton()=>MaterialButton(
    padding: EdgeInsets.zero,
    minWidth: 60.w,
    onPressed: (){
      setState(() {
        currentIndex = 0;
      });

    },
    child:  Column(
      children: [
        Icon(Icons.home,color: currentIndex == 0? Colors.white:Colors.black,),
        AppText(text: "Home",fontSize: fontSize,color: currentIndex == 0? Colors.white:Colors.black,)
      ],
    ),
  );

  Widget getShopsButton()=>MaterialButton(
    minWidth: 60.w,
    onPressed: (){
      setState(() {
        currentIndex = 1;
      });
    },
    child:  Column(
      children: [
        Icon(Icons.shop_2,color: currentIndex == 1? Colors.white:Colors.black,),
        AppText(text: "Shops",fontSize: fontSize,color: currentIndex == 1? Colors.white:Colors.black,)
      ],
    ),
  );

  Widget getRemindersButton()=>MaterialButton(
    minWidth: 60.w,
    onPressed: (){
      setState(() {
        currentIndex = 2;
      });
    },
    child:  Column(
      children: [
        Icon(Icons.calendar_month,color: currentIndex == 2? Colors.white:Colors.black,),
        AppText(text: "Reminders",fontSize: fontSize,color: currentIndex == 2? Colors.white:Colors.black,)
      ],
    ),
  );

  Widget getMoreButton()=>MaterialButton(
    minWidth: 60.w,
    onPressed: (){
      setState(() {
        currentIndex = 3;
      });
    },
    child: Column(
      children: [
        Icon(Icons.more_horiz,color: currentIndex == 3? Colors.white:Colors.black,),
        AppText(text: "More",fontSize: fontSize,color: currentIndex == 3? Colors.white:Colors.black,)
      ],
    ),
  );
}
