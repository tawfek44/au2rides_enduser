import 'package:au2rides/core/constants/constants.dart';
import 'package:au2rides/core/widgets/app_circular_indicator.dart';
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/presentation/bloc/choose_fuel_consumption_units_cubit.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../core/dependancy_injection/injection.dart';
import '../../../../../../../core/repositories/user_repository.dart';
import '../../../../../../../core/styles/colors.dart';
import '../../../../../../../core/widgets/app_text.dart';
import '../../../../../../../generated/l10n.dart';
import '../bloc/choose_currency_cubit.dart';

class ChooseCurrencyScreen extends StatefulWidget {
  const ChooseCurrencyScreen({super.key});

  @override
  State<ChooseCurrencyScreen> createState() => _ChooseCurrencyScreenState();
}

class _ChooseCurrencyScreenState extends State<ChooseCurrencyScreen> {
  var currenciesList = [];
  var tempCurrenciesList = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      currenciesList =
          await context.read<ChooseCurrencyCubit>().getCurrencies();
      tempCurrenciesList = currenciesList;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection:
          isArabicLocalization() ? TextDirection.rtl : TextDirection.ltr,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height),
          child: getAppBar(
            context: context,
            title: AppText(
              text: S.current.chooseCurrency,
              fontSize: fontSize + 3.sp,
              color: AppColors.white,
            ),
          ),
        ),
        body: BlocBuilder<ChooseCurrencyCubit, ChooseCurrencyState>(
          builder: (context, state) {
            if (state is LoadingChooseCurrencyState) {
              return const Center(
                child: AppCircularProgressIndicator(),
              );
            } else if (state is ErrorChooseCurrencyState) {
              return Center(
                  child: AppText(
                text: state.e.toString(),
                fontSize: fontSize,
              ));
            } else if (state is LoadedChooseCurrencyState) {
              return SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(15.w),
                  child: Column(
                    children: [
                      getSearchBar(),
                      gap(height: 15.h),
                      getCurrenciesListGroup(
                          currenciesList: tempCurrenciesList),
                    ],
                  ),
                ),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  getCurrenciesListGroup({required currenciesList}) =>
      CupertinoListSection.insetGrouped(
        margin: EdgeInsets.zero,
        children: [
          getCurrenciesList(currenciesList: currenciesList),
        ],
      );

  getCurrenciesList({required currenciesList}) => ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => getCurrenciesListTile(
          currencyImageUrl: currenciesList[index].currencyImageUrl,
            currency: currenciesList[index].currencyName, index: index),
        separatorBuilder: (context, index) => Divider(
          height: 0,
          indent: 55.w,
        ),
        itemCount: currenciesList.length,
      );

  getCurrenciesListTile({required currency, required index,required currencyImageUrl}) =>
      CupertinoListTile.notched(
          onTap: () {
            setState(() {
              getIt<UserRepository>().setSelectedCurrency(currency);

              Navigator.pop(context, currency);
            });
          },
          backgroundColor: Colors.white,
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(30.w),
            child: SvgPicture.network(
               currencyImageUrl,
                placeholderBuilder: (BuildContext context) => Container(
                    padding:  EdgeInsets.all(20.w),
                    child: const AppCircularProgressIndicator())
            ),
          ),
          title: AppText(
            text: currency,
            fontSize: fontSize,
          ),
          trailing: currency ==
                  getIt<UserRepository>().getSelectedCurrencyName
              ? Icon(
                  Icons.check,
                  color: Theme.of(context).primaryColor,
                )
              : Container());

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
              placeholder: S.current.search,
              decoration:
                  BoxDecoration(border: Border.all(style: BorderStyle.none)),
              onChanged: (String text) {
                var temp = [];
                if (text.isNotEmpty) {
                  for (var element in tempCurrenciesList) {
                    if (element.currencyName.toLowerCase().contains(text)) {
                      temp.add(element);
                    }
                  }
                }
                setState(() {
                  if (temp.isNotEmpty) {
                    tempCurrenciesList = temp;
                  } else {
                    tempCurrenciesList = currenciesList;
                  }
                });
              },
            ),
          )
        ],
      );
}
