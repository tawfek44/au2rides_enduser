import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RedirectionScreen extends StatefulWidget {
  const RedirectionScreen({super.key});

  @override
  State<RedirectionScreen> createState() => _RedirectionScreenState();
}

class _RedirectionScreenState extends State<RedirectionScreen> {
  @override
  void initState() {
    context.read<CountryCubit>().getAllCountries();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: createStateBlock(),
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
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        createLogo(context),
        Padding(
          padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 80.w),
          child: const LinearProgressIndicator(),
        )
      ],
    );
  }
}
