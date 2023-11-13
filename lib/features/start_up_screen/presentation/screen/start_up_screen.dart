import 'package:au2rides/core/app_routes/app_routes.dart';
import 'package:au2rides/core/app_routes/app_routes_names.dart';
import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/styles/colors.dart';
import 'package:au2rides/core/widgets/app_button.dart';
import 'package:au2rides/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StartUpScreen extends StatefulWidget {
  const StartUpScreen({super.key});

  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: createStateBlock()),
    );
  }

  Widget createLogo(BuildContext context) {
    return SizedBox(
      width: 150.w,
      height: 150.h,
      child: const Image(
        image: AssetImage("images/logo.png"),
      ),
    );
  }

  Widget createStateBlock() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        createLogo(context),
        gap(height: 15.h),
        getChooseAppLanguageWidget(),
        getContinueButton()
      ],
    );
  }
  getContinueButton()=> Padding(
    padding:  EdgeInsets.all(15.w),
    child: AppButton(
      label: 'Continue',
      height: 40.h,
      onPressed: () {
        NamedNavigatorImpl().push(Routes.splashScreenRoute);
      },
    ),
  );
  getChooseAppLanguageWidget() => Padding(
        padding: EdgeInsets.all(15.w),
        child: CupertinoListSection.insetGrouped(
          margin: EdgeInsets.zero,
          children: [
            CupertinoListTile(
              onTap: () {

                NamedNavigatorImpl().push(Routes.languagesScreenRoute);
              },
              leading: Icon(
                Icons.language,
                color: Theme.of(context).primaryColor,
              ),
              title: AppText(
                text: AppLocalizations.of(context)?.appLanguageText??"",
                fontSize: fontSize,
              ),
              trailing: const Icon(
                CupertinoIcons.right_chevron,
                color: AppColors.greyColor,
              ),
            ),
          ],
        ),
      );
}
