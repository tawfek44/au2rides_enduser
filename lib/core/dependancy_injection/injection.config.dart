// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i103;
import 'package:au2rides/core/repositories/user_repository.dart' as _i152;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i86;
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
    as _i160;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/data_sources/choose_ride_type_datasource.dart'
    as _i29;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/data/repositories/choose_ride_type_repository_imp.dart'
    as _i31;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/repositories/choose_ride_type_repository.dart'
    as _i30;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/domain/use_cases/choose_ride_type_usecase.dart'
    as _i32;
import 'package:au2rides/features/add_ride_screen/presentation/screen/ride_type_screen/presentation/bloc/choose_ride_type_cubit.dart'
    as _i166;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i75;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i77;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i76;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i78;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i212;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i14;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i34;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i41;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i44;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i47;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i50;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i53;
import 'package:au2rides/features/download_screen/data/datasources/fuel_measuring_units_datasource.dart'
    as _i56;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i59;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i62;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i94;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i97;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i100;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i104;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i107;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i110;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i113;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i116;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i119;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i142;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i143;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i153;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i156;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i40;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i43;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i46;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i49;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i52;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i55;
import 'package:au2rides/features/download_screen/data/repositories/fuel_measuring_units_repository.dart'
    as _i58;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i61;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i64;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i96;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i99;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i102;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i106;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i109;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i112;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i115;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i118;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i121;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i145;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i147;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i155;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i39;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i42;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i45;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i48;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i54;
import 'package:au2rides/features/download_screen/domain/repository/fuel_measuring_units_repository.dart'
    as _i57;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i60;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i108;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i111;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i114;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i120;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i146;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i154;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i33;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i37;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i123;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i66;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i124;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i67;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i68;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i171;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i69;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i172;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i70;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i128;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i71;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/clear_fuel_measuring_units_usecase.dart'
    as _i174;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/get_all_fuel_measuring_units_usecase.dart'
    as _i72;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_measuring_units/save_fuel_measuring_units_in_local_db_usecase.dart'
    as _i130;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i175;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i73;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i193;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i177;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i204;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i133;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i178;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i205;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i134;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i179;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i215;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i180;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i194;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i136;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i181;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i206;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i137;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i182;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i207;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i138;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i183;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i208;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i139;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i184;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i219;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i140;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i185;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i195;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i141;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i186;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i209;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i232;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i187;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i210;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i231;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i188;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i196;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i233;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i189;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i211;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i234;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i159;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i163;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i190;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i191;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i192;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i197;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i198;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i199;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i200;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_measuring_units_cubit/fuel_measuring_units_cubit.dart'
    as _i201;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i202;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i203;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i222;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i223;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i224;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i225;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i226;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i227;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i228;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i229;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i230;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i235;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i236;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i238;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i239;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i10;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i82;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_to_server/add_user_to_server_data_scource.dart'
    as _i11;
import 'package:au2rides/features/enter_user_info/data/repositories/update_user_data/update_user_repository_impl.dart'
    as _i149;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i84;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i151;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i83;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart'
    as _i148;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i150;
import 'package:au2rides/features/enter_user_info/domain/use_cases/add_user_in_local_db_use_case.dart'
    as _i161;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i85;
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart'
    as _i237;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart'
    as _i162;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart'
    as _i242;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i220;
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart'
    as _i74;
import 'package:au2rides/features/gender_screen/data/repositories/get_gender_repository_impl.dart'
    as _i80;
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart'
    as _i79;
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart'
    as _i213;
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart'
    as _i240;
import 'package:au2rides/features/home_screen/data/data_sources/get_rides_datasource.dart'
    as _i81;
