
import 'package:au2rides/core/storage/tables/fuel_consumption_unit_types.dart';
import 'package:au2rides/features/download_screen/data/models/engine_fuel_types/engine_fuel_types_model.dart';
import 'package:au2rides/features/download_screen/domain/entity/metric_units_types/metric_units_entity.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart';
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/download_screen/presentation/bloc/country_cubit/country_cubit.dart';
import '../../features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart';
import '../../features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart';
import '../../features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart';
import '../../features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart';
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
        BlocProvider(create: (_) => getIt<PaymentMethodsCubit>()),
        BlocProvider(create: (_) => getIt<MonthCubit>()),
        BlocProvider(create: (_) => getIt<PressureUnitsCubit>()),
        BlocProvider(create: (_) => getIt<AcquisitionTypesCubit>()),
        BlocProvider(create: (_) => getIt<MetricUnitsCubit>()),
        BlocProvider(create: (_) => getIt<EngineTransmissionTypesCubit>()),
        BlocProvider(create: (_) => getIt<EngineFuelTypesCubit>()),
        BlocProvider(create: (_) => getIt<ReminderTypesCubit>()),
        BlocProvider(create: (_) => getIt<RecurrencePeriodTypesCubit>()),
        BlocProvider(create: (_) => getIt<ReminderTypeServiceCubit>()),
        BlocProvider(create: (_) => getIt<FuelBrandsCubit>()),
        BlocProvider(create: (_) => getIt<FuelConsumptionUnitTypesCubit>()),
        BlocProvider(create: (_) => getIt<ServiceDepartmentsCubit>())
      ],
      child: child,
    );
