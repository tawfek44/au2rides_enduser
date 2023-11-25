import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/repositories/user_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;

import '../../../../core/app_routes/app_routes_names.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/styles/colors.dart';
import '../../../../core/widgets/app_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../generated/l10n.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key, required this.userRepository});

  final UserRepository userRepository;

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  late List<Language> languagesList;
  late List<Language> tempLanguagesList=[];
  late int markIndex;
  late TextEditingController languagesSearchText ;
  @override
  void initState() {
    markIndex = widget.userRepository.userLanguage == 'ar' ? 0 : 1;
    languagesList = [
      Language(langName: S.current.arabicLanguageText, langCode: 'ar'),
      Language(langName: S.current.englishLanguageText, langCode: 'en'),
    ];
    tempLanguagesList = languagesList;
    languagesSearchText = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    languagesList = [
      Language(langName: S.current.arabicLanguageText, langCode: 'ar'),
      Language(langName: S.current.englishLanguageText, langCode: 'en'),
    ];
    tempLanguagesList = languagesList;
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
        body: SingleChildScrollView(
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
        ),
    ),
      ),);
  }

  Widget getLanguageItem({required int itemIndex}) =>
      CupertinoListTile(
        onTap: () async {
          await S.load(Locale(tempLanguagesList[itemIndex].langCode));
          setState(() {
            markIndex = itemIndex;
            widget.userRepository.setUserLanguage(
                tempLanguagesList[itemIndex].langCode);
          });
          // NamedNavigatorImpl().push(Routes.startUpScreenRoute);
        },
        title: AppText(
          text: tempLanguagesList[itemIndex].langName,
          fontSize: fontSize,
        ),
        trailing: markIndex == itemIndex
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
                List<Language> temp = [];
                if (text.isNotEmpty) {
                  for (var element in tempLanguagesList) {
                    if (element.langName.toLowerCase().contains(text)) {
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

class Language {
  final String langName;
  final String langCode;

  Language({required this.langName, required this.langCode});
}