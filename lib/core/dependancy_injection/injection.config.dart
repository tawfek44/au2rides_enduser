// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i76;
import 'package:au2rides/core/repositories/user_repository.dart' as _i120;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i59;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i55;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i57;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i56;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i58;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i174;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i6;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i19;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i23;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i26;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i29;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i35;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i41;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i44;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i67;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i70;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i73;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i77;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i80;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i83;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i86;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i89;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i92;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i114;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i115;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i121;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i124;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i21;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i25;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i28;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i34;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i37;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i40;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i43;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i46;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i69;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i72;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i75;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i79;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i82;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i85;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i91;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i94;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i117;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i119;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i123;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i11;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i24;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i27;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i30;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i33;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i36;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i39;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i42;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i45;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i71;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i74;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i84;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i116;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i18;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i47;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i13;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i22;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i96;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i48;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i133;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i49;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i134;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i50;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i99;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i100;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i136;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i52;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i137;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i102;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i138;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i54;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i139;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i140;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i166;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i141;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i142;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i107;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i143;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i108;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i109;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i145;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i110;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i146;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i111;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i147;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i177;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i112;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i148;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i113;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i149;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i171;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i189;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i150;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i172;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i188;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i151;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i190;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i152;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i191;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i127;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i128;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i153;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i154;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i155;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i160;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i161;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i162;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i163;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i164;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i165;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i179;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i180;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i181;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i182;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i183;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i184;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i185;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i186;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i187;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i192;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i193;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i194;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i195;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i64;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i66;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i65;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i175;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i178;
import 'package:au2rides/features/login_screen/data/data_scource/login_database.dart'
    as _i7;
import 'package:au2rides/features/login_screen/data/repositories/authorize_mobile_number_repository_impl.dart'
    as _i9;
import 'package:au2rides/features/login_screen/domain/repositories/authoriza_mobile_number_repository.dart'
    as _i8;
import 'package:au2rides/features/login_screen/domain/use_cases/authorize_mobile_number/authroize_mobile_number_usecase.dart'
    as _i10;
