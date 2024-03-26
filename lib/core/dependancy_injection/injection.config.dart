// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i135;
import 'package:au2rides/core/repositories/user_repository.dart' as _i184;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i118;
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
    as _i192;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/data/data_sources/choose_fuel_consumption_units_datasource.dart'
    as _i33;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/data/repositories/choose_fuel_consumption_units_repository_imp.dart'
    as _i35;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/domain/repositories/choose_fuel_consumption_units_repository.dart'
    as _i34;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/domain/use_cases/choose_fuel_consumption_units_usecase.dart'
    as _i36;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_consumption_units_screen/presentation/bloc/choose_fuel_consumption_units_cubit.dart'
    as _i199;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/data/data_sources/choose_fuel_type_datasource.dart'
    as _i37;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/data/repositories/choose_fuel_types_repository_imp.dart'
    as _i39;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/domain/repositories/choose_fuel_types_repository.dart'
    as _i38;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/domain/use_cases/choose_fuel_types_usecase.dart'
    as _i40;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_type_screen/presentation/bloc/choose_fuel_types_cubit.dart'
    as _i200;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/data/data_sources/choose_fuel_units_datasource.dart'
    as _i41;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/data/repositories/choose_fuel_units_repository_imp.dart'
    as _i43;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/domain/repositories/choose_fuel_unit_repository.dart'
    as _i42;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/domain/use_cases/choose_fuel_units_usecase.dart'
    as _i44;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_fuel_units_screen/presentation/bloc/choose_fuel_units_cubit.dart'
    as _i201;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/data/data_sources/choose_metric_units_datasource.dart'
    as _i45;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/data/repositories/choose_metric_units_repository_imp.dart'
    as _i47;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/domain/repositories/choose_metric_units_repository.dart'
    as _i46;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/domain/use_cases/choose_metric_units_usecase.dart'
    as _i48;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_metric_units_screen/presentation/bloc/choose_metric_units_cubit.dart'
    as _i202;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/data/data_sources/choose_model_trim_datasource.dart'
    as _i53;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i55;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/domain/repositories/choose_ride_model_trim_repository.dart'
    as _i54;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/domain/use_cases/choose_ride_model_trim_usecase.dart'
    as _i56;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_model_trim_screen/presentation/bloc/choose_ride_model_trim_cubit.dart'
    as _i204;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/data_sources/choose_ride_makes_datasource.dart'
    as _i49;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i51;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/domain/repositories/choose_ride_makes_repository.dart'
    as _i50;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/domain/use_cases/choose_ride_makes_usecase.dart'
    as _i52;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_makes_screen/presentation/bloc/choose_ride_makes_cubit.dart'
    as _i203;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/data/data_sources/choose_ride_models_datasource.dart'
    as _i57;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/data/repositories/choose_ride_makes_repository_imp.dart'
    as _i59;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/domain/repositories/choose_ride_models_repository.dart'
    as _i58;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/domain/use_cases/choose_ride_models_usecase.dart'
    as _i60;
import 'package:au2rides/features/add_ride_screen/presentation/screen/choose_ride_models_screen/presentation/bloc/choose_ride_models_cubit.dart'
    as _i205;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart'
    as _i61;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/repositories/choose_ride_type_repository_imp.dart'
    as _i63;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart'
    as _i62;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart'
    as _i64;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/presentation/bloc/choose_ride_type_cubit.dart'
    as _i206;
import 'package:au2rides/features/choose_currency_screen/data/data_sources/choose_currency_datasource.dart'
    as _i29;
import 'package:au2rides/features/choose_currency_screen/data/repositories/choose_currency_repository_imp.dart'
    as _i31;
import 'package:au2rides/features/choose_currency_screen/domain/repositories/currency_repository.dart'
    as _i30;
import 'package:au2rides/features/choose_currency_screen/domain/use_cases/choose_currencies_usecase.dart'
    as _i32;
import 'package:au2rides/features/choose_currency_screen/presentation/bloc/choose_currency_cubit.dart'
    as _i198;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i107;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i109;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i108;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i110;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i252;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i14;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i66;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i70;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i73;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i76;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i79;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i82;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i85;
import 'package:au2rides/features/download_screen/data/datasources/fuel_measuring_units_datasource.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i91;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i94;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i126;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i129;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i132;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i136;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i139;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i142;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i145;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i148;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i151;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i174;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i175;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i185;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i188;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i68;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i72;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i75;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i78;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i81;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i84;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i87;
import 'package:au2rides/features/download_screen/data/repositories/fuel_measuring_units_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i96;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i128;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i131;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i134;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i138;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i141;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i144;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i147;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i150;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i153;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i177;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i179;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i187;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i190;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i67;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i71;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i74;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i77;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i80;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i83;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/repository/fuel_measuring_units_repository.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i130;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i133;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i137;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i140;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i143;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i146;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i149;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i152;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i178;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i186;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i189;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i154;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i207;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i155;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i208;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i209;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i99;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i210;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i100;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i211;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i212;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i102;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i160;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i213;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/clear_fuel_measuring_units_usecase.dart'
    as _i214;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/get_all_fuel_measuring_units_usecase.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/save_fuel_measuring_units_in_local_db_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i215;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i163;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i216;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i233;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i164;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i217;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i244;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i165;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i218;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i245;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i166;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i219;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i255;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i220;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i234;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i221;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i246;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i222;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i247;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i223;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i248;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i171;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i224;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i259;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i172;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i225;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i235;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i226;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i249;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i272;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i227;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i250;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i271;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i228;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i236;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i273;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i229;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i251;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i274;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i191;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i195;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i230;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i231;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i232;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i237;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i238;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i239;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i240;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_measuring_units_cubit/fuel_measuring_units_cubit.dart'
    as _i241;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i242;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i243;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i262;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i263;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i264;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i265;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i266;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i267;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i268;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i269;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i270;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i275;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i276;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i278;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i279;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i10;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i114;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_to_server/add_user_to_server_data_scource.dart'
    as _i11;
