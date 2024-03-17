// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i127;
import 'package:au2rides/core/repositories/user_repository.dart' as _i176;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i110;
import 'package:au2rides/core/storage/network/auth_interceptor.dart' as _i12;
import 'package:au2rides/features/add_ride_screen/data/data_sources/add_ride_datasource.dart'
    as _i6;
import 'package:au2rides/features/add_ride_screen/data/repositories/add_ride_repository_imp.dart'
    as _i8;
import 'package:au2rides/features/add_ride_screen/domain/repositories/add_ride_repository.dart'
    as _i7;
import 'package:au2rides/features/add_ride_screen/domain/use_cases/add_ride_usecase.dart'
    as _i9;
import 'package:au2rides/features/add_ride_screen/presentation/bloc/add_ride_cubit.dart'
    as _i184;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/data/data_sources/choose_fuel_type_datasource.dart'
    as _i29;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/data/repositories/choose_fuel_types_repository_imp.dart'
    as _i31;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/domain/repositories/choose_fuel_types_repository.dart'
    as _i30;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/domain/use_cases/choose_fuel_types_usecase.dart'
    as _i32;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/presentation/bloc/choose_fuel_types_cubit.dart'
    as _i190;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/data/data_sources/choose_fuel_units_datasource.dart'
    as _i33;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/data/repositories/choose_fuel_units_repository_imp.dart'
    as _i35;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/domain/repositories/choose_fuel_unit_repository.dart'
    as _i34;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/domain/use_cases/choose_fuel_units_usecase.dart'
    as _i36;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/presentation/bloc/choose_fuel_units_cubit.dart'
    as _i191;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/data/data_sources/choose_metric_units_datasource.dart'
    as _i37;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/data/repositories/choose_metric_units_repository_imp.dart'
    as _i39;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/domain/repositories/choose_metric_units_repository.dart'
    as _i38;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/domain/use_cases/choose_metric_units_usecase.dart'
    as _i40;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/presentation/bloc/choose_metric_units_cubit.dart'
    as _i192;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/data/data_sources/choose_model_trim_datasource.dart'
    as _i45;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i47;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/domain/repositories/choose_ride_model_trim_repository.dart'
    as _i46;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/domain/use_cases/choose_ride_model_trim_usecase.dart'
    as _i48;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/presentation/bloc/choose_ride_model_trim_cubit.dart'
    as _i194;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/data_sources/choose_ride_makes_datasource.dart'
    as _i41;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i43;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/domain/repositories/choose_ride_makes_repository.dart'
    as _i42;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/domain/use_cases/choose_ride_makes_usecase.dart'
    as _i44;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/presentation/bloc/choose_ride_makes_cubit.dart'
    as _i193;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/data/data_sources/choose_ride_models_datasource.dart'
    as _i49;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i51;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/domain/repositories/choose_ride_models_repository.dart'
    as _i50;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/domain/use_cases/choose_ride_models_usecase.dart'
    as _i52;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/presentation/bloc/choose_ride_models_cubit.dart'
    as _i195;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart'
    as _i53;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/repositories/choose_ride_type_repository_imp.dart'
    as _i55;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart'
    as _i54;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart'
    as _i56;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/presentation/bloc/choose_ride_type_cubit.dart'
    as _i196;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i99;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i101;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i100;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i102;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i242;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i14;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i58;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i62;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i65;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i68;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i71;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i74;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i77;
import 'package:au2rides/features/download_screen/data/datasources/fuel_measuring_units_datasource.dart'
    as _i80;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i83;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i86;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i118;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i121;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i124;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i128;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i131;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i134;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i137;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i140;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i143;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i166;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i167;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i177;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i180;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i60;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i64;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i67;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i70;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i73;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i76;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i79;
import 'package:au2rides/features/download_screen/data/repositories/fuel_measuring_units_repository.dart'
    as _i82;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i85;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i120;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i123;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i126;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i130;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i133;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i136;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i139;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i142;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i145;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i169;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i171;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i179;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i182;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i75;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i78;
import 'package:au2rides/features/download_screen/domain/repository/fuel_measuring_units_repository.dart'
    as _i81;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i84;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i138;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i141;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i178;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i181;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i57;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i146;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i197;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i147;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i198;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i90;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i148;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i199;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i91;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i149;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i200;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i150;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i201;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i151;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i202;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i94;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i152;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i203;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i153;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/clear_fuel_measuring_units_usecase.dart'
    as _i204;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/get_all_fuel_measuring_units_usecase.dart'
    as _i96;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/save_fuel_measuring_units_in_local_db_usecase.dart'
    as _i154;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i205;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i155;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i206;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i223;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i207;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i234;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i208;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i235;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i209;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i245;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i210;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i224;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i160;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i211;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i236;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i212;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i237;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i213;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i238;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i163;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i214;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i249;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i164;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i215;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i225;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i165;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i216;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i239;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i262;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i217;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i240;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i261;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i218;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i226;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i263;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i219;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i241;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i264;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i183;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i187;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i220;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i221;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i222;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i227;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i228;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i229;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i230;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_measuring_units_cubit/fuel_measuring_units_cubit.dart'
    as _i231;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i232;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i233;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i252;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i253;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i254;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i255;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i256;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i257;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i258;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i259;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i260;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i265;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i266;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i268;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i269;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i10;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i106;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_to_server/add_user_to_server_data_scource.dart'
    as _i11;
import 'package:au2rides/features/enter_user_info/data/repositories/update_user_data/update_user_repository_impl.dart'
    as _i173;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i108;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i175;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i107;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart'
    as _i172;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i174;
