import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';

class DepartmentsScreen extends StatefulWidget {
  const DepartmentsScreen({super.key});

  @override
  State<DepartmentsScreen> createState() => _DepartmentsScreenState();
}

class _DepartmentsScreenState extends State<DepartmentsScreen> {
  List<Department> tempDepartmentList = [];
  List<Department>departmentList=[];
  TextEditingController departmentsSearchText = TextEditingController();
  @override
  void initState() {
    departmentList = [
      Department(name: "Bodes"),
      Department(name: "Engine"),
      Department(name: "Finance"),
      Department(name: "General"),
      Department(name: "Performance"),
      Department(name: "Fuel System"),
      Department(name: "Transmission"),
      Department(name: "Suspension"),
    ];
    tempDepartmentList = departmentList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          title: AppText(
            text: "Departments",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.all(15.w),
          child: Column(
            children: [
              getSearchBar(),
              gap(height: 15.h),
              CupertinoListSection.insetGrouped(
                margin: EdgeInsets.zero,
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) =>
                        getDepartmentItem(departmentName:departmentList[index].name),
                    separatorBuilder: (context, index) =>
                        const Divider(
                          height: 0,
                          thickness: .5,
                        ),
                    itemCount: departmentList.length,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  getSearchBar() => CupertinoListSection.insetGrouped(
    margin: EdgeInsets.zero,
    children: [
      CupertinoListTile(
        leading: const Icon(
          Icons.search,
          color: AppColors.greyColor,
        ),
        leadingToTitle: 5.w,
        title: CupertinoTextField(
          style: TextStyle(fontSize: fontSize),
          placeholder: "Search...",
          controller: departmentsSearchText,
          decoration:
          BoxDecoration(border: Border.all(style: BorderStyle.none)),
          onChanged: (String text) {
            List<Department>temp=[];
            if(text.isNotEmpty){
              for(var element in tempDepartmentList){
                if(element.name.toLowerCase().contains(text)){
                  temp.add(element);
                }
              }
            }
            setState(() {
              if(temp.isNotEmpty){
                tempDepartmentList=temp;
              }
              else{
                tempDepartmentList=departmentList;
              }
            });


          },
        ),
      )
    ],
  );
  Widget getDepartmentItem({required String departmentName}) =>
      CupertinoListTile(
        onTap: (){},
        title: AppText(text: departmentName,fontSize: fontSize,),
      );
}

class Department {
  String name;

  Department({required this.name});

}