import 'package:au2rides/features/home_screen/data/repositories/get_my_rides_repository_impl.dart'
    as _i217;
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart'
    as _i216;
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart'
    as _i218;
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart'
    as _i241;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i91;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i93;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i92;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i214;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i221;
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
    as _i164;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i87;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i89;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i23;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i88;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i90;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i165;
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
    gh.factory<_i29.ChooseRideTypeDataSource>(
        () => _i29.ChooseRideTypeSourceImpl());
    gh.factory<_i30.ChooseRideTypeRepository>(() =>
        _i31.ChooseRideTypeRepositoryImpl(gh<_i29.ChooseRideTypeDataSource>()));
    gh.factory<_i32.ChooseRideTypeUseCase>(
        () => _i32.ChooseRideTypeUseCase(gh<_i30.ChooseRideTypeRepository>()));
    gh.factory<_i33.ClearAcquisitionTypesUseCase>(() =>
        _i33.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i34.CountryDataSource>(() => _i34.CountryDataSource());
    gh.factory<_i35.CountryRepository>(
        () => _i36.CountryRepositoryImpl(gh<_i34.CountryDataSource>()));
    gh.factory<_i37.CountryUseCase>(
        () => _i37.CountryUseCase(gh<_i35.CountryRepository>()));
    gh.factory<_i38.CurrencyDataSource>(() => _i38.CurrencyDataSource());
    gh.factory<_i39.CurrencyRepository>(
        () => _i40.CurrencyRepositoryImpl(gh<_i38.CurrencyDataSource>()));
    gh.factory<_i41.DepartmentServiceItemsDataSource>(
        () => _i41.DepartmentServiceItemsDataSource());
    gh.factory<_i42.DepartmentServiceItemsRepository>(() =>
        _i43.DepartmentServiceItemsRepositoryImpl(
            gh<_i41.DepartmentServiceItemsDataSource>()));
    gh.factory<_i44.EngineFuelTypesDataSource>(
        () => _i44.EngineFuelTypesDataSource());
    gh.factory<_i45.EngineFuelTypesRepository>(() =>
        _i46.EngineFuelTypesRepositoryImpl(
            gh<_i44.EngineFuelTypesDataSource>()));
    gh.factory<_i47.EngineTransmissionTypesDataSource>(
        () => _i47.EngineTransmissionTypesDataSource());
    gh.factory<_i48.EngineTransmissionTypesRepository>(() =>
        _i49.EngineTransmissionTypesRepositoryImpl(
            gh<_i47.EngineTransmissionTypesDataSource>()));
    gh.factory<_i50.FuelBrandsDataSource>(() => _i50.FuelBrandsDataSource());
    gh.factory<_i51.FuelBrandsRepository>(
        () => _i52.FuelBrandsRepositoryImpl(gh<_i50.FuelBrandsDataSource>()));
    gh.factory<_i53.FuelConsumptionUnitTypesDataSource>(
        () => _i53.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i54.FuelConsumptionUnitTypesRepository>(() =>
        _i55.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i53.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i56.FuelMeasuringUnitsDataSource>(
        () => _i56.FuelMeasuringUnitsDataSource());
    gh.factory<_i57.FuelMeasuringUnitsRepository>(() =>
        _i58.FuelMeasuringUnitsRepositoryImpl(
            gh<_i56.FuelMeasuringUnitsDataSource>()));
    gh.factory<_i59.FuelOctaneNumberDataSource>(
        () => _i59.FuelOctaneNumberDataSource());
    gh.factory<_i60.FuelOctaneNumberRepository>(() =>
        _i61.FuelOctaneNumberRepositoryImpl(
            gh<_i59.FuelOctaneNumberDataSource>()));
    gh.factory<_i62.GenderDataSource>(() => _i62.GenderDataSource());
    gh.factory<_i63.GenderRepository>(
        () => _i64.GenderRepositoryImpl(gh<_i62.GenderDataSource>()));
    gh.factory<_i65.GetAllAcquisitionTypesUseCase>(() =>
        _i65.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i66.GetAllCurrencyUseCase>(
        () => _i66.GetAllCurrencyUseCase(gh<_i39.CurrencyRepository>()));
    gh.factory<_i67.GetAllDepartmentServiceItemsUseCase>(() =>
        _i67.GetAllDepartmentServiceItemsUseCase(
            gh<_i42.DepartmentServiceItemsRepository>()));
    gh.factory<_i68.GetAllEngineFuelTypesUseCase>(() =>
        _i68.GetAllEngineFuelTypesUseCase(
            gh<_i45.EngineFuelTypesRepository>()));
    gh.factory<_i69.GetAllEngineTransmissionTypesUseCase>(() =>
        _i69.GetAllEngineTransmissionTypesUseCase(
            gh<_i48.EngineTransmissionTypesRepository>()));
    gh.factory<_i70.GetAllFuelBrandUseCase>(
        () => _i70.GetAllFuelBrandUseCase(gh<_i51.FuelBrandsRepository>()));
    gh.factory<_i71.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i71.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i54.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i72.GetAllFuelMeasuringUnitsUseCase>(() =>
        _i72.GetAllFuelMeasuringUnitsUseCase(
            gh<_i57.FuelMeasuringUnitsRepository>()));
    gh.factory<_i73.GetAllFuelOctaneNumberUseCase>(() =>
        _i73.GetAllFuelOctaneNumberUseCase(
            gh<_i60.FuelOctaneNumberRepository>()));
    gh.factory<_i74.GetAllGenderFromLocalDbDatasource>(
        () => _i74.AddUserInLocalDbDatasourceImp());
    gh.factory<_i75.GetCountriesDataSource>(
        () => _i75.GetCountriesDataSource());
    gh.factory<_i76.GetCountriesRepository>(() =>
        _i77.GetCountriesRepositoryImpl(gh<_i75.GetCountriesDataSource>()));
    gh.factory<_i78.GetCountriesUseCase>(
        () => _i78.GetCountriesUseCase(gh<_i76.GetCountriesRepository>()));
    gh.factory<_i79.GetGendersFromLocalDbRepository>(() =>
        _i80.GetGenderFromLocalRepositoryImpl(
            gh<_i74.GetAllGenderFromLocalDbDatasource>()));
    gh.factory<_i81.GetRidesDataSource>(() => _i81.GetRidesDataSource());
    gh.factory<_i82.GetUserDataFromNetworkDatasource>(
        () => _i82.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i83.GetUserInfoFromNetworkRepository>(() =>
        _i84.GetUserInfoRepositoryImpl(
            gh<_i82.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i85.GetUserInfoUseCase>(() =>
        _i85.GetUserInfoUseCase(gh<_i83.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i86.IPrefsManager>(
      () => _i86.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i87.IsDownloadedDataSource>(
        () => _i87.IsDownloadedDataSource());
    gh.factory<_i88.IsDownloadedRepository>(
        () => _i89.IsDownloadedImpl(gh<_i87.IsDownloadedDataSource>()));
    gh.factory<_i90.IsDownloadedUseCase>(
        () => _i90.IsDownloadedUseCase(gh<_i88.IsDownloadedRepository>()));
    gh.factory<_i91.LanguageLocalDatabase>(() => _i91.LanguageLocalDatabase());
    gh.factory<_i92.LanguageRepository>(
        () => _i93.LanguageRepositoryImpl(gh<_i91.LanguageLocalDatabase>()));
    gh.factory<_i94.MetricUnitsDataSource>(() => _i94.MetricUnitsDataSource());
    gh.factory<_i95.MetricUnitsRepository>(
        () => _i96.MetricUnitsRepositoryImpl(gh<_i94.MetricUnitsDataSource>()));
    gh.factory<_i97.ModelGenerationSpecificationKeysDataSource>(
        () => _i97.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i98.ModelGenerationSpecificationKeysRepository>(() =>
        _i99.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i97.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i100.MonthDataSource>(() => _i100.MonthDataSource());
    gh.factory<_i101.MonthRepository>(
        () => _i102.MonthRepositoryImpl(gh<_i100.MonthDataSource>()));
    gh.factory<_i103.NetworkInfo>(() => _i103.NetworkInfoImpl.create());
    gh.factory<_i104.PaymentMethodsDataSource>(
        () => _i104.PaymentMethodsDataSource());
    gh.factory<_i105.PaymentMethodsRepository>(() =>
        _i106.PaymentMethodsRepositoryImpl(
            gh<_i104.PaymentMethodsDataSource>()));
    gh.factory<_i107.PressureUnitsDataSource>(
        () => _i107.PressureUnitsDataSource());
    gh.factory<_i108.PressureUnitsRepository>(() =>
        _i109.PressureUnitsRepositoryImpl(gh<_i107.PressureUnitsDataSource>()));
    gh.factory<_i110.RecurrencePeriodTypesDataSource>(
        () => _i110.RecurrencePeriodTypesDataSource());
    gh.factory<_i111.RecurrencePeriodTypesRepository>(() =>
        _i112.RecurrencePeriodTypesRepositoryImpl(
            gh<_i110.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i113.ReminderTypeServiceDataSource>(
        () => _i113.ReminderTypeServiceDataSource());
    gh.factory<_i114.ReminderTypeServiceRepository>(() =>
        _i115.ReminderTypeServiceRepositoryImpl(
            gh<_i113.ReminderTypeServiceDataSource>()));
    gh.factory<_i116.ReminderTypesDataSource>(
        () => _i116.ReminderTypesDataSource());
    gh.factory<_i117.ReminderTypesRepository>(() =>
        _i118.ReminderTypesRepositoryImpl(gh<_i116.ReminderTypesDataSource>()));
    gh.factory<_i119.RideTypesDataSource>(() => _i119.RideTypesDataSource());
    gh.factory<_i120.RideTypesRepository>(
        () => _i121.RideTypesRepositoryImpl(gh<_i119.RideTypesDataSource>()));
    gh.factory<_i122.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i122.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i123.SaveCountriesUseCase>(
        () => _i123.SaveCountriesUseCase(gh<_i35.CountryRepository>()));
    gh.factory<_i124.SaveCurrenciesInLocalDbUseCase>(() =>
        _i124.SaveCurrenciesInLocalDbUseCase(gh<_i39.CurrencyRepository>()));
    gh.factory<_i125.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i125.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i42.DepartmentServiceItemsRepository>()));
    gh.factory<_i126.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i126.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i45.EngineFuelTypesRepository>()));
    gh.factory<_i127.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i127.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i48.EngineTransmissionTypesRepository>()));
    gh.factory<_i128.SaveFuelBrandInLocalDbUseCase>(() =>
        _i128.SaveFuelBrandInLocalDbUseCase(gh<_i51.FuelBrandsRepository>()));
    gh.factory<_i129.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i129.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i54.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i130.SaveFuelMeasuringUnitsInLocalDbUseCase>(() =>
        _i130.SaveFuelMeasuringUnitsInLocalDbUseCase(
            gh<_i57.FuelMeasuringUnitsRepository>()));
    gh.factory<_i131.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i131.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i60.FuelOctaneNumberRepository>()));
    gh.factory<_i132.SaveGenderDataInLocalDb>(
        () => _i132.SaveGenderDataInLocalDb(gh<_i63.GenderRepository>()));
    gh.factory<_i133.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i133.SaveMetricUnitsInLocalDbUseCase(
            gh<_i95.MetricUnitsRepository>()));
    gh.factory<_i134.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i134.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i98.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i135.SaveMonthsUseCase>(
        () => _i135.SaveMonthsUseCase(gh<_i101.MonthRepository>()));
    gh.factory<_i136.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i136.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i105.PaymentMethodsRepository>()));
    gh.factory<_i137.SavePressureUnitsInLocalDbUseCase>(() =>
        _i137.SavePressureUnitsInLocalDbUseCase(
            gh<_i108.PressureUnitsRepository>()));
    gh.factory<_i138.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i138.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i111.RecurrencePeriodTypesRepository>()));
    gh.factory<_i139.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i139.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i114.ReminderTypeServiceRepository>()));
    gh.factory<_i140.SaveReminderTypesUseCase>(() =>
        _i140.SaveReminderTypesUseCase(gh<_i117.ReminderTypesRepository>()));
    gh.factory<_i141.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i141.SaveRideTypesDataInLocalDbUseCase(
            gh<_i120.RideTypesRepository>()));
    gh.factory<_i142.ServiceDepartmentsDataSource>(
        () => _i142.ServiceDepartmentsDataSource());
    gh.factory<_i143.ServiceTypesDataSource>(
        () => _i143.ServiceTypesDataSource());
    gh.factory<_i144.ServiceTypesRepository>(() =>
        _i145.ServiceTypesRepositoryImpl(gh<_i143.ServiceTypesDataSource>()));
    gh.factory<_i146.ServicesDepartmentsRepository>(() =>
        _i147.ServiceDepartmentsRepositoryImpl(
            gh<_i142.ServiceDepartmentsDataSource>()));
    gh.factory<_i148.UpdateUserRepository>(() =>
        _i149.UpdateUserRepositoryImpl(gh<_i11.AddUserToNetworkDatasource>()));
    gh.factory<_i150.UserAccountRepository>(
        () => _i151.UserRepositoryImpl(gh<_i10.AddUserInLocalDbDatasource>()));
    gh.singleton<_i152.UserRepository>(_i152.UserRepository.create(
        gh<_i86.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i153.WeatherUnitsDataSource>(
        () => _i153.WeatherUnitsDataSource());
    gh.factory<_i154.WeatherUnitsRepository>(() =>
        _i155.WeatherUnitsRepositoryImpl(gh<_i153.WeatherUnitsDataSource>()));
    gh.factory<_i156.WorkflowStatusesDataSource>(
        () => _i156.WorkflowStatusesDataSource());
    gh.factory<_i157.WorkflowStatusesRepository>(() =>
        _i158.WorkflowStatusesRepositoryImpl(
            gh<_i156.WorkflowStatusesDataSource>()));
    gh.factory<_i159.AcquisitionTypesCubit>(() => _i159.AcquisitionTypesCubit(
          gh<_i33.ClearAcquisitionTypesUseCase>(),
          gh<_i65.GetAllAcquisitionTypesUseCase>(),
          gh<_i122.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i160.AddRideCubit>(
        () => _i160.AddRideCubit(gh<_i9.AddRideUseCase>()));
    gh.factory<_i161.AddUserInLocalDbUseCase>(
        () => _i161.AddUserInLocalDbUseCase(gh<_i150.UserAccountRepository>()));
    gh.factory<_i162.AddUserToLocalDbCubit>(
        () => _i162.AddUserToLocalDbCubit(gh<_i161.AddUserInLocalDbUseCase>()));
    gh.factory<_i163.AuthorizeCubit>(
        () => _i163.AuthorizeCubit(gh<_i21.AuthorizeUseCase>()));
    gh.factory<_i164.AuthorizeMobileNumberCubit>(() =>
        _i164.AuthorizeMobileNumberCubit(
            gh<_i18.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i165.CheckPrimaryDataCubit>(() => _i165.CheckPrimaryDataCubit(
          gh<_i25.CheckPrimaryDataUseCase>(),
          gh<_i90.IsDownloadedUseCase>(),
        ));
    gh.factory<_i166.ChooseRideTypeCubit>(
        () => _i166.ChooseRideTypeCubit(gh<_i32.ChooseRideTypeUseCase>()));
    gh.factory<_i167.ClearCountryUseCase>(
        () => _i167.ClearCountryUseCase(gh<_i35.CountryRepository>()));
    gh.factory<_i168.ClearCurrencyUseCase>(
        () => _i168.ClearCurrencyUseCase(gh<_i39.CurrencyRepository>()));
    gh.factory<_i169.ClearDepartmentServiceItemsUseCase>(() =>
        _i169.ClearDepartmentServiceItemsUseCase(
            gh<_i42.DepartmentServiceItemsRepository>()));
    gh.factory<_i170.ClearEngineFuelTypesUseCase>(() =>
        _i170.ClearEngineFuelTypesUseCase(
            gh<_i45.EngineFuelTypesRepository>()));
    gh.factory<_i171.ClearEngineTransmissionTypesUseCase>(() =>
        _i171.ClearEngineTransmissionTypesUseCase(
            gh<_i48.EngineTransmissionTypesRepository>()));
    gh.factory<_i172.ClearFuelBrandsUseCase>(
        () => _i172.ClearFuelBrandsUseCase(gh<_i51.FuelBrandsRepository>()));
    gh.factory<_i173.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i173.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i54.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i174.ClearFuelMeasuringUnitsUseCase>(() =>
        _i174.ClearFuelMeasuringUnitsUseCase(
            gh<_i57.FuelMeasuringUnitsRepository>()));
    gh.factory<_i175.ClearFuelOctaneNumberUseCase>(() =>
        _i175.ClearFuelOctaneNumberUseCase(
            gh<_i60.FuelOctaneNumberRepository>()));
    gh.factory<_i176.ClearGenderUseCase>(
        () => _i176.ClearGenderUseCase(gh<_i63.GenderRepository>()));
    gh.factory<_i177.ClearMetricUnitsUseCase>(
        () => _i177.ClearMetricUnitsUseCase(gh<_i95.MetricUnitsRepository>()));
    gh.factory<_i178.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i178.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i98.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i179.ClearMonthUseCase>(
        () => _i179.ClearMonthUseCase(gh<_i101.MonthRepository>()));
    gh.factory<_i180.ClearPaymentMethodsUseCase>(() =>
        _i180.ClearPaymentMethodsUseCase(gh<_i105.PaymentMethodsRepository>()));
    gh.factory<_i181.ClearPressureUnitsUseCase>(() =>
        _i181.ClearPressureUnitsUseCase(gh<_i108.PressureUnitsRepository>()));
    gh.factory<_i182.ClearRecurrencePeriodTypesUseCase>(() =>
        _i182.ClearRecurrencePeriodTypesUseCase(
            gh<_i111.RecurrencePeriodTypesRepository>()));
    gh.factory<_i183.ClearReminderTypeServiceUseCase>(() =>
        _i183.ClearReminderTypeServiceUseCase(
            gh<_i114.ReminderTypeServiceRepository>()));
    gh.factory<_i184.ClearReminderTypeUseCase>(() =>
        _i184.ClearReminderTypeUseCase(gh<_i117.ReminderTypesRepository>()));
    gh.factory<_i185.ClearRideTypesUseCase>(
        () => _i185.ClearRideTypesUseCase(gh<_i120.RideTypesRepository>()));
    gh.factory<_i186.ClearServiceTypesUseCase>(() =>
        _i186.ClearServiceTypesUseCase(gh<_i144.ServiceTypesRepository>()));
    gh.factory<_i187.ClearServicesDepartmentsUseCase>(() =>
        _i187.ClearServicesDepartmentsUseCase(
            gh<_i146.ServicesDepartmentsRepository>()));
    gh.factory<_i188.ClearWeatherUnitsUseCase>(() =>
        _i188.ClearWeatherUnitsUseCase(gh<_i154.WeatherUnitsRepository>()));
    gh.factory<_i189.ClearWorkflowStatusesUseCase>(() =>
        _i189.ClearWorkflowStatusesUseCase(
            gh<_i157.WorkflowStatusesRepository>()));
    gh.factory<_i190.CountryCubit>(() => _i190.CountryCubit(
          gh<_i37.CountryUseCase>(),
          gh<_i123.SaveCountriesUseCase>(),
          gh<_i167.ClearCountryUseCase>(),
        ));
    gh.factory<_i191.CurrencyCubit>(() => _i191.CurrencyCubit(
          gh<_i168.ClearCurrencyUseCase>(),
          gh<_i66.GetAllCurrencyUseCase>(),
          gh<_i124.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i192.DepartmentServiceItemsCubit>(
        () => _i192.DepartmentServiceItemsCubit(
              gh<_i169.ClearDepartmentServiceItemsUseCase>(),
              gh<_i67.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i125.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i193.DownloadGenderUseCase>(
        () => _i193.DownloadGenderUseCase(gh<_i63.GenderRepository>()));
    gh.factory<_i194.DownloadPaymentMethodsUseCase>(() =>
        _i194.DownloadPaymentMethodsUseCase(
            gh<_i105.PaymentMethodsRepository>()));
    gh.factory<_i195.DownloadRideTypesUseCase>(
        () => _i195.DownloadRideTypesUseCase(gh<_i120.RideTypesRepository>()));
    gh.factory<_i196.DownloadWeatherUnitsUseCase>(() =>
        _i196.DownloadWeatherUnitsUseCase(gh<_i154.WeatherUnitsRepository>()));
    gh.factory<_i197.EngineFuelTypesCubit>(() => _i197.EngineFuelTypesCubit(
          gh<_i170.ClearEngineFuelTypesUseCase>(),
          gh<_i68.GetAllEngineFuelTypesUseCase>(),
          gh<_i126.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i198.EngineTransmissionTypesCubit>(
        () => _i198.EngineTransmissionTypesCubit(
              gh<_i171.ClearEngineTransmissionTypesUseCase>(),
              gh<_i69.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i127.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i199.FuelBrandsCubit>(() => _i199.FuelBrandsCubit(
          gh<_i172.ClearFuelBrandsUseCase>(),
          gh<_i70.GetAllFuelBrandUseCase>(),
          gh<_i128.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i200.FuelConsumptionUnitTypesCubit>(
        () => _i200.FuelConsumptionUnitTypesCubit(
              gh<_i173.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i71.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i129.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i201.FuelMeasuringUnitsCubit>(
        () => _i201.FuelMeasuringUnitsCubit(
              gh<_i174.ClearFuelMeasuringUnitsUseCase>(),
              gh<_i72.GetAllFuelMeasuringUnitsUseCase>(),
              gh<_i130.SaveFuelMeasuringUnitsInLocalDbUseCase>(),
            ));
    gh.factory<_i202.FuelOctaneNumberCubit>(() => _i202.FuelOctaneNumberCubit(
          gh<_i175.ClearFuelOctaneNumberUseCase>(),
          gh<_i73.GetAllFuelOctaneNumberUseCase>(),
          gh<_i131.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i203.GenderCubit>(() => _i203.GenderCubit(
          gh<_i176.ClearGenderUseCase>(),
          gh<_i193.DownloadGenderUseCase>(),
          gh<_i132.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i204.GetAllMetricUnitsUseCase>(
        () => _i204.GetAllMetricUnitsUseCase(gh<_i95.MetricUnitsRepository>()));
    gh.factory<_i205.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i205.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i98.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i206.GetAllPressureUnitsUseCase>(() =>
        _i206.GetAllPressureUnitsUseCase(gh<_i108.PressureUnitsRepository>()));
    gh.factory<_i207.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i207.GetAllRecurrencePeriodTypesUseCase(
            gh<_i111.RecurrencePeriodTypesRepository>()));
    gh.factory<_i208.GetAllReminderTypeServiceUseCase>(() =>
        _i208.GetAllReminderTypeServiceUseCase(
            gh<_i114.ReminderTypeServiceRepository>()));
    gh.factory<_i209.GetAllServiceTypesUseCase>(() =>
        _i209.GetAllServiceTypesUseCase(gh<_i144.ServiceTypesRepository>()));
    gh.factory<_i210.GetAllServicesDepartmentsUseCase>(() =>
        _i210.GetAllServicesDepartmentsUseCase(
            gh<_i146.ServicesDepartmentsRepository>()));
    gh.factory<_i211.GetAllWorkflowStatusesUseCase>(() =>
        _i211.GetAllWorkflowStatusesUseCase(
            gh<_i157.WorkflowStatusesRepository>()));
    gh.factory<_i212.GetCountriesCubit>(
        () => _i212.GetCountriesCubit(gh<_i78.GetCountriesUseCase>()));
    gh.factory<_i213.GetGenderFromLocalDbUseCase>(() =>
        _i213.GetGenderFromLocalDbUseCase(
            gh<_i79.GetGendersFromLocalDbRepository>()));
    gh.factory<_i214.GetLanguagesUseCase>(
        () => _i214.GetLanguagesUseCase(gh<_i92.LanguageRepository>()));
    gh.factory<_i215.GetMonthsUseCase>(
        () => _i215.GetMonthsUseCase(gh<_i101.MonthRepository>()));
    gh.factory<_i216.GetMyRidesRepository>(
        () => _i217.GetMyRidesRepositoryImpl(gh<_i81.GetRidesDataSource>()));
    gh.factory<_i218.GetMyRidesUseCase>(
        () => _i218.GetMyRidesUseCase(gh<_i216.GetMyRidesRepository>()));
    gh.factory<_i219.GetReminderTypesUseCase>(() =>
        _i219.GetReminderTypesUseCase(gh<_i117.ReminderTypesRepository>()));
    gh.factory<_i220.GetUserInfoCubit>(
        () => _i220.GetUserInfoCubit(gh<_i85.GetUserInfoUseCase>()));
    gh.factory<_i221.LanguageCubit>(
        () => _i221.LanguageCubit(gh<_i214.GetLanguagesUseCase>()));
    gh.factory<_i222.MetricUnitsCubit>(() => _i222.MetricUnitsCubit(
          gh<_i177.ClearMetricUnitsUseCase>(),
          gh<_i204.GetAllMetricUnitsUseCase>(),
          gh<_i133.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i223.ModelGenerationSpecificationKeysCubit>(
        () => _i223.ModelGenerationSpecificationKeysCubit(
              gh<_i178.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i205.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i134.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i224.MonthCubit>(() => _i224.MonthCubit(
          gh<_i215.GetMonthsUseCase>(),
          gh<_i135.SaveMonthsUseCase>(),
          gh<_i179.ClearMonthUseCase>(),
        ));
    gh.factory<_i225.PaymentMethodsCubit>(() => _i225.PaymentMethodsCubit(
          gh<_i180.ClearPaymentMethodsUseCase>(),
          gh<_i194.DownloadPaymentMethodsUseCase>(),
          gh<_i136.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i226.PressureUnitsCubit>(() => _i226.PressureUnitsCubit(
          gh<_i37.CountryUseCase>(),
          gh<_i137.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i181.ClearPressureUnitsUseCase>(),
          gh<_i206.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i227.RecurrencePeriodTypesCubit>(
        () => _i227.RecurrencePeriodTypesCubit(
              gh<_i182.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i207.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i138.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i228.ReminderTypeServiceCubit>(
        () => _i228.ReminderTypeServiceCubit(
              gh<_i183.ClearReminderTypeServiceUseCase>(),
              gh<_i208.GetAllReminderTypeServiceUseCase>(),
              gh<_i139.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i229.ReminderTypesCubit>(() => _i229.ReminderTypesCubit(
          gh<_i219.GetReminderTypesUseCase>(),
          gh<_i140.SaveReminderTypesUseCase>(),
          gh<_i184.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i230.RideTypesCubit>(() => _i230.RideTypesCubit(
          gh<_i185.ClearRideTypesUseCase>(),
          gh<_i195.DownloadRideTypesUseCase>(),
          gh<_i141.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i231.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i231.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i146.ServicesDepartmentsRepository>()));
    gh.factory<_i232.SaveServiceTypesInLocalDbUseCase>(() =>
        _i232.SaveServiceTypesInLocalDbUseCase(
            gh<_i144.ServiceTypesRepository>()));
    gh.factory<_i233.SaveWeatherUnitsDataInLocalDb>(() =>
        _i233.SaveWeatherUnitsDataInLocalDb(
            gh<_i154.WeatherUnitsRepository>()));
    gh.factory<_i234.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i234.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i157.WorkflowStatusesRepository>()));
    gh.factory<_i235.ServiceDepartmentsCubit>(
        () => _i235.ServiceDepartmentsCubit(
              gh<_i187.ClearServicesDepartmentsUseCase>(),
              gh<_i210.GetAllServicesDepartmentsUseCase>(),
              gh<_i231.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i236.ServiceTypesCubit>(() => _i236.ServiceTypesCubit(
          gh<_i186.ClearServiceTypesUseCase>(),
          gh<_i209.GetAllServiceTypesUseCase>(),
          gh<_i232.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i237.UpdateUserDataUseCase>(
        () => _i237.UpdateUserDataUseCase(gh<_i148.UpdateUserRepository>()));
    gh.factory<_i238.WeatherUnitsCubit>(() => _i238.WeatherUnitsCubit(
          gh<_i188.ClearWeatherUnitsUseCase>(),
          gh<_i196.DownloadWeatherUnitsUseCase>(),
          gh<_i233.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i239.WorkflowStatusesCubit>(() => _i239.WorkflowStatusesCubit(
          gh<_i189.ClearWorkflowStatusesUseCase>(),
          gh<_i211.GetAllWorkflowStatusesUseCase>(),
          gh<_i234.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    gh.factory<_i240.GetGenderCubit>(
        () => _i240.GetGenderCubit(gh<_i213.GetGenderFromLocalDbUseCase>()));
    gh.factory<_i241.GetMyRidesCubit>(
        () => _i241.GetMyRidesCubit(gh<_i218.GetMyRidesUseCase>()));
    gh.factory<_i242.UpdateUserDataCubit>(
        () => _i242.UpdateUserDataCubit(gh<_i237.UpdateUserDataUseCase>()));
    return this;
  }
}