import 'package:au2rides/features/enter_user_info/domain/use_cases/add_user_in_local_db_use_case.dart'
    as _i185;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i109;
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart'
    as _i267;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart'
    as _i186;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart'
    as _i272;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i250;
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart'
    as _i98;
import 'package:au2rides/features/gender_screen/data/repositories/get_gender_repository_impl.dart'
    as _i104;
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart'
    as _i103;
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart'
    as _i243;
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart'
    as _i270;
import 'package:au2rides/features/home_screen/data/data_sources/get_rides_datasource.dart'
    as _i105;
import 'package:au2rides/features/home_screen/data/repositories/get_my_rides_repository_impl.dart'
    as _i247;
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart'
    as _i246;
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart'
    as _i248;
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart'
    as _i271;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i115;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i117;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i116;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i244;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i251;
import 'package:au2rides/features/login_screen/data/data_scource/check_user_existance_in_local_db_data_source.dart'
    as _i26;
import 'package:au2rides/features/login_screen/data/data_scource/login_database.dart'
    as _i15;
import 'package:au2rides/features/login_screen/data/repositories/authorize_mobile_number_repository_impl.dart'
    as _i17;
import 'package:au2rides/features/login_screen/data/repositories/check_user_existence_in_local_db_repository_impl.dart'
    as _i28;
import 'package:au2rides/features/login_screen/domain/repositories/authoriza_mobile_number_repository.dart'
    as _i16;
import 'package:au2rides/features/login_screen/domain/repositories/check_user_existence_in_local_db_repository.dart'
    as _i27;
import 'package:au2rides/features/login_screen/domain/use_cases/authorize_mobile_number/authroize_mobile_number_usecase.dart'
    as _i18;
import 'package:au2rides/features/login_screen/presentation/bloc/authorize_mobile_number_cubit/authorize_mobile_number_cubit.dart'
    as _i188;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i111;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i113;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i23;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i112;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i114;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i189;
