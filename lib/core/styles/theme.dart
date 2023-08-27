
import 'package:flutter/material.dart';
import 'colors.dart';

String neoSansArabic = "NeoSansArabic";
ThemeData getLightThemeData(context) => ThemeData(
    filledButtonTheme: FilledButtonThemeData(style: Theme.of(context).filledButtonTheme.style?.copyWith()),
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.seedColor,
        background: AppColors.backgroundColor,
        surface: AppColors.white),
    brightness: Brightness.light);
ThemeData darkThemeData = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.seedColor, brightness: Brightness.dark));