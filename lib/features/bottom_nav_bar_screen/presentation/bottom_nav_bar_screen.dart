import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:au2rides/features/home_screen/presentation/screens/home_screen.dart';
import 'package:au2rides/features/more_screen/presentation/more_screen.dart';
import 'package:au2rides/features/reminders_screen/presentation/reminders_screen.dart';
import 'package:au2rides/features/shops_screen/presentation/shops_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/constants/constants.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  List<Widget> screens=[const HomeScreen(),const ShopsScreen(),const RemindersScreen(),const MoreScreen()];
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
          child: const Icon(Icons.add,color: Colors.white,),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 60.h,
        child: BottomAppBar(
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
  Widget getHomeButton()=>IconButton(
    onPressed: (){
      setState(() {
        currentIndex = 0;
      });

    },
    icon:  Icon(Icons.home,color: currentIndex == 0? Colors.white:Colors.black,),
  );

  Widget getShopsButton()=>IconButton(
    onPressed: (){
      setState(() {
        currentIndex = 1;
      });
    },
    icon:  Icon(Icons.shop_2,color: currentIndex == 1? Colors.white:Colors.black,),
  );

  Widget getRemindersButton()=>IconButton(
    onPressed: (){
      setState(() {
        currentIndex = 2;
      });
    },
    icon:  Icon(Icons.calendar_month,color: currentIndex == 2? Colors.white:Colors.black,),
  );

  Widget getMoreButton()=>IconButton(
    onPressed: (){
      setState(() {
        currentIndex = 3;
      });
    },
    icon: Icon(Icons.more_horiz,color: currentIndex == 3? Colors.white:Colors.black,),
  );
}
