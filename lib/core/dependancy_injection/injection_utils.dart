
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart';
import 'package:au2rides/features/redirection_screen/presentation/bloc/country_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/splash_screen/presentation/bloc/check_primary_data_cubit.dart';
import 'injection.dart';

MultiBlocProvider provideApp(Widget child) => MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt<LanguageCubit>()),
        BlocProvider(create: (_) => getIt<CountryCubit>()),
        BlocProvider(create: (_) => getIt<CheckPrimaryDataCubit>()),

      ],
      child: child,
    );