import 'package:dio/dio.dart' as _i13;
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
    gh.factory<_i6.AddRideDataSource>(() => _i6.AddRideDataSourceImpl());
    gh.factory<_i7.AddRideRepository>(
        () => _i8.AddRideRepositoryImpl(gh<_i6.AddRideDataSource>()));
    gh.factory<_i9.AddRideUseCase>(
        () => _i9.AddRideUseCase(gh<_i7.AddRideRepository>()));
    gh.factory<_i10.AddUserInLocalDbDatasource>(
        () => _i10.AddUserInLocalDbDatasourceImp());
    gh.factory<_i11.AddUserToNetworkDatasource>(
        () => _i11.AddUserToNetworkDatasourceImp());
    gh.factory<_i12.AuthInterceptor>(
        () => _i12.AuthInterceptor(dio: gh<_i13.Dio>()));
    gh.factory<_i14.AuthorizeDataSource>(() => _i14.AuthorizeDataSourceImpl());
    gh.factory<_i15.AuthorizeMobileNumberDatasource>(
        () => _i15.LoginDatasourceImp());
    gh.factory<_i16.AuthorizeMobileNumberRepository>(() =>
        _i17.AuthorizeMobileNumberRepositoryImpl(
            gh<_i15.AuthorizeMobileNumberDatasource>()));
    gh.factory<_i18.AuthorizeMobileNumberUseCase>(() =>
        _i18.AuthorizeMobileNumberUseCase(
            gh<_i16.AuthorizeMobileNumberRepository>()));
    gh.factory<_i19.AuthorizeRepository>(
        () => _i20.AuthorizeRepositoryImpl(gh<_i14.AuthorizeDataSource>()));
    gh.factory<_i21.AuthorizeUseCase>(
        () => _i21.AuthorizeUseCase(gh<_i19.AuthorizeRepository>()));
    gh.factory<_i22.CheckPrimaryDataDataSource>(
        () => _i22.CheckPrimaryDataDataSource());
    gh.factory<_i23.CheckPrimaryDataRepository>(() =>
        _i24.CheckPrimaryDataRepositoryImpl(
            gh<_i22.CheckPrimaryDataDataSource>()));
    gh.factory<_i25.CheckPrimaryDataUseCase>(() =>
        _i25.CheckPrimaryDataUseCase(gh<_i23.CheckPrimaryDataRepository>()));
    gh.factory<_i26.CheckUserExistInLocalDbDatasource>(
        () => _i26.CheckUserExistInLocalDbDatasourceImp());
    gh.factory<_i27.CheckUserExistenceInLocalDbRepository>(() =>
        _i28.CheckUserExistenceInLocalDbRepositoryImpl(
            checkUserExistInLocalDbDatasource:
                gh<_i26.CheckUserExistInLocalDbDatasource>()));
    gh.factory<_i29.ChooseFuelTypeDataSource>(
        () => _i29.ChooseFuelTypeSourceImpl());
    gh.factory<_i30.ChooseFuelTypesRepository>(() =>
        _i31.ChooseFuelTypesRepositoryImpl(
            gh<_i29.ChooseFuelTypeDataSource>()));
    gh.factory<_i32.ChooseFuelTypesUseCase>(() =>
        _i32.ChooseFuelTypesUseCase(gh<_i30.ChooseFuelTypesRepository>()));
    gh.factory<_i33.ChooseFuelUnitsDataSource>(
        () => _i33.ChooseFuelUnitsSourceImpl());
    gh.factory<_i34.ChooseFuelUnitsRepository>(() =>
        _i35.ChooseFuelUnitsRepositoryImpl(
            gh<_i33.ChooseFuelUnitsDataSource>()));
    gh.factory<_i36.ChooseFuelUnitsUseCase>(() =>
        _i36.ChooseFuelUnitsUseCase(gh<_i34.ChooseFuelUnitsRepository>()));
    gh.factory<_i37.ChooseMetricUnitsDataSource>(
        () => _i37.ChooseMetricUnitsSourceImpl());
    gh.factory<_i38.ChooseMetricUnitsRepository>(() =>
        _i39.ChooseMetricUnitsRepositoryImpl(
            gh<_i37.ChooseMetricUnitsDataSource>()));
    gh.factory<_i40.ChooseMetricUnitsUseCase>(() =>
        _i40.ChooseMetricUnitsUseCase(gh<_i38.ChooseMetricUnitsRepository>()));
    gh.factory<_i41.ChooseRideMakesDataSource>(
        () => _i41.ChooseRideMakesSourceImpl());
    gh.factory<_i42.ChooseRideMakesRepository>(() =>
        _i43.ChooseRideMakesRepositoryImpl(
            gh<_i41.ChooseRideMakesDataSource>()));
    gh.factory<_i44.ChooseRideMakesUseCase>(() =>
        _i44.ChooseRideMakesUseCase(gh<_i42.ChooseRideMakesRepository>()));
    gh.factory<_i45.ChooseRideModelTrimDataSource>(
        () => _i45.ChooseRideModelTrimSourceImpl());
    gh.factory<_i46.ChooseRideModelTrimRepository>(() =>
        _i47.ChooseRideModelTrimRepositoryImpl(
            gh<_i45.ChooseRideModelTrimDataSource>()));
    gh.factory<_i48.ChooseRideModelTrimUseCase>(() =>
        _i48.ChooseRideModelTrimUseCase(
            gh<_i46.ChooseRideModelTrimRepository>()));
    gh.factory<_i49.ChooseRideModelsDataSource>(
        () => _i49.ChooseRideModelsSourceImpl());
    gh.factory<_i50.ChooseRideModelsRepository>(() =>
        _i51.ChooseRideModelsRepositoryImpl(
            gh<_i49.ChooseRideModelsDataSource>()));
    gh.factory<_i52.ChooseRideModelsUseCase>(() =>
        _i52.ChooseRideModelsUseCase(gh<_i50.ChooseRideModelsRepository>()));
    gh.factory<_i53.ChooseRideTypeDataSource>(
        () => _i53.ChooseRideTypeSourceImpl());
    gh.factory<_i54.ChooseRideTypeRepository>(() =>
        _i55.ChooseRideTypeRepositoryImpl(gh<_i53.ChooseRideTypeDataSource>()));
    gh.factory<_i56.ChooseRideTypeUseCase>(
        () => _i56.ChooseRideTypeUseCase(gh<_i54.ChooseRideTypeRepository>()));
    gh.factory<_i57.ClearAcquisitionTypesUseCase>(() =>
        _i57.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i58.CountryDataSource>(() => _i58.CountryDataSource());
    gh.factory<_i59.CountryRepository>(
        () => _i60.CountryRepositoryImpl(gh<_i58.CountryDataSource>()));
    gh.factory<_i61.CountryUseCase>(
        () => _i61.CountryUseCase(gh<_i59.CountryRepository>()));
    gh.factory<_i62.CurrencyDataSource>(() => _i62.CurrencyDataSource());
    gh.factory<_i63.CurrencyRepository>(
        () => _i64.CurrencyRepositoryImpl(gh<_i62.CurrencyDataSource>()));
    gh.factory<_i65.DepartmentServiceItemsDataSource>(
        () => _i65.DepartmentServiceItemsDataSource());
    gh.factory<_i66.DepartmentServiceItemsRepository>(() =>
        _i67.DepartmentServiceItemsRepositoryImpl(
            gh<_i65.DepartmentServiceItemsDataSource>()));
    gh.factory<_i68.EngineFuelTypesDataSource>(
        () => _i68.EngineFuelTypesDataSource());
    gh.factory<_i69.EngineFuelTypesRepository>(() =>
        _i70.EngineFuelTypesRepositoryImpl(
            gh<_i68.EngineFuelTypesDataSource>()));
    gh.factory<_i71.EngineTransmissionTypesDataSource>(
        () => _i71.EngineTransmissionTypesDataSource());
    gh.factory<_i72.EngineTransmissionTypesRepository>(() =>
        _i73.EngineTransmissionTypesRepositoryImpl(
            gh<_i71.EngineTransmissionTypesDataSource>()));
    gh.factory<_i74.FuelBrandsDataSource>(() => _i74.FuelBrandsDataSource());
    gh.factory<_i75.FuelBrandsRepository>(
        () => _i76.FuelBrandsRepositoryImpl(gh<_i74.FuelBrandsDataSource>()));
    gh.factory<_i77.FuelConsumptionUnitTypesDataSource>(
        () => _i77.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i78.FuelConsumptionUnitTypesRepository>(() =>
        _i79.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i77.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i80.FuelMeasuringUnitsDataSource>(
        () => _i80.FuelMeasuringUnitsDataSource());
    gh.factory<_i81.FuelMeasuringUnitsRepository>(() =>
        _i82.FuelMeasuringUnitsRepositoryImpl(
            gh<_i80.FuelMeasuringUnitsDataSource>()));
    gh.factory<_i83.FuelOctaneNumberDataSource>(
        () => _i83.FuelOctaneNumberDataSource());
    gh.factory<_i84.FuelOctaneNumberRepository>(() =>
        _i85.FuelOctaneNumberRepositoryImpl(
            gh<_i83.FuelOctaneNumberDataSource>()));
    gh.factory<_i86.GenderDataSource>(() => _i86.GenderDataSource());
    gh.factory<_i87.GenderRepository>(
        () => _i88.GenderRepositoryImpl(gh<_i86.GenderDataSource>()));
    gh.factory<_i89.GetAllAcquisitionTypesUseCase>(() =>
        _i89.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i90.GetAllCurrencyUseCase>(
        () => _i90.GetAllCurrencyUseCase(gh<_i63.CurrencyRepository>()));
    gh.factory<_i91.GetAllDepartmentServiceItemsUseCase>(() =>
        _i91.GetAllDepartmentServiceItemsUseCase(
            gh<_i66.DepartmentServiceItemsRepository>()));
    gh.factory<_i92.GetAllEngineFuelTypesUseCase>(() =>
        _i92.GetAllEngineFuelTypesUseCase(
            gh<_i69.EngineFuelTypesRepository>()));
    gh.factory<_i93.GetAllEngineTransmissionTypesUseCase>(() =>
        _i93.GetAllEngineTransmissionTypesUseCase(
            gh<_i72.EngineTransmissionTypesRepository>()));
    gh.factory<_i94.GetAllFuelBrandUseCase>(
        () => _i94.GetAllFuelBrandUseCase(gh<_i75.FuelBrandsRepository>()));
    gh.factory<_i95.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i95.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i78.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i96.GetAllFuelMeasuringUnitsUseCase>(() =>
        _i96.GetAllFuelMeasuringUnitsUseCase(
            gh<_i81.FuelMeasuringUnitsRepository>()));
    gh.factory<_i97.GetAllFuelOctaneNumberUseCase>(() =>
        _i97.GetAllFuelOctaneNumberUseCase(
            gh<_i84.FuelOctaneNumberRepository>()));
    gh.factory<_i98.GetAllGenderFromLocalDbDatasource>(
        () => _i98.AddUserInLocalDbDatasourceImp());
    gh.factory<_i99.GetCountriesDataSource>(
        () => _i99.GetCountriesDataSource());
    gh.factory<_i100.GetCountriesRepository>(() =>
        _i101.GetCountriesRepositoryImpl(gh<_i99.GetCountriesDataSource>()));
    gh.factory<_i102.GetCountriesUseCase>(
        () => _i102.GetCountriesUseCase(gh<_i100.GetCountriesRepository>()));
    gh.factory<_i103.GetGendersFromLocalDbRepository>(() =>
        _i104.GetGenderFromLocalRepositoryImpl(
            gh<_i98.GetAllGenderFromLocalDbDatasource>()));
    gh.factory<_i105.GetRidesDataSource>(() => _i105.GetRidesDataSource());
    gh.factory<_i106.GetUserDataFromNetworkDatasource>(
        () => _i106.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i107.GetUserInfoFromNetworkRepository>(() =>
        _i108.GetUserInfoRepositoryImpl(
            gh<_i106.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i109.GetUserInfoUseCase>(() =>
        _i109.GetUserInfoUseCase(gh<_i107.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i110.IPrefsManager>(
      () => _i110.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i111.IsDownloadedDataSource>(
        () => _i111.IsDownloadedDataSource());
    gh.factory<_i112.IsDownloadedRepository>(
        () => _i113.IsDownloadedImpl(gh<_i111.IsDownloadedDataSource>()));
    gh.factory<_i114.IsDownloadedUseCase>(
        () => _i114.IsDownloadedUseCase(gh<_i112.IsDownloadedRepository>()));
    gh.factory<_i115.LanguageLocalDatabase>(
        () => _i115.LanguageLocalDatabase());
    gh.factory<_i116.LanguageRepository>(
        () => _i117.LanguageRepositoryImpl(gh<_i115.LanguageLocalDatabase>()));
    gh.factory<_i118.MetricUnitsDataSource>(
        () => _i118.MetricUnitsDataSource());
    gh.factory<_i119.MetricUnitsRepository>(() =>
        _i120.MetricUnitsRepositoryImpl(gh<_i118.MetricUnitsDataSource>()));
    gh.factory<_i121.ModelGenerationSpecificationKeysDataSource>(
        () => _i121.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i122.ModelGenerationSpecificationKeysRepository>(() =>
        _i123.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i121.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i124.MonthDataSource>(() => _i124.MonthDataSource());
    gh.factory<_i125.MonthRepository>(
        () => _i126.MonthRepositoryImpl(gh<_i124.MonthDataSource>()));
    gh.factory<_i127.NetworkInfo>(() => _i127.NetworkInfoImpl.create());
    gh.factory<_i128.PaymentMethodsDataSource>(
        () => _i128.PaymentMethodsDataSource());
    gh.factory<_i129.PaymentMethodsRepository>(() =>
        _i130.PaymentMethodsRepositoryImpl(
            gh<_i128.PaymentMethodsDataSource>()));
    gh.factory<_i131.PressureUnitsDataSource>(
        () => _i131.PressureUnitsDataSource());
    gh.factory<_i132.PressureUnitsRepository>(() =>
        _i133.PressureUnitsRepositoryImpl(gh<_i131.PressureUnitsDataSource>()));
    gh.factory<_i134.RecurrencePeriodTypesDataSource>(
        () => _i134.RecurrencePeriodTypesDataSource());
    gh.factory<_i135.RecurrencePeriodTypesRepository>(() =>
        _i136.RecurrencePeriodTypesRepositoryImpl(
            gh<_i134.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i137.ReminderTypeServiceDataSource>(
        () => _i137.ReminderTypeServiceDataSource());
    gh.factory<_i138.ReminderTypeServiceRepository>(() =>
        _i139.ReminderTypeServiceRepositoryImpl(
            gh<_i137.ReminderTypeServiceDataSource>()));
    gh.factory<_i140.ReminderTypesDataSource>(
        () => _i140.ReminderTypesDataSource());
    gh.factory<_i141.ReminderTypesRepository>(() =>
        _i142.ReminderTypesRepositoryImpl(gh<_i140.ReminderTypesDataSource>()));
    gh.factory<_i143.RideTypesDataSource>(() => _i143.RideTypesDataSource());
    gh.factory<_i144.RideTypesRepository>(
        () => _i145.RideTypesRepositoryImpl(gh<_i143.RideTypesDataSource>()));
    gh.factory<_i146.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i146.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i147.SaveCountriesUseCase>(
        () => _i147.SaveCountriesUseCase(gh<_i59.CountryRepository>()));
    gh.factory<_i148.SaveCurrenciesInLocalDbUseCase>(() =>
        _i148.SaveCurrenciesInLocalDbUseCase(gh<_i63.CurrencyRepository>()));
    gh.factory<_i149.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i149.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i66.DepartmentServiceItemsRepository>()));
    gh.factory<_i150.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i150.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i69.EngineFuelTypesRepository>()));
    gh.factory<_i151.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i151.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i72.EngineTransmissionTypesRepository>()));
    gh.factory<_i152.SaveFuelBrandInLocalDbUseCase>(() =>
        _i152.SaveFuelBrandInLocalDbUseCase(gh<_i75.FuelBrandsRepository>()));
    gh.factory<_i153.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i153.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i78.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i154.SaveFuelMeasuringUnitsInLocalDbUseCase>(() =>
        _i154.SaveFuelMeasuringUnitsInLocalDbUseCase(
            gh<_i81.FuelMeasuringUnitsRepository>()));
    gh.factory<_i155.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i155.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i84.FuelOctaneNumberRepository>()));
    gh.factory<_i156.SaveGenderDataInLocalDb>(
        () => _i156.SaveGenderDataInLocalDb(gh<_i87.GenderRepository>()));
    gh.factory<_i157.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i157.SaveMetricUnitsInLocalDbUseCase(
            gh<_i119.MetricUnitsRepository>()));
    gh.factory<_i158.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i158.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i122.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i159.SaveMonthsUseCase>(
        () => _i159.SaveMonthsUseCase(gh<_i125.MonthRepository>()));
    gh.factory<_i160.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i160.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i129.PaymentMethodsRepository>()));
    gh.factory<_i161.SavePressureUnitsInLocalDbUseCase>(() =>
        _i161.SavePressureUnitsInLocalDbUseCase(
            gh<_i132.PressureUnitsRepository>()));
    gh.factory<_i162.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i162.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i135.RecurrencePeriodTypesRepository>()));
    gh.factory<_i163.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i163.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i138.ReminderTypeServiceRepository>()));
    gh.factory<_i164.SaveReminderTypesUseCase>(() =>
        _i164.SaveReminderTypesUseCase(gh<_i141.ReminderTypesRepository>()));
    gh.factory<_i165.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i165.SaveRideTypesDataInLocalDbUseCase(
            gh<_i144.RideTypesRepository>()));
    gh.factory<_i166.ServiceDepartmentsDataSource>(
        () => _i166.ServiceDepartmentsDataSource());
    gh.factory<_i167.ServiceTypesDataSource>(
        () => _i167.ServiceTypesDataSource());
    gh.factory<_i168.ServiceTypesRepository>(() =>
        _i169.ServiceTypesRepositoryImpl(gh<_i167.ServiceTypesDataSource>()));
    gh.factory<_i170.ServicesDepartmentsRepository>(() =>
        _i171.ServiceDepartmentsRepositoryImpl(
            gh<_i166.ServiceDepartmentsDataSource>()));
    gh.factory<_i172.UpdateUserRepository>(() =>
        _i173.UpdateUserRepositoryImpl(gh<_i11.AddUserToNetworkDatasource>()));
    gh.factory<_i174.UserAccountRepository>(
        () => _i175.UserRepositoryImpl(gh<_i10.AddUserInLocalDbDatasource>()));
    gh.singleton<_i176.UserRepository>(_i176.UserRepository.create(
        gh<_i110.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i177.WeatherUnitsDataSource>(
        () => _i177.WeatherUnitsDataSource());
    gh.factory<_i178.WeatherUnitsRepository>(() =>
        _i179.WeatherUnitsRepositoryImpl(gh<_i177.WeatherUnitsDataSource>()));
    gh.factory<_i180.WorkflowStatusesDataSource>(
        () => _i180.WorkflowStatusesDataSource());
    gh.factory<_i181.WorkflowStatusesRepository>(() =>
        _i182.WorkflowStatusesRepositoryImpl(
            gh<_i180.WorkflowStatusesDataSource>()));
    gh.factory<_i183.AcquisitionTypesCubit>(() => _i183.AcquisitionTypesCubit(
          gh<_i57.ClearAcquisitionTypesUseCase>(),
          gh<_i89.GetAllAcquisitionTypesUseCase>(),
          gh<_i146.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i184.AddRideCubit>(
        () => _i184.AddRideCubit(gh<_i9.AddRideUseCase>()));
    gh.factory<_i185.AddUserInLocalDbUseCase>(
        () => _i185.AddUserInLocalDbUseCase(gh<_i174.UserAccountRepository>()));
    gh.factory<_i186.AddUserToLocalDbCubit>(
        () => _i186.AddUserToLocalDbCubit(gh<_i185.AddUserInLocalDbUseCase>()));
    gh.factory<_i187.AuthorizeCubit>(
        () => _i187.AuthorizeCubit(gh<_i21.AuthorizeUseCase>()));
    gh.factory<_i188.AuthorizeMobileNumberCubit>(() =>
        _i188.AuthorizeMobileNumberCubit(
            gh<_i18.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i189.CheckPrimaryDataCubit>(() => _i189.CheckPrimaryDataCubit(
          gh<_i25.CheckPrimaryDataUseCase>(),
          gh<_i114.IsDownloadedUseCase>(),
        ));
    gh.factory<_i190.ChooseFuelTypesCubit>(
        () => _i190.ChooseFuelTypesCubit(gh<_i32.ChooseFuelTypesUseCase>()));
    gh.factory<_i191.ChooseFuelUnitsCubit>(
        () => _i191.ChooseFuelUnitsCubit(gh<_i36.ChooseFuelUnitsUseCase>()));
    gh.factory<_i192.ChooseMetricUnitsCubit>(() =>
        _i192.ChooseMetricUnitsCubit(gh<_i40.ChooseMetricUnitsUseCase>()));
    gh.factory<_i193.ChooseRideMakesCubit>(
        () => _i193.ChooseRideMakesCubit(gh<_i44.ChooseRideMakesUseCase>()));
    gh.factory<_i194.ChooseRideModelTrimCubit>(() =>
        _i194.ChooseRideModelTrimCubit(gh<_i48.ChooseRideModelTrimUseCase>()));
    gh.factory<_i195.ChooseRideModelsCubit>(
        () => _i195.ChooseRideModelsCubit(gh<_i52.ChooseRideModelsUseCase>()));
    gh.factory<_i196.ChooseRideTypeCubit>(
        () => _i196.ChooseRideTypeCubit(gh<_i56.ChooseRideTypeUseCase>()));
    gh.factory<_i197.ClearCountryUseCase>(
        () => _i197.ClearCountryUseCase(gh<_i59.CountryRepository>()));
    gh.factory<_i198.ClearCurrencyUseCase>(
        () => _i198.ClearCurrencyUseCase(gh<_i63.CurrencyRepository>()));
    gh.factory<_i199.ClearDepartmentServiceItemsUseCase>(() =>
        _i199.ClearDepartmentServiceItemsUseCase(
            gh<_i66.DepartmentServiceItemsRepository>()));
    gh.factory<_i200.ClearEngineFuelTypesUseCase>(() =>
        _i200.ClearEngineFuelTypesUseCase(
            gh<_i69.EngineFuelTypesRepository>()));
    gh.factory<_i201.ClearEngineTransmissionTypesUseCase>(() =>
        _i201.ClearEngineTransmissionTypesUseCase(
            gh<_i72.EngineTransmissionTypesRepository>()));
    gh.factory<_i202.ClearFuelBrandsUseCase>(
        () => _i202.ClearFuelBrandsUseCase(gh<_i75.FuelBrandsRepository>()));
    gh.factory<_i203.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i203.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i78.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i204.ClearFuelMeasuringUnitsUseCase>(() =>
        _i204.ClearFuelMeasuringUnitsUseCase(
            gh<_i81.FuelMeasuringUnitsRepository>()));
    gh.factory<_i205.ClearFuelOctaneNumberUseCase>(() =>
        _i205.ClearFuelOctaneNumberUseCase(
            gh<_i84.FuelOctaneNumberRepository>()));
    gh.factory<_i206.ClearGenderUseCase>(
        () => _i206.ClearGenderUseCase(gh<_i87.GenderRepository>()));
    gh.factory<_i207.ClearMetricUnitsUseCase>(
        () => _i207.ClearMetricUnitsUseCase(gh<_i119.MetricUnitsRepository>()));
    gh.factory<_i208.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i208.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i122.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i209.ClearMonthUseCase>(
        () => _i209.ClearMonthUseCase(gh<_i125.MonthRepository>()));
    gh.factory<_i210.ClearPaymentMethodsUseCase>(() =>
        _i210.ClearPaymentMethodsUseCase(gh<_i129.PaymentMethodsRepository>()));
    gh.factory<_i211.ClearPressureUnitsUseCase>(() =>
        _i211.ClearPressureUnitsUseCase(gh<_i132.PressureUnitsRepository>()));
    gh.factory<_i212.ClearRecurrencePeriodTypesUseCase>(() =>
        _i212.ClearRecurrencePeriodTypesUseCase(
            gh<_i135.RecurrencePeriodTypesRepository>()));
    gh.factory<_i213.ClearReminderTypeServiceUseCase>(() =>
        _i213.ClearReminderTypeServiceUseCase(
            gh<_i138.ReminderTypeServiceRepository>()));
    gh.factory<_i214.ClearReminderTypeUseCase>(() =>
        _i214.ClearReminderTypeUseCase(gh<_i141.ReminderTypesRepository>()));
    gh.factory<_i215.ClearRideTypesUseCase>(
        () => _i215.ClearRideTypesUseCase(gh<_i144.RideTypesRepository>()));
    gh.factory<_i216.ClearServiceTypesUseCase>(() =>
        _i216.ClearServiceTypesUseCase(gh<_i168.ServiceTypesRepository>()));
    gh.factory<_i217.ClearServicesDepartmentsUseCase>(() =>
        _i217.ClearServicesDepartmentsUseCase(
            gh<_i170.ServicesDepartmentsRepository>()));
    gh.factory<_i218.ClearWeatherUnitsUseCase>(() =>
        _i218.ClearWeatherUnitsUseCase(gh<_i178.WeatherUnitsRepository>()));
    gh.factory<_i219.ClearWorkflowStatusesUseCase>(() =>
        _i219.ClearWorkflowStatusesUseCase(
            gh<_i181.WorkflowStatusesRepository>()));
    gh.factory<_i220.CountryCubit>(() => _i220.CountryCubit(
          gh<_i61.CountryUseCase>(),
          gh<_i147.SaveCountriesUseCase>(),
          gh<_i197.ClearCountryUseCase>(),
        ));
    gh.factory<_i221.CurrencyCubit>(() => _i221.CurrencyCubit(
          gh<_i198.ClearCurrencyUseCase>(),
          gh<_i90.GetAllCurrencyUseCase>(),
          gh<_i148.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i222.DepartmentServiceItemsCubit>(
        () => _i222.DepartmentServiceItemsCubit(
              gh<_i199.ClearDepartmentServiceItemsUseCase>(),
              gh<_i91.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i149.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i223.DownloadGenderUseCase>(
        () => _i223.DownloadGenderUseCase(gh<_i87.GenderRepository>()));
    gh.factory<_i224.DownloadPaymentMethodsUseCase>(() =>
        _i224.DownloadPaymentMethodsUseCase(
            gh<_i129.PaymentMethodsRepository>()));
    gh.factory<_i225.DownloadRideTypesUseCase>(
        () => _i225.DownloadRideTypesUseCase(gh<_i144.RideTypesRepository>()));
    gh.factory<_i226.DownloadWeatherUnitsUseCase>(() =>
        _i226.DownloadWeatherUnitsUseCase(gh<_i178.WeatherUnitsRepository>()));
    gh.factory<_i227.EngineFuelTypesCubit>(() => _i227.EngineFuelTypesCubit(
          gh<_i200.ClearEngineFuelTypesUseCase>(),
          gh<_i92.GetAllEngineFuelTypesUseCase>(),
          gh<_i150.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i228.EngineTransmissionTypesCubit>(
        () => _i228.EngineTransmissionTypesCubit(
              gh<_i201.ClearEngineTransmissionTypesUseCase>(),
              gh<_i93.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i151.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i229.FuelBrandsCubit>(() => _i229.FuelBrandsCubit(
          gh<_i202.ClearFuelBrandsUseCase>(),
          gh<_i94.GetAllFuelBrandUseCase>(),
          gh<_i152.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i230.FuelConsumptionUnitTypesCubit>(
        () => _i230.FuelConsumptionUnitTypesCubit(
              gh<_i203.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i95.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i153.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i231.FuelMeasuringUnitsCubit>(
        () => _i231.FuelMeasuringUnitsCubit(
              gh<_i204.ClearFuelMeasuringUnitsUseCase>(),
              gh<_i96.GetAllFuelMeasuringUnitsUseCase>(),
              gh<_i154.SaveFuelMeasuringUnitsInLocalDbUseCase>(),
            ));
    gh.factory<_i232.FuelOctaneNumberCubit>(() => _i232.FuelOctaneNumberCubit(
          gh<_i205.ClearFuelOctaneNumberUseCase>(),
          gh<_i97.GetAllFuelOctaneNumberUseCase>(),
          gh<_i155.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i233.GenderCubit>(() => _i233.GenderCubit(
          gh<_i206.ClearGenderUseCase>(),
          gh<_i223.DownloadGenderUseCase>(),
          gh<_i156.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i234.GetAllMetricUnitsUseCase>(() =>
        _i234.GetAllMetricUnitsUseCase(gh<_i119.MetricUnitsRepository>()));
    gh.factory<_i235.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i235.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i122.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i236.GetAllPressureUnitsUseCase>(() =>
        _i236.GetAllPressureUnitsUseCase(gh<_i132.PressureUnitsRepository>()));
    gh.factory<_i237.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i237.GetAllRecurrencePeriodTypesUseCase(
            gh<_i135.RecurrencePeriodTypesRepository>()));
    gh.factory<_i238.GetAllReminderTypeServiceUseCase>(() =>
        _i238.GetAllReminderTypeServiceUseCase(
            gh<_i138.ReminderTypeServiceRepository>()));
    gh.factory<_i239.GetAllServiceTypesUseCase>(() =>
        _i239.GetAllServiceTypesUseCase(gh<_i168.ServiceTypesRepository>()));
    gh.factory<_i240.GetAllServicesDepartmentsUseCase>(() =>
        _i240.GetAllServicesDepartmentsUseCase(
            gh<_i170.ServicesDepartmentsRepository>()));
    gh.factory<_i241.GetAllWorkflowStatusesUseCase>(() =>
        _i241.GetAllWorkflowStatusesUseCase(
            gh<_i181.WorkflowStatusesRepository>()));
    gh.factory<_i242.GetCountriesCubit>(
        () => _i242.GetCountriesCubit(gh<_i102.GetCountriesUseCase>()));
    gh.factory<_i243.GetGenderFromLocalDbUseCase>(() =>
        _i243.GetGenderFromLocalDbUseCase(
            gh<_i103.GetGendersFromLocalDbRepository>()));
    gh.factory<_i244.GetLanguagesUseCase>(
        () => _i244.GetLanguagesUseCase(gh<_i116.LanguageRepository>()));
    gh.factory<_i245.GetMonthsUseCase>(
        () => _i245.GetMonthsUseCase(gh<_i125.MonthRepository>()));
    gh.factory<_i246.GetMyRidesRepository>(
        () => _i247.GetMyRidesRepositoryImpl(gh<_i105.GetRidesDataSource>()));
    gh.factory<_i248.GetMyRidesUseCase>(
        () => _i248.GetMyRidesUseCase(gh<_i246.GetMyRidesRepository>()));
    gh.factory<_i249.GetReminderTypesUseCase>(() =>
        _i249.GetReminderTypesUseCase(gh<_i141.ReminderTypesRepository>()));
    gh.factory<_i250.GetUserInfoCubit>(
        () => _i250.GetUserInfoCubit(gh<_i109.GetUserInfoUseCase>()));
    gh.factory<_i251.LanguageCubit>(
        () => _i251.LanguageCubit(gh<_i244.GetLanguagesUseCase>()));
    gh.factory<_i252.MetricUnitsCubit>(() => _i252.MetricUnitsCubit(
          gh<_i207.ClearMetricUnitsUseCase>(),
          gh<_i234.GetAllMetricUnitsUseCase>(),
          gh<_i157.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i253.ModelGenerationSpecificationKeysCubit>(
        () => _i253.ModelGenerationSpecificationKeysCubit(
              gh<_i208.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i235.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i158.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i254.MonthCubit>(() => _i254.MonthCubit(
          gh<_i245.GetMonthsUseCase>(),
          gh<_i159.SaveMonthsUseCase>(),
          gh<_i209.ClearMonthUseCase>(),
        ));
    gh.factory<_i255.PaymentMethodsCubit>(() => _i255.PaymentMethodsCubit(
          gh<_i210.ClearPaymentMethodsUseCase>(),
          gh<_i224.DownloadPaymentMethodsUseCase>(),
          gh<_i160.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i256.PressureUnitsCubit>(() => _i256.PressureUnitsCubit(
          gh<_i61.CountryUseCase>(),
          gh<_i161.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i211.ClearPressureUnitsUseCase>(),
          gh<_i236.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i257.RecurrencePeriodTypesCubit>(
        () => _i257.RecurrencePeriodTypesCubit(
              gh<_i212.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i237.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i162.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i258.ReminderTypeServiceCubit>(
        () => _i258.ReminderTypeServiceCubit(
              gh<_i213.ClearReminderTypeServiceUseCase>(),
              gh<_i238.GetAllReminderTypeServiceUseCase>(),
              gh<_i163.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i259.ReminderTypesCubit>(() => _i259.ReminderTypesCubit(
          gh<_i249.GetReminderTypesUseCase>(),
          gh<_i164.SaveReminderTypesUseCase>(),
          gh<_i214.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i260.RideTypesCubit>(() => _i260.RideTypesCubit(
          gh<_i215.ClearRideTypesUseCase>(),
          gh<_i225.DownloadRideTypesUseCase>(),
          gh<_i165.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i261.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i261.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i170.ServicesDepartmentsRepository>()));
    gh.factory<_i262.SaveServiceTypesInLocalDbUseCase>(() =>
        _i262.SaveServiceTypesInLocalDbUseCase(
            gh<_i168.ServiceTypesRepository>()));
    gh.factory<_i263.SaveWeatherUnitsDataInLocalDb>(() =>
        _i263.SaveWeatherUnitsDataInLocalDb(
            gh<_i178.WeatherUnitsRepository>()));
    gh.factory<_i264.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i264.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i181.WorkflowStatusesRepository>()));
    gh.factory<_i265.ServiceDepartmentsCubit>(
        () => _i265.ServiceDepartmentsCubit(
              gh<_i217.ClearServicesDepartmentsUseCase>(),
              gh<_i240.GetAllServicesDepartmentsUseCase>(),
              gh<_i261.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i266.ServiceTypesCubit>(() => _i266.ServiceTypesCubit(
          gh<_i216.ClearServiceTypesUseCase>(),
          gh<_i239.GetAllServiceTypesUseCase>(),
          gh<_i262.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i267.UpdateUserDataUseCase>(
        () => _i267.UpdateUserDataUseCase(gh<_i172.UpdateUserRepository>()));
    gh.factory<_i268.WeatherUnitsCubit>(() => _i268.WeatherUnitsCubit(
          gh<_i218.ClearWeatherUnitsUseCase>(),
          gh<_i226.DownloadWeatherUnitsUseCase>(),
          gh<_i263.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i269.WorkflowStatusesCubit>(() => _i269.WorkflowStatusesCubit(
          gh<_i219.ClearWorkflowStatusesUseCase>(),
          gh<_i241.GetAllWorkflowStatusesUseCase>(),
          gh<_i264.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    gh.factory<_i270.GetGenderCubit>(
        () => _i270.GetGenderCubit(gh<_i243.GetGenderFromLocalDbUseCase>()));
    gh.factory<_i271.GetMyRidesCubit>(
        () => _i271.GetMyRidesCubit(gh<_i248.GetMyRidesUseCase>()));
    gh.factory<_i272.UpdateUserDataCubit>(
        () => _i272.UpdateUserDataCubit(gh<_i267.UpdateUserDataUseCase>()));
    return this;
  }
}