import 'package:au2rides/features/enter_user_info/data/repositories/update_user_data/update_user_repository_impl.dart'
    as _i181;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i116;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i183;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i115;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart'
    as _i180;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i182;
import 'package:au2rides/features/enter_user_info/domain/use_cases/add_user_in_local_db_use_case.dart'
    as _i193;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i117;
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart'
    as _i277;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart'
    as _i194;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart'
    as _i282;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i260;
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart'
    as _i106;
import 'package:au2rides/features/gender_screen/data/repositories/get_gender_repository_impl.dart'
    as _i112;
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart'
    as _i111;
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart'
    as _i253;
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart'
    as _i280;
import 'package:au2rides/features/home_screen/data/data_sources/get_rides_datasource.dart'
    as _i113;
import 'package:au2rides/features/home_screen/data/repositories/get_my_rides_repository_impl.dart'
    as _i257;
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart'
    as _i256;
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart'
    as _i258;
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart'
    as _i281;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i123;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i125;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i124;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i254;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i261;
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
    as _i196;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i119;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i121;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i23;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i120;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i122;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i197;
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
    gh.factory<_i29.ChooseCurrencyDataSource>(
        () => _i29.ChooseFuelTypeSourceImpl());
    gh.factory<_i30.ChooseCurrencyRepository>(() =>
        _i31.ChooseCurrencyRepositoryImpl(gh<_i29.ChooseCurrencyDataSource>()));
    gh.factory<_i32.ChooseCurrencyUseCase>(
        () => _i32.ChooseCurrencyUseCase(gh<_i30.ChooseCurrencyRepository>()));
    gh.factory<_i33.ChooseFuelConsumptionUnitDataSource>(
        () => _i33.ChooseFuelTypeSourceImpl());
    gh.factory<_i34.ChooseFuelConsumptionUnitsRepository>(() =>
        _i35.ChooseFuelConsumptionUnitsRepositoryImpl(
            gh<_i33.ChooseFuelConsumptionUnitDataSource>()));
    gh.factory<_i36.ChooseFuelConsumptionUnitsUseCase>(() =>
        _i36.ChooseFuelConsumptionUnitsUseCase(
            gh<_i34.ChooseFuelConsumptionUnitsRepository>()));
    gh.factory<_i37.ChooseFuelTypeDataSource>(
        () => _i37.ChooseFuelTypeSourceImpl());
    gh.factory<_i38.ChooseFuelTypesRepository>(() =>
        _i39.ChooseFuelTypesRepositoryImpl(
            gh<_i37.ChooseFuelTypeDataSource>()));
    gh.factory<_i40.ChooseFuelTypesUseCase>(() =>
        _i40.ChooseFuelTypesUseCase(gh<_i38.ChooseFuelTypesRepository>()));
    gh.factory<_i41.ChooseFuelUnitsDataSource>(
        () => _i41.ChooseFuelUnitsSourceImpl());
    gh.factory<_i42.ChooseFuelUnitsRepository>(() =>
        _i43.ChooseFuelUnitsRepositoryImpl(
            gh<_i41.ChooseFuelUnitsDataSource>()));
    gh.factory<_i44.ChooseFuelUnitsUseCase>(() =>
        _i44.ChooseFuelUnitsUseCase(gh<_i42.ChooseFuelUnitsRepository>()));
    gh.factory<_i45.ChooseMetricUnitsDataSource>(
        () => _i45.ChooseMetricUnitsSourceImpl());
    gh.factory<_i46.ChooseMetricUnitsRepository>(() =>
        _i47.ChooseMetricUnitsRepositoryImpl(
            gh<_i45.ChooseMetricUnitsDataSource>()));
    gh.factory<_i48.ChooseMetricUnitsUseCase>(() =>
        _i48.ChooseMetricUnitsUseCase(gh<_i46.ChooseMetricUnitsRepository>()));
    gh.factory<_i49.ChooseRideMakesDataSource>(
        () => _i49.ChooseRideMakesSourceImpl());
    gh.factory<_i50.ChooseRideMakesRepository>(() =>
        _i51.ChooseRideMakesRepositoryImpl(
            gh<_i49.ChooseRideMakesDataSource>()));
    gh.factory<_i52.ChooseRideMakesUseCase>(() =>
        _i52.ChooseRideMakesUseCase(gh<_i50.ChooseRideMakesRepository>()));
    gh.factory<_i53.ChooseRideModelTrimDataSource>(
        () => _i53.ChooseRideModelTrimSourceImpl());
    gh.factory<_i54.ChooseRideModelTrimRepository>(() =>
        _i55.ChooseRideModelTrimRepositoryImpl(
            gh<_i53.ChooseRideModelTrimDataSource>()));
    gh.factory<_i56.ChooseRideModelTrimUseCase>(() =>
        _i56.ChooseRideModelTrimUseCase(
            gh<_i54.ChooseRideModelTrimRepository>()));
    gh.factory<_i57.ChooseRideModelsDataSource>(
        () => _i57.ChooseRideModelsSourceImpl());
    gh.factory<_i58.ChooseRideModelsRepository>(() =>
        _i59.ChooseRideModelsRepositoryImpl(
            gh<_i57.ChooseRideModelsDataSource>()));
    gh.factory<_i60.ChooseRideModelsUseCase>(() =>
        _i60.ChooseRideModelsUseCase(gh<_i58.ChooseRideModelsRepository>()));
    gh.factory<_i61.ChooseRideTypeDataSource>(
        () => _i61.ChooseRideTypeSourceImpl());
    gh.factory<_i62.ChooseRideTypeRepository>(() =>
        _i63.ChooseRideTypeRepositoryImpl(gh<_i61.ChooseRideTypeDataSource>()));
    gh.factory<_i64.ChooseRideTypeUseCase>(
        () => _i64.ChooseRideTypeUseCase(gh<_i62.ChooseRideTypeRepository>()));
    gh.factory<_i65.ClearAcquisitionTypesUseCase>(() =>
        _i65.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i66.CountryDataSource>(() => _i66.CountryDataSource());
    gh.factory<_i67.CountryRepository>(
        () => _i68.CountryRepositoryImpl(gh<_i66.CountryDataSource>()));
    gh.factory<_i69.CountryUseCase>(
        () => _i69.CountryUseCase(gh<_i67.CountryRepository>()));
    gh.factory<_i70.CurrencyDataSource>(() => _i70.CurrencyDataSource());
    gh.factory<_i71.CurrencyRepository>(
        () => _i72.CurrencyRepositoryImpl(gh<_i70.CurrencyDataSource>()));
    gh.factory<_i73.DepartmentServiceItemsDataSource>(
        () => _i73.DepartmentServiceItemsDataSource());
    gh.factory<_i74.DepartmentServiceItemsRepository>(() =>
        _i75.DepartmentServiceItemsRepositoryImpl(
            gh<_i73.DepartmentServiceItemsDataSource>()));
    gh.factory<_i76.EngineFuelTypesDataSource>(
        () => _i76.EngineFuelTypesDataSource());
    gh.factory<_i77.EngineFuelTypesRepository>(() =>
        _i78.EngineFuelTypesRepositoryImpl(
            gh<_i76.EngineFuelTypesDataSource>()));
    gh.factory<_i79.EngineTransmissionTypesDataSource>(
        () => _i79.EngineTransmissionTypesDataSource());
    gh.factory<_i80.EngineTransmissionTypesRepository>(() =>
        _i81.EngineTransmissionTypesRepositoryImpl(
            gh<_i79.EngineTransmissionTypesDataSource>()));
    gh.factory<_i82.FuelBrandsDataSource>(() => _i82.FuelBrandsDataSource());
    gh.factory<_i83.FuelBrandsRepository>(
        () => _i84.FuelBrandsRepositoryImpl(gh<_i82.FuelBrandsDataSource>()));
    gh.factory<_i85.FuelConsumptionUnitTypesDataSource>(
        () => _i85.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i86.FuelConsumptionUnitTypesRepository>(() =>
        _i87.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i85.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i88.FuelMeasuringUnitsDataSource>(
        () => _i88.FuelMeasuringUnitsDataSource());
    gh.factory<_i89.FuelMeasuringUnitsRepository>(() =>
        _i90.FuelMeasuringUnitsRepositoryImpl(
            gh<_i88.FuelMeasuringUnitsDataSource>()));
    gh.factory<_i91.FuelOctaneNumberDataSource>(
        () => _i91.FuelOctaneNumberDataSource());
    gh.factory<_i92.FuelOctaneNumberRepository>(() =>
        _i93.FuelOctaneNumberRepositoryImpl(
            gh<_i91.FuelOctaneNumberDataSource>()));
    gh.factory<_i94.GenderDataSource>(() => _i94.GenderDataSource());
    gh.factory<_i95.GenderRepository>(
        () => _i96.GenderRepositoryImpl(gh<_i94.GenderDataSource>()));
    gh.factory<_i97.GetAllAcquisitionTypesUseCase>(() =>
        _i97.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i98.GetAllCurrencyUseCase>(
        () => _i98.GetAllCurrencyUseCase(gh<_i71.CurrencyRepository>()));
    gh.factory<_i99.GetAllDepartmentServiceItemsUseCase>(() =>
        _i99.GetAllDepartmentServiceItemsUseCase(
            gh<_i74.DepartmentServiceItemsRepository>()));
    gh.factory<_i100.GetAllEngineFuelTypesUseCase>(() =>
        _i100.GetAllEngineFuelTypesUseCase(
            gh<_i77.EngineFuelTypesRepository>()));
    gh.factory<_i101.GetAllEngineTransmissionTypesUseCase>(() =>
        _i101.GetAllEngineTransmissionTypesUseCase(
            gh<_i80.EngineTransmissionTypesRepository>()));
    gh.factory<_i102.GetAllFuelBrandUseCase>(
        () => _i102.GetAllFuelBrandUseCase(gh<_i83.FuelBrandsRepository>()));
    gh.factory<_i103.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i103.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i86.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i104.GetAllFuelMeasuringUnitsUseCase>(() =>
        _i104.GetAllFuelMeasuringUnitsUseCase(
            gh<_i89.FuelMeasuringUnitsRepository>()));
    gh.factory<_i105.GetAllFuelOctaneNumberUseCase>(() =>
        _i105.GetAllFuelOctaneNumberUseCase(
            gh<_i92.FuelOctaneNumberRepository>()));
    gh.factory<_i106.GetAllGenderFromLocalDbDatasource>(
        () => _i106.AddUserInLocalDbDatasourceImp());
    gh.factory<_i107.GetCountriesDataSource>(
        () => _i107.GetCountriesDataSource());
    gh.factory<_i108.GetCountriesRepository>(() =>
        _i109.GetCountriesRepositoryImpl(gh<_i107.GetCountriesDataSource>()));
    gh.factory<_i110.GetCountriesUseCase>(
        () => _i110.GetCountriesUseCase(gh<_i108.GetCountriesRepository>()));
    gh.factory<_i111.GetGendersFromLocalDbRepository>(() =>
        _i112.GetGenderFromLocalRepositoryImpl(
            gh<_i106.GetAllGenderFromLocalDbDatasource>()));
    gh.factory<_i113.GetRidesDataSource>(() => _i113.GetRidesDataSource());
    gh.factory<_i114.GetUserDataFromNetworkDatasource>(
        () => _i114.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i115.GetUserInfoFromNetworkRepository>(() =>
        _i116.GetUserInfoRepositoryImpl(
            gh<_i114.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i117.GetUserInfoUseCase>(() =>
        _i117.GetUserInfoUseCase(gh<_i115.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i118.IPrefsManager>(
      () => _i118.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i119.IsDownloadedDataSource>(
        () => _i119.IsDownloadedDataSource());
    gh.factory<_i120.IsDownloadedRepository>(
        () => _i121.IsDownloadedImpl(gh<_i119.IsDownloadedDataSource>()));
    gh.factory<_i122.IsDownloadedUseCase>(
        () => _i122.IsDownloadedUseCase(gh<_i120.IsDownloadedRepository>()));
    gh.factory<_i123.LanguageLocalDatabase>(
        () => _i123.LanguageLocalDatabase());
    gh.factory<_i124.LanguageRepository>(
        () => _i125.LanguageRepositoryImpl(gh<_i123.LanguageLocalDatabase>()));
    gh.factory<_i126.MetricUnitsDataSource>(
        () => _i126.MetricUnitsDataSource());
    gh.factory<_i127.MetricUnitsRepository>(() =>
        _i128.MetricUnitsRepositoryImpl(gh<_i126.MetricUnitsDataSource>()));
    gh.factory<_i129.ModelGenerationSpecificationKeysDataSource>(
        () => _i129.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i130.ModelGenerationSpecificationKeysRepository>(() =>
        _i131.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i129.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i132.MonthDataSource>(() => _i132.MonthDataSource());
    gh.factory<_i133.MonthRepository>(
        () => _i134.MonthRepositoryImpl(gh<_i132.MonthDataSource>()));
    gh.factory<_i135.NetworkInfo>(() => _i135.NetworkInfoImpl.create());
    gh.factory<_i136.PaymentMethodsDataSource>(
        () => _i136.PaymentMethodsDataSource());
    gh.factory<_i137.PaymentMethodsRepository>(() =>
        _i138.PaymentMethodsRepositoryImpl(
            gh<_i136.PaymentMethodsDataSource>()));
    gh.factory<_i139.PressureUnitsDataSource>(
        () => _i139.PressureUnitsDataSource());
    gh.factory<_i140.PressureUnitsRepository>(() =>
        _i141.PressureUnitsRepositoryImpl(gh<_i139.PressureUnitsDataSource>()));
    gh.factory<_i142.RecurrencePeriodTypesDataSource>(
        () => _i142.RecurrencePeriodTypesDataSource());
    gh.factory<_i143.RecurrencePeriodTypesRepository>(() =>
        _i144.RecurrencePeriodTypesRepositoryImpl(
            gh<_i142.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i145.ReminderTypeServiceDataSource>(
        () => _i145.ReminderTypeServiceDataSource());
    gh.factory<_i146.ReminderTypeServiceRepository>(() =>
        _i147.ReminderTypeServiceRepositoryImpl(
            gh<_i145.ReminderTypeServiceDataSource>()));
    gh.factory<_i148.ReminderTypesDataSource>(
        () => _i148.ReminderTypesDataSource());
    gh.factory<_i149.ReminderTypesRepository>(() =>
        _i150.ReminderTypesRepositoryImpl(gh<_i148.ReminderTypesDataSource>()));
    gh.factory<_i151.RideTypesDataSource>(() => _i151.RideTypesDataSource());
    gh.factory<_i152.RideTypesRepository>(
        () => _i153.RideTypesRepositoryImpl(gh<_i151.RideTypesDataSource>()));
    gh.factory<_i154.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i154.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i155.SaveCountriesUseCase>(
        () => _i155.SaveCountriesUseCase(gh<_i67.CountryRepository>()));
    gh.factory<_i156.SaveCurrenciesInLocalDbUseCase>(() =>
        _i156.SaveCurrenciesInLocalDbUseCase(gh<_i71.CurrencyRepository>()));
    gh.factory<_i157.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i157.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i74.DepartmentServiceItemsRepository>()));
    gh.factory<_i158.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i158.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i77.EngineFuelTypesRepository>()));
    gh.factory<_i159.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i159.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i80.EngineTransmissionTypesRepository>()));
    gh.factory<_i160.SaveFuelBrandInLocalDbUseCase>(() =>
        _i160.SaveFuelBrandInLocalDbUseCase(gh<_i83.FuelBrandsRepository>()));
    gh.factory<_i161.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i161.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i86.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i162.SaveFuelMeasuringUnitsInLocalDbUseCase>(() =>
        _i162.SaveFuelMeasuringUnitsInLocalDbUseCase(
            gh<_i89.FuelMeasuringUnitsRepository>()));
    gh.factory<_i163.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i163.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i92.FuelOctaneNumberRepository>()));
    gh.factory<_i164.SaveGenderDataInLocalDb>(
        () => _i164.SaveGenderDataInLocalDb(gh<_i95.GenderRepository>()));
    gh.factory<_i165.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i165.SaveMetricUnitsInLocalDbUseCase(
            gh<_i127.MetricUnitsRepository>()));
    gh.factory<_i166.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i166.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i130.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i167.SaveMonthsUseCase>(
        () => _i167.SaveMonthsUseCase(gh<_i133.MonthRepository>()));
    gh.factory<_i168.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i168.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i137.PaymentMethodsRepository>()));
    gh.factory<_i169.SavePressureUnitsInLocalDbUseCase>(() =>
        _i169.SavePressureUnitsInLocalDbUseCase(
            gh<_i140.PressureUnitsRepository>()));
    gh.factory<_i170.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i170.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i143.RecurrencePeriodTypesRepository>()));
    gh.factory<_i171.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i171.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i146.ReminderTypeServiceRepository>()));
    gh.factory<_i172.SaveReminderTypesUseCase>(() =>
        _i172.SaveReminderTypesUseCase(gh<_i149.ReminderTypesRepository>()));
    gh.factory<_i173.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i173.SaveRideTypesDataInLocalDbUseCase(
            gh<_i152.RideTypesRepository>()));
    gh.factory<_i174.ServiceDepartmentsDataSource>(
        () => _i174.ServiceDepartmentsDataSource());
    gh.factory<_i175.ServiceTypesDataSource>(
        () => _i175.ServiceTypesDataSource());
    gh.factory<_i176.ServiceTypesRepository>(() =>
        _i177.ServiceTypesRepositoryImpl(gh<_i175.ServiceTypesDataSource>()));
    gh.factory<_i178.ServicesDepartmentsRepository>(() =>
        _i179.ServiceDepartmentsRepositoryImpl(
            gh<_i174.ServiceDepartmentsDataSource>()));
    gh.factory<_i180.UpdateUserRepository>(() =>
        _i181.UpdateUserRepositoryImpl(gh<_i11.AddUserToNetworkDatasource>()));
    gh.factory<_i182.UserAccountRepository>(
        () => _i183.UserRepositoryImpl(gh<_i10.AddUserInLocalDbDatasource>()));
    gh.singleton<_i184.UserRepository>(() => _i184.UserRepository.create(
        gh<_i118.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i185.WeatherUnitsDataSource>(
        () => _i185.WeatherUnitsDataSource());
    gh.factory<_i186.WeatherUnitsRepository>(() =>
        _i187.WeatherUnitsRepositoryImpl(gh<_i185.WeatherUnitsDataSource>()));
    gh.factory<_i188.WorkflowStatusesDataSource>(
        () => _i188.WorkflowStatusesDataSource());
    gh.factory<_i189.WorkflowStatusesRepository>(() =>
        _i190.WorkflowStatusesRepositoryImpl(
            gh<_i188.WorkflowStatusesDataSource>()));
    gh.factory<_i191.AcquisitionTypesCubit>(() => _i191.AcquisitionTypesCubit(
          gh<_i65.ClearAcquisitionTypesUseCase>(),
          gh<_i97.GetAllAcquisitionTypesUseCase>(),
          gh<_i154.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i192.AddRideCubit>(
        () => _i192.AddRideCubit(gh<_i9.AddRideUseCase>()));
    gh.factory<_i193.AddUserInLocalDbUseCase>(
        () => _i193.AddUserInLocalDbUseCase(gh<_i182.UserAccountRepository>()));
    gh.factory<_i194.AddUserToLocalDbCubit>(
        () => _i194.AddUserToLocalDbCubit(gh<_i193.AddUserInLocalDbUseCase>()));
    gh.factory<_i195.AuthorizeCubit>(
        () => _i195.AuthorizeCubit(gh<_i21.AuthorizeUseCase>()));
    gh.factory<_i196.AuthorizeMobileNumberCubit>(() =>
        _i196.AuthorizeMobileNumberCubit(
            gh<_i18.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i197.CheckPrimaryDataCubit>(() => _i197.CheckPrimaryDataCubit(
          gh<_i25.CheckPrimaryDataUseCase>(),
          gh<_i122.IsDownloadedUseCase>(),
        ));
    gh.factory<_i198.ChooseCurrencyCubit>(
        () => _i198.ChooseCurrencyCubit(gh<_i32.ChooseCurrencyUseCase>()));
    gh.factory<_i199.ChooseFuelConsumptionUnitsCubit>(() =>
        _i199.ChooseFuelConsumptionUnitsCubit(
            gh<_i36.ChooseFuelConsumptionUnitsUseCase>()));
    gh.factory<_i200.ChooseFuelTypesCubit>(
        () => _i200.ChooseFuelTypesCubit(gh<_i40.ChooseFuelTypesUseCase>()));
    gh.factory<_i201.ChooseFuelUnitsCubit>(
        () => _i201.ChooseFuelUnitsCubit(gh<_i44.ChooseFuelUnitsUseCase>()));
    gh.factory<_i202.ChooseMetricUnitsCubit>(() =>
        _i202.ChooseMetricUnitsCubit(gh<_i48.ChooseMetricUnitsUseCase>()));
    gh.factory<_i203.ChooseRideMakesCubit>(
        () => _i203.ChooseRideMakesCubit(gh<_i52.ChooseRideMakesUseCase>()));
    gh.factory<_i204.ChooseRideModelTrimCubit>(() =>
        _i204.ChooseRideModelTrimCubit(gh<_i56.ChooseRideModelTrimUseCase>()));
    gh.factory<_i205.ChooseRideModelsCubit>(
        () => _i205.ChooseRideModelsCubit(gh<_i60.ChooseRideModelsUseCase>()));
    gh.factory<_i206.ChooseRideTypeCubit>(
        () => _i206.ChooseRideTypeCubit(gh<_i64.ChooseRideTypeUseCase>()));
    gh.factory<_i207.ClearCountryUseCase>(
        () => _i207.ClearCountryUseCase(gh<_i67.CountryRepository>()));
    gh.factory<_i208.ClearCurrencyUseCase>(
        () => _i208.ClearCurrencyUseCase(gh<_i71.CurrencyRepository>()));
    gh.factory<_i209.ClearDepartmentServiceItemsUseCase>(() =>
        _i209.ClearDepartmentServiceItemsUseCase(
            gh<_i74.DepartmentServiceItemsRepository>()));
    gh.factory<_i210.ClearEngineFuelTypesUseCase>(() =>
        _i210.ClearEngineFuelTypesUseCase(
            gh<_i77.EngineFuelTypesRepository>()));
    gh.factory<_i211.ClearEngineTransmissionTypesUseCase>(() =>
        _i211.ClearEngineTransmissionTypesUseCase(
            gh<_i80.EngineTransmissionTypesRepository>()));
    gh.factory<_i212.ClearFuelBrandsUseCase>(
        () => _i212.ClearFuelBrandsUseCase(gh<_i83.FuelBrandsRepository>()));
    gh.factory<_i213.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i213.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i86.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i214.ClearFuelMeasuringUnitsUseCase>(() =>
        _i214.ClearFuelMeasuringUnitsUseCase(
            gh<_i89.FuelMeasuringUnitsRepository>()));
    gh.factory<_i215.ClearFuelOctaneNumberUseCase>(() =>
        _i215.ClearFuelOctaneNumberUseCase(
            gh<_i92.FuelOctaneNumberRepository>()));
    gh.factory<_i216.ClearGenderUseCase>(
        () => _i216.ClearGenderUseCase(gh<_i95.GenderRepository>()));
    gh.factory<_i217.ClearMetricUnitsUseCase>(
        () => _i217.ClearMetricUnitsUseCase(gh<_i127.MetricUnitsRepository>()));
    gh.factory<_i218.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i218.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i130.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i219.ClearMonthUseCase>(
        () => _i219.ClearMonthUseCase(gh<_i133.MonthRepository>()));
    gh.factory<_i220.ClearPaymentMethodsUseCase>(() =>
        _i220.ClearPaymentMethodsUseCase(gh<_i137.PaymentMethodsRepository>()));
    gh.factory<_i221.ClearPressureUnitsUseCase>(() =>
        _i221.ClearPressureUnitsUseCase(gh<_i140.PressureUnitsRepository>()));
    gh.factory<_i222.ClearRecurrencePeriodTypesUseCase>(() =>
        _i222.ClearRecurrencePeriodTypesUseCase(
            gh<_i143.RecurrencePeriodTypesRepository>()));
    gh.factory<_i223.ClearReminderTypeServiceUseCase>(() =>
        _i223.ClearReminderTypeServiceUseCase(
            gh<_i146.ReminderTypeServiceRepository>()));
    gh.factory<_i224.ClearReminderTypeUseCase>(() =>
        _i224.ClearReminderTypeUseCase(gh<_i149.ReminderTypesRepository>()));
    gh.factory<_i225.ClearRideTypesUseCase>(
        () => _i225.ClearRideTypesUseCase(gh<_i152.RideTypesRepository>()));
    gh.factory<_i226.ClearServiceTypesUseCase>(() =>
        _i226.ClearServiceTypesUseCase(gh<_i176.ServiceTypesRepository>()));
    gh.factory<_i227.ClearServicesDepartmentsUseCase>(() =>
        _i227.ClearServicesDepartmentsUseCase(
            gh<_i178.ServicesDepartmentsRepository>()));
    gh.factory<_i228.ClearWeatherUnitsUseCase>(() =>
        _i228.ClearWeatherUnitsUseCase(gh<_i186.WeatherUnitsRepository>()));
    gh.factory<_i229.ClearWorkflowStatusesUseCase>(() =>
        _i229.ClearWorkflowStatusesUseCase(
            gh<_i189.WorkflowStatusesRepository>()));
    gh.factory<_i230.CountryCubit>(() => _i230.CountryCubit(
          gh<_i69.CountryUseCase>(),
          gh<_i155.SaveCountriesUseCase>(),
          gh<_i207.ClearCountryUseCase>(),
        ));
    gh.factory<_i231.CurrencyCubit>(() => _i231.CurrencyCubit(
          gh<_i208.ClearCurrencyUseCase>(),
          gh<_i98.GetAllCurrencyUseCase>(),
          gh<_i156.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i232.DepartmentServiceItemsCubit>(
        () => _i232.DepartmentServiceItemsCubit(
              gh<_i209.ClearDepartmentServiceItemsUseCase>(),
              gh<_i99.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i157.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i233.DownloadGenderUseCase>(
        () => _i233.DownloadGenderUseCase(gh<_i95.GenderRepository>()));
    gh.factory<_i234.DownloadPaymentMethodsUseCase>(() =>
        _i234.DownloadPaymentMethodsUseCase(
            gh<_i137.PaymentMethodsRepository>()));
    gh.factory<_i235.DownloadRideTypesUseCase>(
        () => _i235.DownloadRideTypesUseCase(gh<_i152.RideTypesRepository>()));
    gh.factory<_i236.DownloadWeatherUnitsUseCase>(() =>
        _i236.DownloadWeatherUnitsUseCase(gh<_i186.WeatherUnitsRepository>()));
    gh.factory<_i237.EngineFuelTypesCubit>(() => _i237.EngineFuelTypesCubit(
          gh<_i210.ClearEngineFuelTypesUseCase>(),
          gh<_i100.GetAllEngineFuelTypesUseCase>(),
          gh<_i158.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i238.EngineTransmissionTypesCubit>(
        () => _i238.EngineTransmissionTypesCubit(
              gh<_i211.ClearEngineTransmissionTypesUseCase>(),
              gh<_i101.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i159.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i239.FuelBrandsCubit>(() => _i239.FuelBrandsCubit(
          gh<_i212.ClearFuelBrandsUseCase>(),
          gh<_i102.GetAllFuelBrandUseCase>(),
          gh<_i160.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i240.FuelConsumptionUnitTypesCubit>(
        () => _i240.FuelConsumptionUnitTypesCubit(
              gh<_i213.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i103.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i161.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i241.FuelMeasuringUnitsCubit>(
        () => _i241.FuelMeasuringUnitsCubit(
              gh<_i214.ClearFuelMeasuringUnitsUseCase>(),
              gh<_i104.GetAllFuelMeasuringUnitsUseCase>(),
              gh<_i162.SaveFuelMeasuringUnitsInLocalDbUseCase>(),
            ));
    gh.factory<_i242.FuelOctaneNumberCubit>(() => _i242.FuelOctaneNumberCubit(
          gh<_i215.ClearFuelOctaneNumberUseCase>(),
          gh<_i105.GetAllFuelOctaneNumberUseCase>(),
          gh<_i163.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i243.GenderCubit>(() => _i243.GenderCubit(
          gh<_i216.ClearGenderUseCase>(),
          gh<_i233.DownloadGenderUseCase>(),
          gh<_i164.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i244.GetAllMetricUnitsUseCase>(() =>
        _i244.GetAllMetricUnitsUseCase(gh<_i127.MetricUnitsRepository>()));
    gh.factory<_i245.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i245.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i130.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i246.GetAllPressureUnitsUseCase>(() =>
        _i246.GetAllPressureUnitsUseCase(gh<_i140.PressureUnitsRepository>()));
    gh.factory<_i247.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i247.GetAllRecurrencePeriodTypesUseCase(
            gh<_i143.RecurrencePeriodTypesRepository>()));
    gh.factory<_i248.GetAllReminderTypeServiceUseCase>(() =>
        _i248.GetAllReminderTypeServiceUseCase(
            gh<_i146.ReminderTypeServiceRepository>()));
    gh.factory<_i249.GetAllServiceTypesUseCase>(() =>
        _i249.GetAllServiceTypesUseCase(gh<_i176.ServiceTypesRepository>()));
    gh.factory<_i250.GetAllServicesDepartmentsUseCase>(() =>
        _i250.GetAllServicesDepartmentsUseCase(
            gh<_i178.ServicesDepartmentsRepository>()));
    gh.factory<_i251.GetAllWorkflowStatusesUseCase>(() =>
        _i251.GetAllWorkflowStatusesUseCase(
            gh<_i189.WorkflowStatusesRepository>()));
    gh.factory<_i252.GetCountriesCubit>(
        () => _i252.GetCountriesCubit(gh<_i110.GetCountriesUseCase>()));
    gh.factory<_i253.GetGenderFromLocalDbUseCase>(() =>
        _i253.GetGenderFromLocalDbUseCase(
            gh<_i111.GetGendersFromLocalDbRepository>()));
    gh.factory<_i254.GetLanguagesUseCase>(
        () => _i254.GetLanguagesUseCase(gh<_i124.LanguageRepository>()));
    gh.factory<_i255.GetMonthsUseCase>(
        () => _i255.GetMonthsUseCase(gh<_i133.MonthRepository>()));
    gh.factory<_i256.GetMyRidesRepository>(
        () => _i257.GetMyRidesRepositoryImpl(gh<_i113.GetRidesDataSource>()));
    gh.factory<_i258.GetMyRidesUseCase>(
        () => _i258.GetMyRidesUseCase(gh<_i256.GetMyRidesRepository>()));
    gh.factory<_i259.GetReminderTypesUseCase>(() =>
        _i259.GetReminderTypesUseCase(gh<_i149.ReminderTypesRepository>()));
    gh.factory<_i260.GetUserInfoCubit>(
        () => _i260.GetUserInfoCubit(gh<_i117.GetUserInfoUseCase>()));
    gh.factory<_i261.LanguageCubit>(
        () => _i261.LanguageCubit(gh<_i254.GetLanguagesUseCase>()));
    gh.factory<_i262.MetricUnitsCubit>(() => _i262.MetricUnitsCubit(
          gh<_i217.ClearMetricUnitsUseCase>(),
          gh<_i244.GetAllMetricUnitsUseCase>(),
          gh<_i165.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i263.ModelGenerationSpecificationKeysCubit>(
        () => _i263.ModelGenerationSpecificationKeysCubit(
              gh<_i218.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i245.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i166.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i264.MonthCubit>(() => _i264.MonthCubit(
          gh<_i255.GetMonthsUseCase>(),
          gh<_i167.SaveMonthsUseCase>(),
          gh<_i219.ClearMonthUseCase>(),
        ));
    gh.factory<_i265.PaymentMethodsCubit>(() => _i265.PaymentMethodsCubit(
          gh<_i220.ClearPaymentMethodsUseCase>(),
          gh<_i234.DownloadPaymentMethodsUseCase>(),
          gh<_i168.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i266.PressureUnitsCubit>(() => _i266.PressureUnitsCubit(
          gh<_i69.CountryUseCase>(),
          gh<_i169.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i221.ClearPressureUnitsUseCase>(),
          gh<_i246.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i267.RecurrencePeriodTypesCubit>(
        () => _i267.RecurrencePeriodTypesCubit(
              gh<_i222.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i247.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i170.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i268.ReminderTypeServiceCubit>(
        () => _i268.ReminderTypeServiceCubit(
              gh<_i223.ClearReminderTypeServiceUseCase>(),
              gh<_i248.GetAllReminderTypeServiceUseCase>(),
              gh<_i171.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i269.ReminderTypesCubit>(() => _i269.ReminderTypesCubit(
          gh<_i259.GetReminderTypesUseCase>(),
          gh<_i172.SaveReminderTypesUseCase>(),
          gh<_i224.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i270.RideTypesCubit>(() => _i270.RideTypesCubit(
          gh<_i225.ClearRideTypesUseCase>(),
          gh<_i235.DownloadRideTypesUseCase>(),
          gh<_i173.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i271.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i271.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i178.ServicesDepartmentsRepository>()));
    gh.factory<_i272.SaveServiceTypesInLocalDbUseCase>(() =>
        _i272.SaveServiceTypesInLocalDbUseCase(
            gh<_i176.ServiceTypesRepository>()));
    gh.factory<_i273.SaveWeatherUnitsDataInLocalDb>(() =>
        _i273.SaveWeatherUnitsDataInLocalDb(
            gh<_i186.WeatherUnitsRepository>()));
    gh.factory<_i274.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i274.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i189.WorkflowStatusesRepository>()));
    gh.factory<_i275.ServiceDepartmentsCubit>(
        () => _i275.ServiceDepartmentsCubit(
              gh<_i227.ClearServicesDepartmentsUseCase>(),
              gh<_i250.GetAllServicesDepartmentsUseCase>(),
              gh<_i271.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i276.ServiceTypesCubit>(() => _i276.ServiceTypesCubit(
          gh<_i226.ClearServiceTypesUseCase>(),
          gh<_i249.GetAllServiceTypesUseCase>(),
          gh<_i272.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i277.UpdateUserDataUseCase>(
        () => _i277.UpdateUserDataUseCase(gh<_i180.UpdateUserRepository>()));
    gh.factory<_i278.WeatherUnitsCubit>(() => _i278.WeatherUnitsCubit(
          gh<_i228.ClearWeatherUnitsUseCase>(),
          gh<_i236.DownloadWeatherUnitsUseCase>(),
          gh<_i273.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i279.WorkflowStatusesCubit>(() => _i279.WorkflowStatusesCubit(
          gh<_i229.ClearWorkflowStatusesUseCase>(),
          gh<_i251.GetAllWorkflowStatusesUseCase>(),
          gh<_i274.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    gh.factory<_i280.GetGenderCubit>(
        () => _i280.GetGenderCubit(gh<_i253.GetGenderFromLocalDbUseCase>()));
    gh.factory<_i281.GetMyRidesCubit>(
        () => _i281.GetMyRidesCubit(gh<_i258.GetMyRidesUseCase>()));
    gh.factory<_i282.UpdateUserDataCubit>(
        () => _i282.UpdateUserDataCubit(gh<_i277.UpdateUserDataUseCase>()));
    return this;
  }
}
