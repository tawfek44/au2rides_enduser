
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/app_routes/app_routes.dart';
import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_circular_indicator.dart';
import '../../../../core/widgets/app_text.dart';

import '../../../../generated/l10n.dart';
import '../../domain/entities/language_entity.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key, required this.userRepository});

  final UserRepository userRepository;

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late var languagesList;
  var tempLanguagesList=[];
  late int languageCode = 0;
  late TextEditingController languagesSearchText ;
  @override
  void initState() {
    languageCode = widget.userRepository.userLanguage == 'ar' ? arLanguageNumberCode : enLanguageNumberCode;
    languagesSearchText = TextEditingController();
    super.initState();
  }
  @override
  Future<void> didChangeDependencies() async {
    languagesList = await context.read<LanguageCubit>().getAllLanguages();
    languagesList=languagesList.data;
    tempLanguagesList=languagesList;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabicLocalization() ? TextDirection.rtl : TextDirection
          .ltr,
      child: WillPopScope(
        onWillPop: (){
          NamedNavigatorImpl().push(Routes.startUpScreenRoute);
          return Future.value(false);
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: getAppBar(
              context: context,
              leading: IconButton(onPressed: () {
                NamedNavigatorImpl().push(Routes.startUpScreenRoute);
              }, icon: const Icon(Icons.
              arrow_back, color: AppColors.white,)) ,
            title: AppText(
              text: S.current.languages,
              fontSize: 15.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<LanguageCubit,LanguageState>(
         builder: (context,state){
           if(state is Loaded){
             return SingleChildScrollView(
               child: Padding(
                 padding: EdgeInsets.all(15.w),
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
                               getLanguageItem(itemIndex: index),
                           separatorBuilder: (context, index) =>
                           const Divider(
                             height: 0,
                             thickness: 0.5,
                           ),
                           itemCount: tempLanguagesList.length,
                         ),
                       ],
                     )
                   ],
                 ),
               ),
             );
           }
           else if(state is Error){
             return Center(child: Text(state.e.toString()));
           }
           else{
             return const Center(
               child: AppCircularProgressIndicator(),
             );
           }
         },
        ),
    ),
      ),);
  }

  Widget getLanguageItem({required int itemIndex}) =>
      CupertinoListTile(
        onTap: () async {
          await S.load(Locale(tempLanguagesList[itemIndex]["language_code"]));
          setState(() {
            widget.userRepository.setUserLanguage(
                tempLanguagesList[itemIndex]["language_code"]);
            languageCode = widget.userRepository.userLanguage == 'ar' ? arLanguageNumberCode : enLanguageNumberCode;
          });
           NamedNavigatorImpl().push(Routes.startUpScreenRoute);
        },
        title: AppText(
          text: tempLanguagesList[itemIndex]["language_name"],
          fontSize: fontSize,
        ),
        trailing: languageCode == tempLanguagesList[itemIndex]["_language_id"]
            ? Icon(
          CupertinoIcons.check_mark,
          color: Theme
              .of(context)
              .primaryColor,
        )
            : null,
      );

  getSearchBar() =>
      CupertinoListSection.insetGrouped(
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
              placeholder: "${S.current.search}...",
              decoration:
              BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) {
                var temp = [];
                if (text.isNotEmpty) {
                  for (var element in tempLanguagesList) {
                    if (element["language_name"].toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempLanguagesList = temp;
                  } else {
                    tempLanguagesList = languagesList;
                  }
                });

              },
            ),
          )
        ],
      );
}