import 'package:au2rides/features/login_screen/presentation/bloc/authorize_mobile_number_cubit/authorize_mobile_number_cubit.dart'
    as _i129;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i14;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i60;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i16;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i62;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i15;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i61;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i17;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i63;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i130;
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
    gh.factory<_i6.AuthorizeDataSource>(() => _i6.AuthorizeDataSourceImpl());
    gh.factory<_i7.AuthorizeMobileNumberDatasource>(
        () => _i7.LoginDatasourceImp());
    gh.factory<_i8.AuthorizeMobileNumberRepository>(() =>
        _i9.AuthorizeMobileNumberRepositoryImpl(
            gh<_i7.AuthorizeMobileNumberDatasource>()));
    gh.factory<_i10.AuthorizeMobileNumberUseCase>(() =>
        _i10.AuthorizeMobileNumberUseCase(
            gh<_i8.AuthorizeMobileNumberRepository>()));
    gh.factory<_i11.AuthorizeRepository>(
        () => _i12.AuthorizeRepositoryImpl(gh<_i6.AuthorizeDataSource>()));
    gh.factory<_i13.AuthorizeUseCase>(
        () => _i13.AuthorizeUseCase(gh<_i11.AuthorizeRepository>()));
    gh.factory<_i14.CheckPrimaryDataDataSource>(
        () => _i14.CheckPrimaryDataDataSource());
    gh.factory<_i15.CheckPrimaryDataRepository>(() =>
        _i16.CheckPrimaryDataRepositoryImpl(
            gh<_i14.CheckPrimaryDataDataSource>()));
    gh.factory<_i17.CheckPrimaryDataUseCase>(() =>
        _i17.CheckPrimaryDataUseCase(gh<_i15.CheckPrimaryDataRepository>()));
    gh.factory<_i18.ClearAcquisitionTypesUseCase>(() =>
        _i18.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i19.CountryDataSource>(() => _i19.CountryDataSource());
    gh.factory<_i20.CountryRepository>(
        () => _i21.CountryRepositoryImpl(gh<_i19.CountryDataSource>()));
    gh.factory<_i22.CountryUseCase>(
        () => _i22.CountryUseCase(gh<_i20.CountryRepository>()));
    gh.factory<_i23.CurrencyDataSource>(() => _i23.CurrencyDataSource());
    gh.factory<_i24.CurrencyRepository>(
        () => _i25.CurrencyRepositoryImpl(gh<_i23.CurrencyDataSource>()));
    gh.factory<_i26.DepartmentServiceItemsDataSource>(
        () => _i26.DepartmentServiceItemsDataSource());
    gh.factory<_i27.DepartmentServiceItemsRepository>(() =>
        _i28.DepartmentServiceItemsRepositoryImpl(
            gh<_i26.DepartmentServiceItemsDataSource>()));
    gh.factory<_i29.EngineFuelTypesDataSource>(
        () => _i29.EngineFuelTypesDataSource());
    gh.factory<_i30.EngineFuelTypesRepository>(() =>
        _i31.EngineFuelTypesRepositoryImpl(
            gh<_i29.EngineFuelTypesDataSource>()));
    gh.factory<_i32.EngineTransmissionTypesDataSource>(
        () => _i32.EngineTransmissionTypesDataSource());
    gh.factory<_i33.EngineTransmissionTypesRepository>(() =>
        _i34.EngineTransmissionTypesRepositoryImpl(
            gh<_i32.EngineTransmissionTypesDataSource>()));
    gh.factory<_i35.FuelBrandsDataSource>(() => _i35.FuelBrandsDataSource());
    gh.factory<_i36.FuelBrandsRepository>(
        () => _i37.FuelBrandsRepositoryImpl(gh<_i35.FuelBrandsDataSource>()));
    gh.factory<_i38.FuelConsumptionUnitTypesDataSource>(
        () => _i38.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i39.FuelConsumptionUnitTypesRepository>(() =>
        _i40.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i38.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i41.FuelOctaneNumberDataSource>(
        () => _i41.FuelOctaneNumberDataSource());
    gh.factory<_i42.FuelOctaneNumberRepository>(() =>
        _i43.FuelOctaneNumberRepositoryImpl(
            gh<_i41.FuelOctaneNumberDataSource>()));
    gh.factory<_i44.GenderDataSource>(() => _i44.GenderDataSource());
    gh.factory<_i45.GenderRepository>(
        () => _i46.GenderRepositoryImpl(gh<_i44.GenderDataSource>()));
    gh.factory<_i47.GetAllAcquisitionTypesUseCase>(() =>
        _i47.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i48.GetAllCurrencyUseCase>(
        () => _i48.GetAllCurrencyUseCase(gh<_i24.CurrencyRepository>()));
    gh.factory<_i49.GetAllDepartmentServiceItemsUseCase>(() =>
        _i49.GetAllDepartmentServiceItemsUseCase(
            gh<_i27.DepartmentServiceItemsRepository>()));
    gh.factory<_i50.GetAllEngineFuelTypesUseCase>(() =>
        _i50.GetAllEngineFuelTypesUseCase(
            gh<_i30.EngineFuelTypesRepository>()));
    gh.factory<_i51.GetAllEngineTransmissionTypesUseCase>(() =>
        _i51.GetAllEngineTransmissionTypesUseCase(
            gh<_i33.EngineTransmissionTypesRepository>()));
    gh.factory<_i52.GetAllFuelBrandUseCase>(
        () => _i52.GetAllFuelBrandUseCase(gh<_i36.FuelBrandsRepository>()));
    gh.factory<_i53.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i53.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i39.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i54.GetAllFuelOctaneNumberUseCase>(() =>
        _i54.GetAllFuelOctaneNumberUseCase(
            gh<_i42.FuelOctaneNumberRepository>()));
    gh.factory<_i55.GetCountriesDataSource>(
        () => _i55.GetCountriesDataSource());
    gh.factory<_i56.GetCountriesRepository>(() =>
        _i57.GetCountriesRepositoryImpl(gh<_i55.GetCountriesDataSource>()));
    gh.factory<_i58.GetCountriesUseCase>(
        () => _i58.GetCountriesUseCase(gh<_i56.GetCountriesRepository>()));
    await gh.factoryAsync<_i59.IPrefsManager>(
      () => _i59.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i60.IsDownloadedDataSource>(
        () => _i60.IsDownloadedDataSource());
    gh.factory<_i61.IsDownloadedRepository>(
        () => _i62.IsDownloadedImpl(gh<_i60.IsDownloadedDataSource>()));
    gh.factory<_i63.IsDownloadedUseCase>(
        () => _i63.IsDownloadedUseCase(gh<_i61.IsDownloadedRepository>()));
    gh.factory<_i64.LanguageLocalDatabase>(() => _i64.LanguageLocalDatabase());
    gh.factory<_i65.LanguageRepository>(
        () => _i66.LanguageRepositoryImpl(gh<_i64.LanguageLocalDatabase>()));
    gh.factory<_i67.MetricUnitsDataSource>(() => _i67.MetricUnitsDataSource());
    gh.factory<_i68.MetricUnitsRepository>(
        () => _i69.MetricUnitsRepositoryImpl(gh<_i67.MetricUnitsDataSource>()));
    gh.factory<_i70.ModelGenerationSpecificationKeysDataSource>(
        () => _i70.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i71.ModelGenerationSpecificationKeysRepository>(() =>
        _i72.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i70.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i73.MonthDataSource>(() => _i73.MonthDataSource());
    gh.factory<_i74.MonthRepository>(
        () => _i75.MonthRepositoryImpl(gh<_i73.MonthDataSource>()));
    gh.factory<_i76.NetworkInfo>(() => _i76.NetworkInfoImpl.create());
    gh.factory<_i77.PaymentMethodsDataSource>(
        () => _i77.PaymentMethodsDataSource());
    gh.factory<_i78.PaymentMethodsRepository>(() =>
        _i79.PaymentMethodsRepositoryImpl(gh<_i77.PaymentMethodsDataSource>()));
    gh.factory<_i80.PressureUnitsDataSource>(
        () => _i80.PressureUnitsDataSource());
    gh.factory<_i81.PressureUnitsRepository>(() =>
        _i82.PressureUnitsRepositoryImpl(gh<_i80.PressureUnitsDataSource>()));
    gh.factory<_i83.RecurrencePeriodTypesDataSource>(
        () => _i83.RecurrencePeriodTypesDataSource());
    gh.factory<_i84.RecurrencePeriodTypesRepository>(() =>
        _i85.RecurrencePeriodTypesRepositoryImpl(
            gh<_i83.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i86.ReminderTypeServiceDataSource>(
        () => _i86.ReminderTypeServiceDataSource());
    gh.factory<_i87.ReminderTypeServiceRepository>(() =>
        _i88.ReminderTypeServiceRepositoryImpl(
            gh<_i86.ReminderTypeServiceDataSource>()));
    gh.factory<_i89.ReminderTypesDataSource>(
        () => _i89.ReminderTypesDataSource());
    gh.factory<_i90.ReminderTypesRepository>(() =>
        _i91.ReminderTypesRepositoryImpl(gh<_i89.ReminderTypesDataSource>()));
    gh.factory<_i92.RideTypesDataSource>(() => _i92.RideTypesDataSource());
    gh.factory<_i93.RideTypesRepository>(
        () => _i94.RideTypesRepositoryImpl(gh<_i92.RideTypesDataSource>()));
    gh.factory<_i95.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i95.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i96.SaveCountriesUseCase>(
        () => _i96.SaveCountriesUseCase(gh<_i20.CountryRepository>()));
    gh.factory<_i97.SaveCurrenciesInLocalDbUseCase>(() =>
        _i97.SaveCurrenciesInLocalDbUseCase(gh<_i24.CurrencyRepository>()));
    gh.factory<_i98.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i98.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i27.DepartmentServiceItemsRepository>()));
    gh.factory<_i99.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i99.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i30.EngineFuelTypesRepository>()));
    gh.factory<_i100.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i100.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i33.EngineTransmissionTypesRepository>()));
    gh.factory<_i101.SaveFuelBrandInLocalDbUseCase>(() =>
        _i101.SaveFuelBrandInLocalDbUseCase(gh<_i36.FuelBrandsRepository>()));
    gh.factory<_i102.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i102.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i39.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i103.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i103.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i42.FuelOctaneNumberRepository>()));
    gh.factory<_i104.SaveGenderDataInLocalDb>(
        () => _i104.SaveGenderDataInLocalDb(gh<_i45.GenderRepository>()));
    gh.factory<_i105.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i105.SaveMetricUnitsInLocalDbUseCase(
            gh<_i68.MetricUnitsRepository>()));
    gh.factory<_i106.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i106.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i71.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i107.SaveMonthsUseCase>(
        () => _i107.SaveMonthsUseCase(gh<_i74.MonthRepository>()));
    gh.factory<_i108.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i108.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i78.PaymentMethodsRepository>()));
    gh.factory<_i109.SavePressureUnitsInLocalDbUseCase>(() =>
        _i109.SavePressureUnitsInLocalDbUseCase(
            gh<_i81.PressureUnitsRepository>()));
    gh.factory<_i110.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i110.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i84.RecurrencePeriodTypesRepository>()));
    gh.factory<_i111.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i111.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i87.ReminderTypeServiceRepository>()));
    gh.factory<_i112.SaveReminderTypesUseCase>(() =>
        _i112.SaveReminderTypesUseCase(gh<_i90.ReminderTypesRepository>()));
    gh.factory<_i113.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i113.SaveRideTypesDataInLocalDbUseCase(
            gh<_i93.RideTypesRepository>()));
    gh.factory<_i114.ServiceDepartmentsDataSource>(
        () => _i114.ServiceDepartmentsDataSource());
    gh.factory<_i115.ServiceTypesDataSource>(
        () => _i115.ServiceTypesDataSource());
    gh.factory<_i116.ServiceTypesRepository>(() =>
        _i117.ServiceTypesRepositoryImpl(gh<_i115.ServiceTypesDataSource>()));
    gh.factory<_i118.ServicesDepartmentsRepository>(() =>
        _i119.ServiceDepartmentsRepositoryImpl(
            gh<_i114.ServiceDepartmentsDataSource>()));
    gh.singleton<_i120.UserRepository>(_i120.UserRepository.create(
        gh<_i59.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i121.WeatherUnitsDataSource>(
        () => _i121.WeatherUnitsDataSource());
    gh.factory<_i122.WeatherUnitsRepository>(() =>
        _i123.WeatherUnitsRepositoryImpl(gh<_i121.WeatherUnitsDataSource>()));
    gh.factory<_i124.WorkflowStatusesDataSource>(
        () => _i124.WorkflowStatusesDataSource());
    gh.factory<_i125.WorkflowStatusesRepository>(() =>
        _i126.WorkflowStatusesRepositoryImpl(
            gh<_i124.WorkflowStatusesDataSource>()));
    gh.factory<_i127.AcquisitionTypesCubit>(() => _i127.AcquisitionTypesCubit(
          gh<_i18.ClearAcquisitionTypesUseCase>(),
          gh<_i47.GetAllAcquisitionTypesUseCase>(),
          gh<_i95.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i128.AuthorizeCubit>(
        () => _i128.AuthorizeCubit(gh<_i13.AuthorizeUseCase>()));
    gh.factory<_i129.AuthorizeMobileNumberCubit>(() =>
        _i129.AuthorizeMobileNumberCubit(
            gh<_i10.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i130.CheckPrimaryDataCubit>(() => _i130.CheckPrimaryDataCubit(
          gh<_i17.CheckPrimaryDataUseCase>(),
          gh<_i63.IsDownloadedUseCase>(),
        ));
    gh.factory<_i131.ClearCountryUseCase>(
        () => _i131.ClearCountryUseCase(gh<_i20.CountryRepository>()));
    gh.factory<_i132.ClearCurrencyUseCase>(
        () => _i132.ClearCurrencyUseCase(gh<_i24.CurrencyRepository>()));
    gh.factory<_i133.ClearDepartmentServiceItemsUseCase>(() =>
        _i133.ClearDepartmentServiceItemsUseCase(
            gh<_i27.DepartmentServiceItemsRepository>()));
    gh.factory<_i134.ClearEngineFuelTypesUseCase>(() =>
        _i134.ClearEngineFuelTypesUseCase(
            gh<_i30.EngineFuelTypesRepository>()));
    gh.factory<_i135.ClearEngineTransmissionTypesUseCase>(() =>
        _i135.ClearEngineTransmissionTypesUseCase(
            gh<_i33.EngineTransmissionTypesRepository>()));
    gh.factory<_i136.ClearFuelBrandsUseCase>(
        () => _i136.ClearFuelBrandsUseCase(gh<_i36.FuelBrandsRepository>()));
    gh.factory<_i137.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i137.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i39.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i138.ClearFuelOctaneNumberUseCase>(() =>
        _i138.ClearFuelOctaneNumberUseCase(
            gh<_i42.FuelOctaneNumberRepository>()));
    gh.factory<_i139.ClearGenderUseCase>(
        () => _i139.ClearGenderUseCase(gh<_i45.GenderRepository>()));
    gh.factory<_i140.ClearMetricUnitsUseCase>(
        () => _i140.ClearMetricUnitsUseCase(gh<_i68.MetricUnitsRepository>()));
    gh.factory<_i141.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i141.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i71.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i142.ClearMonthUseCase>(
        () => _i142.ClearMonthUseCase(gh<_i74.MonthRepository>()));
    gh.factory<_i143.ClearPaymentMethodsUseCase>(() =>
        _i143.ClearPaymentMethodsUseCase(gh<_i78.PaymentMethodsRepository>()));
    gh.factory<_i144.ClearPressureUnitsUseCase>(() =>
        _i144.ClearPressureUnitsUseCase(gh<_i81.PressureUnitsRepository>()));
    gh.factory<_i145.ClearRecurrencePeriodTypesUseCase>(() =>
        _i145.ClearRecurrencePeriodTypesUseCase(
            gh<_i84.RecurrencePeriodTypesRepository>()));
    gh.factory<_i146.ClearReminderTypeServiceUseCase>(() =>
        _i146.ClearReminderTypeServiceUseCase(
            gh<_i87.ReminderTypeServiceRepository>()));
    gh.factory<_i147.ClearReminderTypeUseCase>(() =>
        _i147.ClearReminderTypeUseCase(gh<_i90.ReminderTypesRepository>()));
    gh.factory<_i148.ClearRideTypesUseCase>(
        () => _i148.ClearRideTypesUseCase(gh<_i93.RideTypesRepository>()));
    gh.factory<_i149.ClearServiceTypesUseCase>(() =>
        _i149.ClearServiceTypesUseCase(gh<_i116.ServiceTypesRepository>()));
    gh.factory<_i150.ClearServicesDepartmentsUseCase>(() =>
        _i150.ClearServicesDepartmentsUseCase(
            gh<_i118.ServicesDepartmentsRepository>()));
    gh.factory<_i151.ClearWeatherUnitsUseCase>(() =>
        _i151.ClearWeatherUnitsUseCase(gh<_i122.WeatherUnitsRepository>()));
    gh.factory<_i152.ClearWorkflowStatusesUseCase>(() =>
        _i152.ClearWorkflowStatusesUseCase(
            gh<_i125.WorkflowStatusesRepository>()));
    gh.factory<_i153.CountryCubit>(() => _i153.CountryCubit(
          gh<_i22.CountryUseCase>(),
          gh<_i96.SaveCountriesUseCase>(),
          gh<_i131.ClearCountryUseCase>(),
        ));
    gh.factory<_i154.CurrencyCubit>(() => _i154.CurrencyCubit(
          gh<_i132.ClearCurrencyUseCase>(),
          gh<_i48.GetAllCurrencyUseCase>(),
          gh<_i97.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i155.DepartmentServiceItemsCubit>(
        () => _i155.DepartmentServiceItemsCubit(
              gh<_i133.ClearDepartmentServiceItemsUseCase>(),
              gh<_i49.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i98.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i156.DownloadGenderUseCase>(
        () => _i156.DownloadGenderUseCase(gh<_i45.GenderRepository>()));
    gh.factory<_i157.DownloadPaymentMethodsUseCase>(() =>
        _i157.DownloadPaymentMethodsUseCase(
            gh<_i78.PaymentMethodsRepository>()));
    gh.factory<_i158.DownloadRideTypesUseCase>(
        () => _i158.DownloadRideTypesUseCase(gh<_i93.RideTypesRepository>()));
    gh.factory<_i159.DownloadWeatherUnitsUseCase>(() =>
        _i159.DownloadWeatherUnitsUseCase(gh<_i122.WeatherUnitsRepository>()));
    gh.factory<_i160.EngineFuelTypesCubit>(() => _i160.EngineFuelTypesCubit(
          gh<_i134.ClearEngineFuelTypesUseCase>(),
          gh<_i50.GetAllEngineFuelTypesUseCase>(),
          gh<_i99.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i161.EngineTransmissionTypesCubit>(
        () => _i161.EngineTransmissionTypesCubit(
              gh<_i135.ClearEngineTransmissionTypesUseCase>(),
              gh<_i51.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i100.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i162.FuelBrandsCubit>(() => _i162.FuelBrandsCubit(
          gh<_i136.ClearFuelBrandsUseCase>(),
          gh<_i52.GetAllFuelBrandUseCase>(),
          gh<_i101.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i163.FuelConsumptionUnitTypesCubit>(
        () => _i163.FuelConsumptionUnitTypesCubit(
              gh<_i137.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i53.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i102.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i164.FuelOctaneNumberCubit>(() => _i164.FuelOctaneNumberCubit(
          gh<_i138.ClearFuelOctaneNumberUseCase>(),
          gh<_i54.GetAllFuelOctaneNumberUseCase>(),
          gh<_i103.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i165.GenderCubit>(() => _i165.GenderCubit(
          gh<_i139.ClearGenderUseCase>(),
          gh<_i156.DownloadGenderUseCase>(),
          gh<_i104.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i166.GetAllMetricUnitsUseCase>(
        () => _i166.GetAllMetricUnitsUseCase(gh<_i68.MetricUnitsRepository>()));
    gh.factory<_i167.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i167.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i71.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i168.GetAllPressureUnitsUseCase>(() =>
        _i168.GetAllPressureUnitsUseCase(gh<_i81.PressureUnitsRepository>()));
    gh.factory<_i169.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i169.GetAllRecurrencePeriodTypesUseCase(
            gh<_i84.RecurrencePeriodTypesRepository>()));
    gh.factory<_i170.GetAllReminderTypeServiceUseCase>(() =>
        _i170.GetAllReminderTypeServiceUseCase(
            gh<_i87.ReminderTypeServiceRepository>()));
    gh.factory<_i171.GetAllServiceTypesUseCase>(() =>
        _i171.GetAllServiceTypesUseCase(gh<_i116.ServiceTypesRepository>()));
    gh.factory<_i172.GetAllServicesDepartmentsUseCase>(() =>
        _i172.GetAllServicesDepartmentsUseCase(
            gh<_i118.ServicesDepartmentsRepository>()));
    gh.factory<_i173.GetAllWorkflowStatusesUseCase>(() =>
        _i173.GetAllWorkflowStatusesUseCase(
            gh<_i125.WorkflowStatusesRepository>()));
    gh.factory<_i174.GetCountriesCubit>(
        () => _i174.GetCountriesCubit(gh<_i58.GetCountriesUseCase>()));
    gh.factory<_i175.GetLanguagesUseCase>(
        () => _i175.GetLanguagesUseCase(gh<_i65.LanguageRepository>()));
    gh.factory<_i176.GetMonthsUseCase>(
        () => _i176.GetMonthsUseCase(gh<_i74.MonthRepository>()));
    gh.factory<_i177.GetReminderTypesUseCase>(() =>
        _i177.GetReminderTypesUseCase(gh<_i90.ReminderTypesRepository>()));
    gh.factory<_i178.LanguageCubit>(
        () => _i178.LanguageCubit(gh<_i175.GetLanguagesUseCase>()));
    gh.factory<_i179.MetricUnitsCubit>(() => _i179.MetricUnitsCubit(
          gh<_i140.ClearMetricUnitsUseCase>(),
          gh<_i166.GetAllMetricUnitsUseCase>(),
          gh<_i105.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i180.ModelGenerationSpecificationKeysCubit>(
        () => _i180.ModelGenerationSpecificationKeysCubit(
              gh<_i141.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i167.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i106.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i181.MonthCubit>(() => _i181.MonthCubit(
          gh<_i176.GetMonthsUseCase>(),
          gh<_i107.SaveMonthsUseCase>(),
          gh<_i142.ClearMonthUseCase>(),
        ));
    gh.factory<_i182.PaymentMethodsCubit>(() => _i182.PaymentMethodsCubit(
          gh<_i143.ClearPaymentMethodsUseCase>(),
          gh<_i157.DownloadPaymentMethodsUseCase>(),
          gh<_i108.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i183.PressureUnitsCubit>(() => _i183.PressureUnitsCubit(
          gh<_i22.CountryUseCase>(),
          gh<_i109.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i144.ClearPressureUnitsUseCase>(),
          gh<_i168.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i184.RecurrencePeriodTypesCubit>(
        () => _i184.RecurrencePeriodTypesCubit(
              gh<_i145.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i169.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i110.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i185.ReminderTypeServiceCubit>(
        () => _i185.ReminderTypeServiceCubit(
              gh<_i146.ClearReminderTypeServiceUseCase>(),
              gh<_i170.GetAllReminderTypeServiceUseCase>(),
              gh<_i111.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i186.ReminderTypesCubit>(() => _i186.ReminderTypesCubit(
          gh<_i177.GetReminderTypesUseCase>(),
          gh<_i112.SaveReminderTypesUseCase>(),
          gh<_i147.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i187.RideTypesCubit>(() => _i187.RideTypesCubit(
          gh<_i148.ClearRideTypesUseCase>(),
          gh<_i158.DownloadRideTypesUseCase>(),
          gh<_i113.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i188.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i188.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i118.ServicesDepartmentsRepository>()));
    gh.factory<_i189.SaveServiceTypesInLocalDbUseCase>(() =>
        _i189.SaveServiceTypesInLocalDbUseCase(
            gh<_i116.ServiceTypesRepository>()));
    gh.factory<_i190.SaveWeatherUnitsDataInLocalDb>(() =>
        _i190.SaveWeatherUnitsDataInLocalDb(
            gh<_i122.WeatherUnitsRepository>()));
    gh.factory<_i191.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i191.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i125.WorkflowStatusesRepository>()));
    gh.factory<_i192.ServiceDepartmentsCubit>(
        () => _i192.ServiceDepartmentsCubit(
              gh<_i150.ClearServicesDepartmentsUseCase>(),
              gh<_i172.GetAllServicesDepartmentsUseCase>(),
              gh<_i188.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i193.ServiceTypesCubit>(() => _i193.ServiceTypesCubit(
          gh<_i149.ClearServiceTypesUseCase>(),
          gh<_i171.GetAllServiceTypesUseCase>(),
          gh<_i189.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i194.WeatherUnitsCubit>(() => _i194.WeatherUnitsCubit(
          gh<_i151.ClearWeatherUnitsUseCase>(),
          gh<_i159.DownloadWeatherUnitsUseCase>(),
          gh<_i190.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i195.WorkflowStatusesCubit>(() => _i195.WorkflowStatusesCubit(
          gh<_i152.ClearWorkflowStatusesUseCase>(),
          gh<_i173.GetAllWorkflowStatusesUseCase>(),
          gh<_i191.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    return this;
  }
}
