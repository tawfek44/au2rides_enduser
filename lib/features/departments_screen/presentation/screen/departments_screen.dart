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
  List<Department>departmentList = [
    Department(name: "Bodes"),
    Department(name: "Engine"),
    Department(name: "Finance"),
    Department(name: "General"),
    Department(name: "Performance"),
    Department(name: "Fuel System"),
    Department(name: "Transmission"),
    Department(name: "Suspension"),
  ];

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
          child: CupertinoListSection.insetGrouped(
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
        ),
      ),
    );
  }

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
