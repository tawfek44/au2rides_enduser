import 'package:au2rides/features/add_ride_screen/presentation/bloc/add_ride_cubit.dart';
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart';
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart';
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart';
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart';
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart';
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/download_screen/presentation/bloc/country_cubit/country_cubit.dart';
import '../../features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart';
import '../../features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart';
import '../../features/download_screen/presentation/bloc/fuel_measuring_units_cubit/fuel_measuring_units_cubit.dart';
import '../../features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart';
import '../../features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart';
import '../../features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart';
import '../../features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart';
import '../../features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart';
import '../../features/enter_user_info/presentation/bloc/get_user_info_cubit.dart';
import '../../features/gender_screen/presentation/bloc/get_gender_cubit.dart';
import '../../features/login_screen/presentation/bloc/authorize_mobile_number_cubit/authorize_mobile_number_cubit.dart';
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
        BlocProvider(create: (_) => getIt<ServiceDepartmentsCubit>()),
        BlocProvider(create: (_) => getIt<ServiceTypesCubit>()),
        BlocProvider(create: (_) => getIt<FuelOctaneNumberCubit>()),
        BlocProvider(create: (_) => getIt<DepartmentServiceItemsCubit>()),
        BlocProvider(
            create: (_) => getIt<ModelGenerationSpecificationKeysCubit>()),
        BlocProvider(create: (_) => getIt<WorkflowStatusesCubit>()),
        BlocProvider(create: (_) => getIt<AuthorizeCubit>()),
        BlocProvider(create: (_) => getIt<GetCountriesCubit>()),
        BlocProvider(create: (_) => getIt<AuthorizeMobileNumberCubit>()),
        BlocProvider(create: (_) => getIt<GetUserInfoCubit>()),
        BlocProvider(create: (_) => getIt<GetGenderCubit>()),
        BlocProvider(create: (_) => getIt<UpdateUserDataCubit>()),
        BlocProvider(create: (_) => getIt<AddUserToLocalDbCubit>()),
        BlocProvider(create: (_) => getIt<AddRideCubit>()),
        BlocProvider(create: (_) => getIt<GetMyRidesCubit>()),
        BlocProvider(create: (_) => getIt<FuelMeasuringUnitsCubit>())
      ],
      child: child,
    );
