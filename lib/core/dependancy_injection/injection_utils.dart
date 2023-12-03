
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit/country_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/gender_cubit/gender_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/ride_types/ride_types_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/weather_units/weather_units_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/redirection_screen/presentation/bloc/currency_cubit/currency_cubit.dart';
import '../../features/splash_screen/presentation/bloc/check_primary_data_cubit.dart';
import 'injection.dart';

MultiBlocProvider provideApp(Widget child) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<LanguageCubit>()),
        BlocProvider(create: (_) => getIt<CountryCubit>()),
        BlocProvider(create: (_) => getIt<CurrencyCubit>()),
        BlocProvider(create: (_) => getIt<CheckPrimaryDataCubit>()),
        BlocProvider(create: (_) => getIt<GenderCubit>()),
        BlocProvider(create: (_) => getIt<WeatherUnitsCubit>()),
        BlocProvider(create: (_) => getIt<RideTypesCubit>()),

      ],
      child: child,
    );
