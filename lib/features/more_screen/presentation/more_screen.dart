
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_routes/app_routes.dart';
import '../../../core/app_routes/app_routes_names.dart';
import '../../../core/styles/colors.dart';
import '../../../core/widgets/app_text.dart';
import '../utils/expansion_list_model.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  List<ExpansionListModel> helpAndSupportExpansionListData = [
    ExpansionListModel(
      title: "Help Center",
      icon: Icons.help_center,
      choice: ExpansionListTileChoice.helpCenter,
    ),
    ExpansionListModel(
      title: "Messages",
      icon: Icons.forward_to_inbox,
      choice: ExpansionListTileChoice.supportInbox,
    ),
    ExpansionListModel(
        title: "Contact Us",
        icon: Icons.quick_contacts_mail_sharp,
        choice: ExpansionListTileChoice.contactUs),
    ExpansionListModel(
        title: "Terms & Policies",
        icon: Icons.policy,
        choice: ExpansionListTileChoice.termAndPolicies),
  ];
  List<ExpansionListModel> settingsAndPrivacyExpansionListData = [
    ExpansionListModel(
        title: "Privacy Shortcuts",
        icon: Icons.privacy_tip_outlined,
        choice: ExpansionListTileChoice.privacyShortcuts),
    //ExpansionListModel(
    //    title: "adds",
    //  icon: Icons.supervised_user_circle,
    //  choice: ExpansionListTileChoice.adds),
    // ExpansionListModel(
    //  title: "Order & payments",
    //  icon: Icons.payment,
    //  choice: ExpansionListTileChoice.orderAndPayments),
    ExpansionListModel(
        title: "App Language",
        icon: Icons.language,
        choice: ExpansionListTileChoice.language),
    ExpansionListModel(
        title: "About",
        icon: Icons.info,
        choice: ExpansionListTileChoice.about),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: getAppBar(
          context: context,
          isLeadingIconExists: false,
          title: AppText(
            text: "More",
            fontSize: 15.sp,
            color: AppColors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getUserProfileListTile(),
              gap(height: 10.h),
              getAllShortCutsTextWidget(),
              gap(height: 15.h),
              getAllShortcutsGridView(),
              gap(height: 15.h),
              getExpansionListTile(
                icon: Icons.help_sharp,
                title: "Help & support",
                list: helpAndSupportExpansionListData,
                listLength: helpAndSupportExpansionListData.length,
              ),
              gap(height: 15.h),
              getExpansionListTile(
                icon: Icons.settings,
                title: "Settings & privacy",
                list: settingsAndPrivacyExpansionListData,
                listLength: settingsAndPrivacyExpansionListData.length,
              ),
              gap(height: 10.h),
              AppButton(
                label: "Log out",
                height: 40.h,
                onPressed: () {
                  showLogoutDialog(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  getExpansionListTile(
          {required IconData icon,
          required int listLength,
          required List<ExpansionListModel> list,
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
          children: [
            CupertinoListSection.insetGrouped(
              margin: EdgeInsets.zero,
              children: [
                ListView.separated(
                  itemBuilder: (context, index) => CupertinoListTile(
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
                      switch (list[index].choice) {
                        case ExpansionListTileChoice.helpCenter:
                         NamedNavigatorImpl().push(Routes.webViewScreenRoute);
                          break;
                        case ExpansionListTileChoice.supportInbox:
                          NamedNavigatorImpl().push(Routes.messagesScreenRoute);
                          break;
                        case ExpansionListTileChoice.contactUs:
                          NamedNavigatorImpl()
                              .push(Routes.contactUsScreenRoute);
                          break;
                        case ExpansionListTileChoice.termAndPolicies:
                          NamedNavigatorImpl().push(Routes.webViewScreenRoute);
                          break;
                        case ExpansionListTileChoice.privacyShortcuts:
                          NamedNavigatorImpl().push(Routes.webViewScreenRoute);
                          break;
                        case ExpansionListTileChoice.adds:
                          // TODO: Handle this case.
                          break;
                        case ExpansionListTileChoice.settings:
                        // TODO: Handle this case.
                          break;
                        case ExpansionListTileChoice.orderAndPayments:
                          // TODO: Handle this case.
                          break;
                        case ExpansionListTileChoice.language:
                          NamedNavigatorImpl()
                              .push(Routes.languagesScreenRoute);
                          break;
                        case ExpansionListTileChoice.about:
                          NamedNavigatorImpl().push(Routes.aboutScreenRoute);
                          break;
                      }
                    },
                  ),
                  separatorBuilder: (context, index) => Divider(
                    height: 0,
                    indent: 55.w,
                    thickness: 0.5,
                  ),
                  itemCount: listLength,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            )
          ]);

  getAllShortCutsTextWidget() => AppText(
        text: "All shortcuts",
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      );

  getUserProfileListTile() => ListTile(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(corner),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 10.w),
        tileColor: Colors.white,
        title: AppText(
          text: "Ahmed Fahmy",
          fontSize: fontSize + 2.sp,
          fontWeight: FontWeight.bold,
        ),
        subtitle: AppText(
          text: "+201545778789",
          fontSize: fontSize - 1.sp,
        ),
        leading: ClipRRect(child: Image.asset("images/img.png")),
        onTap: () {
          NamedNavigatorImpl().push(Routes.profileScreenRoute);
        },
      );

  getAllShortcutsGridView() => GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 180.h,
          childAspectRatio: 6 / 3.2,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext ctx, index) {
          return getAllShortcutsGridViewItem();
        },
      );

  getAllShortcutsGridViewItem() => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(corner),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.shopping_basket_sharp,
                color: Theme.of(context).primaryColor,
              ),
              gap(height: 5.h),
              AppText(
                text: "Shops",
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              )
            ],
          ),
        ),
      );
}

enum ExpansionListTileChoice {
  helpCenter,
  supportInbox,
  contactUs,
  termAndPolicies,
  settings,
  privacyShortcuts,
  adds,
  orderAndPayments,
  language,
  about
}
