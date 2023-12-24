// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i64;
import 'package:au2rides/core/repositories/user_repository.dart' as _i108;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i47;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i11;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i15;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i18;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i21;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i24;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i27;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i30;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i33;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i55;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i58;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i61;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i65;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i68;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i71;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i74;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i77;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i80;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i102;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i103;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i109;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i112;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i13;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i17;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i23;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i26;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i29;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i57;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i60;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i63;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i67;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i70;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i73;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i76;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i79;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i82;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i105;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i107;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i111;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i114;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i16;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i22;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i25;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i28;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i34;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i37;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i75;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i110;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i113;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i10;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i39;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i83;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i84;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i40;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i85;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i41;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i120;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i42;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i121;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i43;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i88;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i44;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i123;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i45;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i90;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i124;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i46;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i91;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i142;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i152;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i153;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i94;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i128;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i143;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i96;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i130;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i154;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i155;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i99;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i133;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i100;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i134;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i174;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i136;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i137;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i145;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i175;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i138;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i115;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i139;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i140;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i141;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i146;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i147;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i148;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i149;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i150;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i151;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i164;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i165;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i166;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i167;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i168;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i169;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i170;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i171;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i172;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i177;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i178;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i179;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i180;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i52;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i54;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i53;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i160;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i163;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i6;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i48;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i8;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i50;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i7;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i49;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i9;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i51;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i116;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.AcquisitionTypesDataSource>(
        () => _i3.AcquisitionTypesDataSource());
    gh.factory<_i4.AcquisitionTypesRepository>(() =>
        _i5.AcquisitionTypesRepositoryImpl(
            gh<_i3.AcquisitionTypesDataSource>()));
    gh.factory<_i6.CheckPrimaryDataDataSource>(
        () => _i6.CheckPrimaryDataDataSource());
    gh.factory<_i7.CheckPrimaryDataRepository>(() =>
        _i8.CheckPrimaryDataRepositoryImpl(
            gh<_i6.CheckPrimaryDataDataSource>()));
    gh.factory<_i9.CheckPrimaryDataUseCase>(() =>
        _i9.CheckPrimaryDataUseCase(gh<_i7.CheckPrimaryDataRepository>()));
    gh.factory<_i10.ClearAcquisitionTypesUseCase>(() =>
        _i10.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i11.CountryDataSource>(() => _i11.CountryDataSource());
    gh.factory<_i12.CountryRepository>(
        () => _i13.CountryRepositoryImpl(gh<_i11.CountryDataSource>()));
    gh.factory<_i14.CountryUseCase>(
        () => _i14.CountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i15.CurrencyDataSource>(() => _i15.CurrencyDataSource());
    gh.factory<_i16.CurrencyRepository>(
        () => _i17.CurrencyRepositoryImpl(gh<_i15.CurrencyDataSource>()));
    gh.factory<_i18.DepartmentServiceItemsDataSource>(
        () => _i18.DepartmentServiceItemsDataSource());
    gh.factory<_i19.DepartmentServiceItemsRepository>(() =>
        _i20.DepartmentServiceItemsRepositoryImpl(
            gh<_i18.DepartmentServiceItemsDataSource>()));
    gh.factory<_i21.EngineFuelTypesDataSource>(
        () => _i21.EngineFuelTypesDataSource());
    gh.factory<_i22.EngineFuelTypesRepository>(() =>
        _i23.EngineFuelTypesRepositoryImpl(
            gh<_i21.EngineFuelTypesDataSource>()));
    gh.factory<_i24.EngineTransmissionTypesDataSource>(
        () => _i24.EngineTransmissionTypesDataSource());
    gh.factory<_i25.EngineTransmissionTypesRepository>(() =>
        _i26.EngineTransmissionTypesRepositoryImpl(
            gh<_i24.EngineTransmissionTypesDataSource>()));
    gh.factory<_i27.FuelBrandsDataSource>(() => _i27.FuelBrandsDataSource());
    gh.factory<_i28.FuelBrandsRepository>(
        () => _i29.FuelBrandsRepositoryImpl(gh<_i27.FuelBrandsDataSource>()));
    gh.factory<_i30.FuelConsumptionUnitTypesDataSource>(
        () => _i30.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i31.FuelConsumptionUnitTypesRepository>(() =>
        _i32.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i30.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i33.FuelOctaneNumberDataSource>(
        () => _i33.FuelOctaneNumberDataSource());
    gh.factory<_i34.FuelOctaneNumberRepository>(() =>
        _i35.FuelOctaneNumberRepositoryImpl(
            gh<_i33.FuelOctaneNumberDataSource>()));
    gh.factory<_i36.GenderDataSource>(() => _i36.GenderDataSource());
    gh.factory<_i37.GenderRepository>(
        () => _i38.GenderRepositoryImpl(gh<_i36.GenderDataSource>()));
    gh.factory<_i39.GetAllAcquisitionTypesUseCase>(() =>
        _i39.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i40.GetAllCurrencyUseCase>(
        () => _i40.GetAllCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i41.GetAllDepartmentServiceItemsUseCase>(() =>
        _i41.GetAllDepartmentServiceItemsUseCase(
            gh<_i19.DepartmentServiceItemsRepository>()));
    gh.factory<_i42.GetAllEngineFuelTypesUseCase>(() =>
        _i42.GetAllEngineFuelTypesUseCase(
            gh<_i22.EngineFuelTypesRepository>()));
    gh.factory<_i43.GetAllEngineTransmissionTypesUseCase>(() =>
        _i43.GetAllEngineTransmissionTypesUseCase(
            gh<_i25.EngineTransmissionTypesRepository>()));
    gh.factory<_i44.GetAllFuelBrandUseCase>(
        () => _i44.GetAllFuelBrandUseCase(gh<_i28.FuelBrandsRepository>()));
    gh.factory<_i45.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i45.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i31.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i46.GetAllFuelOctaneNumberUseCase>(() =>
        _i46.GetAllFuelOctaneNumberUseCase(
            gh<_i34.FuelOctaneNumberRepository>()));
    await gh.factoryAsync<_i47.IPrefsManager>(
      () => _i47.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i48.IsDownloadedDataSource>(
        () => _i48.IsDownloadedDataSource());
    gh.factory<_i49.IsDownloadedRepository>(
        () => _i50.IsDownloadedImpl(gh<_i48.IsDownloadedDataSource>()));
    gh.factory<_i51.IsDownloadedUseCase>(
        () => _i51.IsDownloadedUseCase(gh<_i49.IsDownloadedRepository>()));
    gh.factory<_i52.LanguageLocalDatabase>(() => _i52.LanguageLocalDatabase());
    gh.factory<_i53.LanguageRepository>(
        () => _i54.LanguageRepositoryImpl(gh<_i52.LanguageLocalDatabase>()));
    gh.factory<_i55.MetricUnitsDataSource>(() => _i55.MetricUnitsDataSource());
    gh.factory<_i56.MetricUnitsRepository>(
        () => _i57.MetricUnitsRepositoryImpl(gh<_i55.MetricUnitsDataSource>()));
    gh.factory<_i58.ModelGenerationSpecificationKeysDataSource>(
        () => _i58.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i59.ModelGenerationSpecificationKeysRepository>(() =>
        _i60.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i58.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i61.MonthDataSource>(() => _i61.MonthDataSource());
    gh.factory<_i62.MonthRepository>(
        () => _i63.MonthRepositoryImpl(gh<_i61.MonthDataSource>()));
    gh.factory<_i64.NetworkInfo>(() => _i64.NetworkInfoImpl.create());
    gh.factory<_i65.PaymentMethodsDataSource>(
        () => _i65.PaymentMethodsDataSource());
    gh.factory<_i66.PaymentMethodsRepository>(() =>
        _i67.PaymentMethodsRepositoryImpl(gh<_i65.PaymentMethodsDataSource>()));
    gh.factory<_i68.PressureUnitsDataSource>(
        () => _i68.PressureUnitsDataSource());
    gh.factory<_i69.PressureUnitsRepository>(() =>
        _i70.PressureUnitsRepositoryImpl(gh<_i68.PressureUnitsDataSource>()));
    gh.factory<_i71.RecurrencePeriodTypesDataSource>(
        () => _i71.RecurrencePeriodTypesDataSource());
    gh.factory<_i72.RecurrencePeriodTypesRepository>(() =>
        _i73.RecurrencePeriodTypesRepositoryImpl(
            gh<_i71.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i74.ReminderTypeServiceDataSource>(
        () => _i74.ReminderTypeServiceDataSource());
    gh.factory<_i75.ReminderTypeServiceRepository>(() =>
        _i76.ReminderTypeServiceRepositoryImpl(
            gh<_i74.ReminderTypeServiceDataSource>()));
    gh.factory<_i77.ReminderTypesDataSource>(
        () => _i77.ReminderTypesDataSource());
    gh.factory<_i78.ReminderTypesRepository>(() =>
        _i79.ReminderTypesRepositoryImpl(gh<_i77.ReminderTypesDataSource>()));
    gh.factory<_i80.RideTypesDataSource>(() => _i80.RideTypesDataSource());
    gh.factory<_i81.RideTypesRepository>(
        () => _i82.RideTypesRepositoryImpl(gh<_i80.RideTypesDataSource>()));
    gh.factory<_i83.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i83.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i84.SaveCountriesUseCase>(
        () => _i84.SaveCountriesUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i85.SaveCurrenciesInLocalDbUseCase>(() =>
        _i85.SaveCurrenciesInLocalDbUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i86.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i86.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i19.DepartmentServiceItemsRepository>()));
    gh.factory<_i87.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i87.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i22.EngineFuelTypesRepository>()));
    gh.factory<_i88.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i88.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i25.EngineTransmissionTypesRepository>()));
    gh.factory<_i89.SaveFuelBrandInLocalDbUseCase>(() =>
        _i89.SaveFuelBrandInLocalDbUseCase(gh<_i28.FuelBrandsRepository>()));
    gh.factory<_i90.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i90.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i31.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i91.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i91.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i34.FuelOctaneNumberRepository>()));
    gh.factory<_i92.SaveGenderDataInLocalDb>(
        () => _i92.SaveGenderDataInLocalDb(gh<_i37.GenderRepository>()));
    gh.factory<_i93.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i93.SaveMetricUnitsInLocalDbUseCase(gh<_i56.MetricUnitsRepository>()));
    gh.factory<_i94.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i94.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i59.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i95.SaveMonthsUseCase>(
        () => _i95.SaveMonthsUseCase(gh<_i62.MonthRepository>()));
    gh.factory<_i96.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i96.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i66.PaymentMethodsRepository>()));
    gh.factory<_i97.SavePressureUnitsInLocalDbUseCase>(() =>
        _i97.SavePressureUnitsInLocalDbUseCase(
            gh<_i69.PressureUnitsRepository>()));
    gh.factory<_i98.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i98.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i72.RecurrencePeriodTypesRepository>()));
    gh.factory<_i99.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i99.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i75.ReminderTypeServiceRepository>()));
    gh.factory<_i100.SaveReminderTypesUseCase>(() =>
        _i100.SaveReminderTypesUseCase(gh<_i78.ReminderTypesRepository>()));
    gh.factory<_i101.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i101.SaveRideTypesDataInLocalDbUseCase(
            gh<_i81.RideTypesRepository>()));
    gh.factory<_i102.ServiceDepartmentsDataSource>(
        () => _i102.ServiceDepartmentsDataSource());
    gh.factory<_i103.ServiceTypesDataSource>(
        () => _i103.ServiceTypesDataSource());
    gh.factory<_i104.ServiceTypesRepository>(() =>
        _i105.ServiceTypesRepositoryImpl(gh<_i103.ServiceTypesDataSource>()));
    gh.factory<_i106.ServicesDepartmentsRepository>(() =>
        _i107.ServiceDepartmentsRepositoryImpl(
            gh<_i102.ServiceDepartmentsDataSource>()));
    gh.singleton<_i108.UserRepository>(_i108.UserRepository.create(
        gh<_i47.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i109.WeatherUnitsDataSource>(
        () => _i109.WeatherUnitsDataSource());
    gh.factory<_i110.WeatherUnitsRepository>(() =>
        _i111.WeatherUnitsRepositoryImpl(gh<_i109.WeatherUnitsDataSource>()));
    gh.factory<_i112.WorkflowStatusesDataSource>(
        () => _i112.WorkflowStatusesDataSource());
    gh.factory<_i113.WorkflowStatusesRepository>(() =>
        _i114.WorkflowStatusesRepositoryImpl(
            gh<_i112.WorkflowStatusesDataSource>()));
    gh.factory<_i115.AcquisitionTypesCubit>(() => _i115.AcquisitionTypesCubit(
          gh<_i10.ClearAcquisitionTypesUseCase>(),
          gh<_i39.GetAllAcquisitionTypesUseCase>(),
          gh<_i83.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i116.CheckPrimaryDataCubit>(() => _i116.CheckPrimaryDataCubit(
          gh<_i9.CheckPrimaryDataUseCase>(),
          gh<_i51.IsDownloadedUseCase>(),
        ));
    gh.factory<_i117.ClearCountryUseCase>(
        () => _i117.ClearCountryUseCase(gh<_i12.CountryRepository>()));
    gh.factory<_i118.ClearCurrencyUseCase>(
        () => _i118.ClearCurrencyUseCase(gh<_i16.CurrencyRepository>()));
    gh.factory<_i119.ClearDepartmentServiceItemsUseCase>(() =>
        _i119.ClearDepartmentServiceItemsUseCase(
            gh<_i19.DepartmentServiceItemsRepository>()));
    gh.factory<_i120.ClearEngineFuelTypesUseCase>(() =>
        _i120.ClearEngineFuelTypesUseCase(
            gh<_i22.EngineFuelTypesRepository>()));
    gh.factory<_i121.ClearEngineTransmissionTypesUseCase>(() =>
        _i121.ClearEngineTransmissionTypesUseCase(
            gh<_i25.EngineTransmissionTypesRepository>()));
    gh.factory<_i122.ClearFuelBrandsUseCase>(
        () => _i122.ClearFuelBrandsUseCase(gh<_i28.FuelBrandsRepository>()));
    gh.factory<_i123.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i123.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i31.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i124.ClearFuelOctaneNumberUseCase>(() =>
        _i124.ClearFuelOctaneNumberUseCase(
            gh<_i34.FuelOctaneNumberRepository>()));
    gh.factory<_i125.ClearGenderUseCase>(
        () => _i125.ClearGenderUseCase(gh<_i37.GenderRepository>()));
    gh.factory<_i126.ClearMetricUnitsUseCase>(
        () => _i126.ClearMetricUnitsUseCase(gh<_i56.MetricUnitsRepository>()));
    gh.factory<_i127.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i127.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i59.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i128.ClearMonthUseCase>(
        () => _i128.ClearMonthUseCase(gh<_i62.MonthRepository>()));
    gh.factory<_i129.ClearPaymentMethodsUseCase>(() =>
        _i129.ClearPaymentMethodsUseCase(gh<_i66.PaymentMethodsRepository>()));
    gh.factory<_i130.ClearPressureUnitsUseCase>(() =>
        _i130.ClearPressureUnitsUseCase(gh<_i69.PressureUnitsRepository>()));
    gh.factory<_i131.ClearRecurrencePeriodTypesUseCase>(() =>
        _i131.ClearRecurrencePeriodTypesUseCase(
            gh<_i72.RecurrencePeriodTypesRepository>()));
    gh.factory<_i132.ClearReminderTypeServiceUseCase>(() =>
        _i132.ClearReminderTypeServiceUseCase(
            gh<_i75.ReminderTypeServiceRepository>()));
    gh.factory<_i133.ClearReminderTypeUseCase>(() =>
        _i133.ClearReminderTypeUseCase(gh<_i78.ReminderTypesRepository>()));
    gh.factory<_i134.ClearRideTypesUseCase>(
        () => _i134.ClearRideTypesUseCase(gh<_i81.RideTypesRepository>()));
    gh.factory<_i135.ClearServiceTypesUseCase>(() =>
        _i135.ClearServiceTypesUseCase(gh<_i104.ServiceTypesRepository>()));
    gh.factory<_i136.ClearServicesDepartmentsUseCase>(() =>
        _i136.ClearServicesDepartmentsUseCase(
            gh<_i106.ServicesDepartmentsRepository>()));
    gh.factory<_i137.ClearWeatherUnitsUseCase>(() =>
        _i137.ClearWeatherUnitsUseCase(gh<_i110.WeatherUnitsRepository>()));
    gh.factory<_i138.ClearWorkflowStatusesUseCase>(() =>
        _i138.ClearWorkflowStatusesUseCase(
            gh<_i113.WorkflowStatusesRepository>()));
    gh.factory<_i139.CountryCubit>(() => _i139.CountryCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i84.SaveCountriesUseCase>(),
          gh<_i117.ClearCountryUseCase>(),
          gh<_i118.ClearCurrencyUseCase>(),
        ));
    gh.factory<_i140.CurrencyCubit>(() => _i140.CurrencyCubit(
          gh<_i118.ClearCurrencyUseCase>(),
          gh<_i40.GetAllCurrencyUseCase>(),
          gh<_i85.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i141.DepartmentServiceItemsCubit>(
        () => _i141.DepartmentServiceItemsCubit(
              gh<_i119.ClearDepartmentServiceItemsUseCase>(),
              gh<_i41.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i86.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i142.DownloadGenderUseCase>(
        () => _i142.DownloadGenderUseCase(gh<_i37.GenderRepository>()));
    gh.factory<_i143.DownloadPaymentMethodsUseCase>(() =>
        _i143.DownloadPaymentMethodsUseCase(
            gh<_i66.PaymentMethodsRepository>()));
    gh.factory<_i144.DownloadRideTypesUseCase>(
        () => _i144.DownloadRideTypesUseCase(gh<_i81.RideTypesRepository>()));
    gh.factory<_i145.DownloadWeatherUnitsUseCase>(() =>
        _i145.DownloadWeatherUnitsUseCase(gh<_i110.WeatherUnitsRepository>()));
    gh.factory<_i146.EngineFuelTypesCubit>(() => _i146.EngineFuelTypesCubit(
          gh<_i120.ClearEngineFuelTypesUseCase>(),
          gh<_i42.GetAllEngineFuelTypesUseCase>(),
          gh<_i87.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i147.EngineTransmissionTypesCubit>(
        () => _i147.EngineTransmissionTypesCubit(
              gh<_i121.ClearEngineTransmissionTypesUseCase>(),
              gh<_i43.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i88.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i148.FuelBrandsCubit>(() => _i148.FuelBrandsCubit(
          gh<_i122.ClearFuelBrandsUseCase>(),
          gh<_i44.GetAllFuelBrandUseCase>(),
          gh<_i89.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i149.FuelConsumptionUnitTypesCubit>(
        () => _i149.FuelConsumptionUnitTypesCubit(
              gh<_i123.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i45.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i90.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i150.FuelOctaneNumberCubit>(() => _i150.FuelOctaneNumberCubit(
          gh<_i124.ClearFuelOctaneNumberUseCase>(),
          gh<_i46.GetAllFuelOctaneNumberUseCase>(),
          gh<_i91.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i151.GenderCubit>(() => _i151.GenderCubit(
          gh<_i125.ClearGenderUseCase>(),
          gh<_i142.DownloadGenderUseCase>(),
          gh<_i92.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i152.GetAllMetricUnitsUseCase>(
        () => _i152.GetAllMetricUnitsUseCase(gh<_i56.MetricUnitsRepository>()));
    gh.factory<_i153.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i153.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i59.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i154.GetAllPressureUnitsUseCase>(() =>
        _i154.GetAllPressureUnitsUseCase(gh<_i69.PressureUnitsRepository>()));
    gh.factory<_i155.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i155.GetAllRecurrencePeriodTypesUseCase(
            gh<_i72.RecurrencePeriodTypesRepository>()));
    gh.factory<_i156.GetAllReminderTypeServiceUseCase>(() =>
        _i156.GetAllReminderTypeServiceUseCase(
            gh<_i75.ReminderTypeServiceRepository>()));
    gh.factory<_i157.GetAllServiceTypesUseCase>(() =>
        _i157.GetAllServiceTypesUseCase(gh<_i104.ServiceTypesRepository>()));
    gh.factory<_i158.GetAllServicesDepartmentsUseCase>(() =>
        _i158.GetAllServicesDepartmentsUseCase(
            gh<_i106.ServicesDepartmentsRepository>()));
    gh.factory<_i159.GetAllWorkflowStatusesUseCase>(() =>
        _i159.GetAllWorkflowStatusesUseCase(
            gh<_i113.WorkflowStatusesRepository>()));
    gh.factory<_i160.GetLanguagesUseCase>(
        () => _i160.GetLanguagesUseCase(gh<_i53.LanguageRepository>()));
    gh.factory<_i161.GetMonthsUseCase>(
        () => _i161.GetMonthsUseCase(gh<_i62.MonthRepository>()));
    gh.factory<_i162.GetReminderTypesUseCase>(() =>
        _i162.GetReminderTypesUseCase(gh<_i78.ReminderTypesRepository>()));
    gh.factory<_i163.LanguageCubit>(
        () => _i163.LanguageCubit(gh<_i160.GetLanguagesUseCase>()));
    gh.factory<_i164.MetricUnitsCubit>(() => _i164.MetricUnitsCubit(
          gh<_i126.ClearMetricUnitsUseCase>(),
          gh<_i152.GetAllMetricUnitsUseCase>(),
          gh<_i93.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i165.ModelGenerationSpecificationKeysCubit>(
        () => _i165.ModelGenerationSpecificationKeysCubit(
              gh<_i127.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i153.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i94.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i166.MonthCubit>(() => _i166.MonthCubit(
          gh<_i161.GetMonthsUseCase>(),
          gh<_i95.SaveMonthsUseCase>(),
          gh<_i128.ClearMonthUseCase>(),
        ));
    gh.factory<_i167.PaymentMethodsCubit>(() => _i167.PaymentMethodsCubit(
          gh<_i129.ClearPaymentMethodsUseCase>(),
          gh<_i143.DownloadPaymentMethodsUseCase>(),
          gh<_i96.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i168.PressureUnitsCubit>(() => _i168.PressureUnitsCubit(
          gh<_i14.CountryUseCase>(),
          gh<_i97.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i130.ClearPressureUnitsUseCase>(),
          gh<_i154.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i169.RecurrencePeriodTypesCubit>(
        () => _i169.RecurrencePeriodTypesCubit(
              gh<_i131.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i155.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i98.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i170.ReminderTypeServiceCubit>(
        () => _i170.ReminderTypeServiceCubit(
              gh<_i132.ClearReminderTypeServiceUseCase>(),
              gh<_i156.GetAllReminderTypeServiceUseCase>(),
              gh<_i99.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i171.ReminderTypesCubit>(() => _i171.ReminderTypesCubit(
          gh<_i162.GetReminderTypesUseCase>(),
          gh<_i100.SaveReminderTypesUseCase>(),
          gh<_i133.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i172.RideTypesCubit>(() => _i172.RideTypesCubit(
          gh<_i134.ClearRideTypesUseCase>(),
          gh<_i144.DownloadRideTypesUseCase>(),
          gh<_i101.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i173.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i173.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i106.ServicesDepartmentsRepository>()));
    gh.factory<_i174.SaveServiceTypesInLocalDbUseCase>(() =>
        _i174.SaveServiceTypesInLocalDbUseCase(
            gh<_i104.ServiceTypesRepository>()));
    gh.factory<_i175.SaveWeatherUnitsDataInLocalDb>(() =>
        _i175.SaveWeatherUnitsDataInLocalDb(
            gh<_i110.WeatherUnitsRepository>()));
    gh.factory<_i176.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i176.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i113.WorkflowStatusesRepository>()));
    gh.factory<_i177.ServiceDepartmentsCubit>(
        () => _i177.ServiceDepartmentsCubit(
              gh<_i136.ClearServicesDepartmentsUseCase>(),
              gh<_i158.GetAllServicesDepartmentsUseCase>(),
              gh<_i173.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i178.ServiceTypesCubit>(() => _i178.ServiceTypesCubit(
          gh<_i135.ClearServiceTypesUseCase>(),
          gh<_i157.GetAllServiceTypesUseCase>(),
          gh<_i174.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i179.WeatherUnitsCubit>(() => _i179.WeatherUnitsCubit(
          gh<_i137.ClearWeatherUnitsUseCase>(),
          gh<_i145.DownloadWeatherUnitsUseCase>(),
          gh<_i175.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i180.WorkflowStatusesCubit>(() => _i180.WorkflowStatusesCubit(
          gh<_i138.ClearWorkflowStatusesUseCase>(),
          gh<_i159.GetAllWorkflowStatusesUseCase>(),
          gh<_i176.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    return this;
  }
}
