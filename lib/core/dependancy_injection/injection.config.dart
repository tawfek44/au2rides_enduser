// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i84;
import 'package:au2rides/core/repositories/user_repository.dart' as _i130;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i67;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i59;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i61;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i60;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i62;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i184;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i7;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i23;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i27;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i30;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i33;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i39;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i42;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i45;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i48;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i75;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i78;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i81;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i85;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i91;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i94;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i97;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i100;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i122;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i123;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i131;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i134;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i13;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i25;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i29;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i38;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i41;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i44;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i47;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i50;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i77;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i80;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i83;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i87;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i96;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i99;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i102;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i125;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i127;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i133;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i136;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i12;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i24;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i28;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i34;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i37;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i40;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i43;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i46;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i49;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i76;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i79;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i82;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i86;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i95;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i98;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i101;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i124;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i22;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i51;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i14;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i141;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i26;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i104;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i142;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i52;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i143;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i54;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i107;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i145;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i55;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i108;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i146;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i109;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i147;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i57;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i110;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i148;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i111;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i149;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i166;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i112;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i150;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i113;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i151;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i177;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i114;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i152;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i186;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i115;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i153;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i116;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i154;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i178;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i155;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i179;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i180;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i187;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i120;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i121;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i181;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i200;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i160;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i182;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i199;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i201;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i183;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i202;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i137;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i138;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i163;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i164;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i165;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i170;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i171;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i172;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i173;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i174;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i175;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i190;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i191;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i192;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i193;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i194;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i195;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i196;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i197;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i198;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i203;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i204;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i205;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i206;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i6;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i63;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i65;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i129;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i64;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i128;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i66;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i188;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i72;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i74;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i73;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i185;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i189;
import 'package:au2rides/features/login_screen/data/data_scource/check_user_existance_in_local_db_data_source.dart'
    as _i19;
import 'package:au2rides/features/login_screen/data/data_scource/login_database.dart'
    as _i8;
import 'package:au2rides/features/login_screen/data/repositories/authorize_mobile_number_repository_impl.dart'
    as _i10;
import 'package:au2rides/features/login_screen/data/repositories/check_user_existence_in_local_db_repository_impl.dart'
    as _i21;
import 'package:au2rides/features/login_screen/domain/repositories/authoriza_mobile_number_repository.dart'
    as _i9;
import 'package:au2rides/features/login_screen/domain/repositories/check_user_existence_in_local_db_repository.dart'
    as _i20;
import 'package:au2rides/features/login_screen/domain/use_cases/authorize_mobile_number/authroize_mobile_number_usecase.dart'
    as _i11;
import 'package:au2rides/features/login_screen/presentation/bloc/authorize_mobile_number_cubit/authorize_mobile_number_cubit.dart'
    as _i139;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i15;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i68;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i17;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i70;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i16;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i69;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i18;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i71;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i140;
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
    gh.factory<_i6.AddUserInLocalDbDatasource>(
        () => _i6.AddUserInLocalDbDatasourceImp());
    gh.factory<_i7.AuthorizeDataSource>(() => _i7.AuthorizeDataSourceImpl());
    gh.factory<_i8.AuthorizeMobileNumberDatasource>(
        () => _i8.LoginDatasourceImp());
    gh.factory<_i9.AuthorizeMobileNumberRepository>(() =>
        _i10.AuthorizeMobileNumberRepositoryImpl(
            gh<_i8.AuthorizeMobileNumberDatasource>()));
    gh.factory<_i11.AuthorizeMobileNumberUseCase>(() =>
        _i11.AuthorizeMobileNumberUseCase(
            gh<_i9.AuthorizeMobileNumberRepository>()));
    gh.factory<_i12.AuthorizeRepository>(
        () => _i13.AuthorizeRepositoryImpl(gh<_i7.AuthorizeDataSource>()));
    gh.factory<_i14.AuthorizeUseCase>(
        () => _i14.AuthorizeUseCase(gh<_i12.AuthorizeRepository>()));
    gh.factory<_i15.CheckPrimaryDataDataSource>(
        () => _i15.CheckPrimaryDataDataSource());
    gh.factory<_i16.CheckPrimaryDataRepository>(() =>
        _i17.CheckPrimaryDataRepositoryImpl(
            gh<_i15.CheckPrimaryDataDataSource>()));
    gh.factory<_i18.CheckPrimaryDataUseCase>(() =>
        _i18.CheckPrimaryDataUseCase(gh<_i16.CheckPrimaryDataRepository>()));
    gh.factory<_i19.CheckUserExistInLocalDbDatasource>(
        () => _i19.CheckUserExistInLocalDbDatasourceImp());
    gh.factory<_i20.CheckUserExistenceInLocalDbRepository>(() =>
        _i21.CheckUserExistenceInLocalDbRepositoryImpl(
            checkUserExistInLocalDbDatasource:
                gh<_i19.CheckUserExistInLocalDbDatasource>()));
    gh.factory<_i22.ClearAcquisitionTypesUseCase>(() =>
        _i22.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i23.CountryDataSource>(() => _i23.CountryDataSource());
    gh.factory<_i24.CountryRepository>(
        () => _i25.CountryRepositoryImpl(gh<_i23.CountryDataSource>()));
    gh.factory<_i26.CountryUseCase>(
        () => _i26.CountryUseCase(gh<_i24.CountryRepository>()));
    gh.factory<_i27.CurrencyDataSource>(() => _i27.CurrencyDataSource());
    gh.factory<_i28.CurrencyRepository>(
        () => _i29.CurrencyRepositoryImpl(gh<_i27.CurrencyDataSource>()));
    gh.factory<_i30.DepartmentServiceItemsDataSource>(
        () => _i30.DepartmentServiceItemsDataSource());
    gh.factory<_i31.DepartmentServiceItemsRepository>(() =>
        _i32.DepartmentServiceItemsRepositoryImpl(
            gh<_i30.DepartmentServiceItemsDataSource>()));
    gh.factory<_i33.EngineFuelTypesDataSource>(
        () => _i33.EngineFuelTypesDataSource());
    gh.factory<_i34.EngineFuelTypesRepository>(() =>
        _i35.EngineFuelTypesRepositoryImpl(
            gh<_i33.EngineFuelTypesDataSource>()));
    gh.factory<_i36.EngineTransmissionTypesDataSource>(
        () => _i36.EngineTransmissionTypesDataSource());
    gh.factory<_i37.EngineTransmissionTypesRepository>(() =>
        _i38.EngineTransmissionTypesRepositoryImpl(
            gh<_i36.EngineTransmissionTypesDataSource>()));
    gh.factory<_i39.FuelBrandsDataSource>(() => _i39.FuelBrandsDataSource());
    gh.factory<_i40.FuelBrandsRepository>(
        () => _i41.FuelBrandsRepositoryImpl(gh<_i39.FuelBrandsDataSource>()));
    gh.factory<_i42.FuelConsumptionUnitTypesDataSource>(
        () => _i42.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i43.FuelConsumptionUnitTypesRepository>(() =>
        _i44.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i42.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i45.FuelOctaneNumberDataSource>(
        () => _i45.FuelOctaneNumberDataSource());
    gh.factory<_i46.FuelOctaneNumberRepository>(() =>
        _i47.FuelOctaneNumberRepositoryImpl(
            gh<_i45.FuelOctaneNumberDataSource>()));
    gh.factory<_i48.GenderDataSource>(() => _i48.GenderDataSource());
    gh.factory<_i49.GenderRepository>(
        () => _i50.GenderRepositoryImpl(gh<_i48.GenderDataSource>()));
    gh.factory<_i51.GetAllAcquisitionTypesUseCase>(() =>
        _i51.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i52.GetAllCurrencyUseCase>(
        () => _i52.GetAllCurrencyUseCase(gh<_i28.CurrencyRepository>()));
    gh.factory<_i53.GetAllDepartmentServiceItemsUseCase>(() =>
        _i53.GetAllDepartmentServiceItemsUseCase(
            gh<_i31.DepartmentServiceItemsRepository>()));
    gh.factory<_i54.GetAllEngineFuelTypesUseCase>(() =>
        _i54.GetAllEngineFuelTypesUseCase(
            gh<_i34.EngineFuelTypesRepository>()));
    gh.factory<_i55.GetAllEngineTransmissionTypesUseCase>(() =>
        _i55.GetAllEngineTransmissionTypesUseCase(
            gh<_i37.EngineTransmissionTypesRepository>()));
    gh.factory<_i56.GetAllFuelBrandUseCase>(
        () => _i56.GetAllFuelBrandUseCase(gh<_i40.FuelBrandsRepository>()));
    gh.factory<_i57.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i57.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i43.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i58.GetAllFuelOctaneNumberUseCase>(() =>
        _i58.GetAllFuelOctaneNumberUseCase(
            gh<_i46.FuelOctaneNumberRepository>()));
    gh.factory<_i59.GetCountriesDataSource>(
        () => _i59.GetCountriesDataSource());
    gh.factory<_i60.GetCountriesRepository>(() =>
        _i61.GetCountriesRepositoryImpl(gh<_i59.GetCountriesDataSource>()));
    gh.factory<_i62.GetCountriesUseCase>(
        () => _i62.GetCountriesUseCase(gh<_i60.GetCountriesRepository>()));
    gh.factory<_i63.GetUserDataFromNetworkDatasource>(
        () => _i63.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i64.GetUserInfoFromNetworkRepository>(() =>
        _i65.GetUserInfoRepositoryImpl(
            gh<_i63.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i66.GetUserInfoUseCase>(() =>
        _i66.GetUserInfoUseCase(gh<_i64.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i67.IPrefsManager>(
      () => _i67.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i68.IsDownloadedDataSource>(
        () => _i68.IsDownloadedDataSource());
    gh.factory<_i69.IsDownloadedRepository>(
        () => _i70.IsDownloadedImpl(gh<_i68.IsDownloadedDataSource>()));
    gh.factory<_i71.IsDownloadedUseCase>(
        () => _i71.IsDownloadedUseCase(gh<_i69.IsDownloadedRepository>()));
    gh.factory<_i72.LanguageLocalDatabase>(() => _i72.LanguageLocalDatabase());
    gh.factory<_i73.LanguageRepository>(
        () => _i74.LanguageRepositoryImpl(gh<_i72.LanguageLocalDatabase>()));
    gh.factory<_i75.MetricUnitsDataSource>(() => _i75.MetricUnitsDataSource());
    gh.factory<_i76.MetricUnitsRepository>(
        () => _i77.MetricUnitsRepositoryImpl(gh<_i75.MetricUnitsDataSource>()));
    gh.factory<_i78.ModelGenerationSpecificationKeysDataSource>(
        () => _i78.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i79.ModelGenerationSpecificationKeysRepository>(() =>
        _i80.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i78.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i81.MonthDataSource>(() => _i81.MonthDataSource());
    gh.factory<_i82.MonthRepository>(
        () => _i83.MonthRepositoryImpl(gh<_i81.MonthDataSource>()));
    gh.factory<_i84.NetworkInfo>(() => _i84.NetworkInfoImpl.create());
    gh.factory<_i85.PaymentMethodsDataSource>(
        () => _i85.PaymentMethodsDataSource());
    gh.factory<_i86.PaymentMethodsRepository>(() =>
        _i87.PaymentMethodsRepositoryImpl(gh<_i85.PaymentMethodsDataSource>()));
    gh.factory<_i88.PressureUnitsDataSource>(
        () => _i88.PressureUnitsDataSource());
    gh.factory<_i89.PressureUnitsRepository>(() =>
        _i90.PressureUnitsRepositoryImpl(gh<_i88.PressureUnitsDataSource>()));
    gh.factory<_i91.RecurrencePeriodTypesDataSource>(
        () => _i91.RecurrencePeriodTypesDataSource());
    gh.factory<_i92.RecurrencePeriodTypesRepository>(() =>
        _i93.RecurrencePeriodTypesRepositoryImpl(
            gh<_i91.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i94.ReminderTypeServiceDataSource>(
        () => _i94.ReminderTypeServiceDataSource());
    gh.factory<_i95.ReminderTypeServiceRepository>(() =>
        _i96.ReminderTypeServiceRepositoryImpl(
            gh<_i94.ReminderTypeServiceDataSource>()));
    gh.factory<_i97.ReminderTypesDataSource>(
        () => _i97.ReminderTypesDataSource());
    gh.factory<_i98.ReminderTypesRepository>(() =>
        _i99.ReminderTypesRepositoryImpl(gh<_i97.ReminderTypesDataSource>()));
    gh.factory<_i100.RideTypesDataSource>(() => _i100.RideTypesDataSource());
    gh.factory<_i101.RideTypesRepository>(
        () => _i102.RideTypesRepositoryImpl(gh<_i100.RideTypesDataSource>()));
    gh.factory<_i103.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i103.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i104.SaveCountriesUseCase>(
        () => _i104.SaveCountriesUseCase(gh<_i24.CountryRepository>()));
    gh.factory<_i105.SaveCurrenciesInLocalDbUseCase>(() =>
        _i105.SaveCurrenciesInLocalDbUseCase(gh<_i28.CurrencyRepository>()));
    gh.factory<_i106.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i106.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i31.DepartmentServiceItemsRepository>()));
    gh.factory<_i107.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i107.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i34.EngineFuelTypesRepository>()));
    gh.factory<_i108.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i108.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i37.EngineTransmissionTypesRepository>()));
    gh.factory<_i109.SaveFuelBrandInLocalDbUseCase>(() =>
        _i109.SaveFuelBrandInLocalDbUseCase(gh<_i40.FuelBrandsRepository>()));
    gh.factory<_i110.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i110.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i43.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i111.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i111.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i46.FuelOctaneNumberRepository>()));
    gh.factory<_i112.SaveGenderDataInLocalDb>(
        () => _i112.SaveGenderDataInLocalDb(gh<_i49.GenderRepository>()));
    gh.factory<_i113.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i113.SaveMetricUnitsInLocalDbUseCase(
            gh<_i76.MetricUnitsRepository>()));
    gh.factory<_i114.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i114.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i79.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i115.SaveMonthsUseCase>(
        () => _i115.SaveMonthsUseCase(gh<_i82.MonthRepository>()));
    gh.factory<_i116.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i116.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i86.PaymentMethodsRepository>()));
    gh.factory<_i117.SavePressureUnitsInLocalDbUseCase>(() =>
        _i117.SavePressureUnitsInLocalDbUseCase(
            gh<_i89.PressureUnitsRepository>()));
    gh.factory<_i118.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i118.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i92.RecurrencePeriodTypesRepository>()));
    gh.factory<_i119.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i119.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i95.ReminderTypeServiceRepository>()));
    gh.factory<_i120.SaveReminderTypesUseCase>(() =>
        _i120.SaveReminderTypesUseCase(gh<_i98.ReminderTypesRepository>()));
    gh.factory<_i121.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i121.SaveRideTypesDataInLocalDbUseCase(
            gh<_i101.RideTypesRepository>()));
    gh.factory<_i122.ServiceDepartmentsDataSource>(
        () => _i122.ServiceDepartmentsDataSource());
    gh.factory<_i123.ServiceTypesDataSource>(
        () => _i123.ServiceTypesDataSource());
    gh.factory<_i124.ServiceTypesRepository>(() =>
        _i125.ServiceTypesRepositoryImpl(gh<_i123.ServiceTypesDataSource>()));
    gh.factory<_i126.ServicesDepartmentsRepository>(() =>
        _i127.ServiceDepartmentsRepositoryImpl(
            gh<_i122.ServiceDepartmentsDataSource>()));
    gh.factory<_i128.UserAccountRepository>(
        () => _i129.UserRepositoryImpl(gh<_i6.AddUserInLocalDbDatasource>()));
    gh.singleton<_i130.UserRepository>(_i130.UserRepository.create(
        gh<_i67.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i131.WeatherUnitsDataSource>(
        () => _i131.WeatherUnitsDataSource());
    gh.factory<_i132.WeatherUnitsRepository>(() =>
        _i133.WeatherUnitsRepositoryImpl(gh<_i131.WeatherUnitsDataSource>()));
    gh.factory<_i134.WorkflowStatusesDataSource>(
        () => _i134.WorkflowStatusesDataSource());
    gh.factory<_i135.WorkflowStatusesRepository>(() =>
        _i136.WorkflowStatusesRepositoryImpl(
            gh<_i134.WorkflowStatusesDataSource>()));
    gh.factory<_i137.AcquisitionTypesCubit>(() => _i137.AcquisitionTypesCubit(
          gh<_i22.ClearAcquisitionTypesUseCase>(),
          gh<_i51.GetAllAcquisitionTypesUseCase>(),
          gh<_i103.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i138.AuthorizeCubit>(
        () => _i138.AuthorizeCubit(gh<_i14.AuthorizeUseCase>()));
    gh.factory<_i139.AuthorizeMobileNumberCubit>(() =>
        _i139.AuthorizeMobileNumberCubit(
            gh<_i11.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i140.CheckPrimaryDataCubit>(() => _i140.CheckPrimaryDataCubit(
          gh<_i18.CheckPrimaryDataUseCase>(),
          gh<_i71.IsDownloadedUseCase>(),
        ));
    gh.factory<_i141.ClearCountryUseCase>(
        () => _i141.ClearCountryUseCase(gh<_i24.CountryRepository>()));
    gh.factory<_i142.ClearCurrencyUseCase>(
        () => _i142.ClearCurrencyUseCase(gh<_i28.CurrencyRepository>()));
    gh.factory<_i143.ClearDepartmentServiceItemsUseCase>(() =>
        _i143.ClearDepartmentServiceItemsUseCase(
            gh<_i31.DepartmentServiceItemsRepository>()));
    gh.factory<_i144.ClearEngineFuelTypesUseCase>(() =>
        _i144.ClearEngineFuelTypesUseCase(
            gh<_i34.EngineFuelTypesRepository>()));
    gh.factory<_i145.ClearEngineTransmissionTypesUseCase>(() =>
        _i145.ClearEngineTransmissionTypesUseCase(
            gh<_i37.EngineTransmissionTypesRepository>()));
    gh.factory<_i146.ClearFuelBrandsUseCase>(
        () => _i146.ClearFuelBrandsUseCase(gh<_i40.FuelBrandsRepository>()));
    gh.factory<_i147.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i147.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i43.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i148.ClearFuelOctaneNumberUseCase>(() =>
        _i148.ClearFuelOctaneNumberUseCase(
            gh<_i46.FuelOctaneNumberRepository>()));
    gh.factory<_i149.ClearGenderUseCase>(
        () => _i149.ClearGenderUseCase(gh<_i49.GenderRepository>()));
    gh.factory<_i150.ClearMetricUnitsUseCase>(
        () => _i150.ClearMetricUnitsUseCase(gh<_i76.MetricUnitsRepository>()));
    gh.factory<_i151.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i151.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i79.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i152.ClearMonthUseCase>(
        () => _i152.ClearMonthUseCase(gh<_i82.MonthRepository>()));
    gh.factory<_i153.ClearPaymentMethodsUseCase>(() =>
        _i153.ClearPaymentMethodsUseCase(gh<_i86.PaymentMethodsRepository>()));
    gh.factory<_i154.ClearPressureUnitsUseCase>(() =>
        _i154.ClearPressureUnitsUseCase(gh<_i89.PressureUnitsRepository>()));
    gh.factory<_i155.ClearRecurrencePeriodTypesUseCase>(() =>
        _i155.ClearRecurrencePeriodTypesUseCase(
            gh<_i92.RecurrencePeriodTypesRepository>()));
    gh.factory<_i156.ClearReminderTypeServiceUseCase>(() =>
        _i156.ClearReminderTypeServiceUseCase(
            gh<_i95.ReminderTypeServiceRepository>()));
    gh.factory<_i157.ClearReminderTypeUseCase>(() =>
        _i157.ClearReminderTypeUseCase(gh<_i98.ReminderTypesRepository>()));
    gh.factory<_i158.ClearRideTypesUseCase>(
        () => _i158.ClearRideTypesUseCase(gh<_i101.RideTypesRepository>()));
    gh.factory<_i159.ClearServiceTypesUseCase>(() =>
        _i159.ClearServiceTypesUseCase(gh<_i124.ServiceTypesRepository>()));
    gh.factory<_i160.ClearServicesDepartmentsUseCase>(() =>
        _i160.ClearServicesDepartmentsUseCase(
            gh<_i126.ServicesDepartmentsRepository>()));
    gh.factory<_i161.ClearWeatherUnitsUseCase>(() =>
        _i161.ClearWeatherUnitsUseCase(gh<_i132.WeatherUnitsRepository>()));
    gh.factory<_i162.ClearWorkflowStatusesUseCase>(() =>
        _i162.ClearWorkflowStatusesUseCase(
            gh<_i135.WorkflowStatusesRepository>()));
    gh.factory<_i163.CountryCubit>(() => _i163.CountryCubit(
          gh<_i26.CountryUseCase>(),
          gh<_i104.SaveCountriesUseCase>(),
          gh<_i141.ClearCountryUseCase>(),
        ));
    gh.factory<_i164.CurrencyCubit>(() => _i164.CurrencyCubit(
          gh<_i142.ClearCurrencyUseCase>(),
          gh<_i52.GetAllCurrencyUseCase>(),
          gh<_i105.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i165.DepartmentServiceItemsCubit>(
        () => _i165.DepartmentServiceItemsCubit(
              gh<_i143.ClearDepartmentServiceItemsUseCase>(),
              gh<_i53.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i106.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i166.DownloadGenderUseCase>(
        () => _i166.DownloadGenderUseCase(gh<_i49.GenderRepository>()));
    gh.factory<_i167.DownloadPaymentMethodsUseCase>(() =>
        _i167.DownloadPaymentMethodsUseCase(
            gh<_i86.PaymentMethodsRepository>()));
    gh.factory<_i168.DownloadRideTypesUseCase>(
        () => _i168.DownloadRideTypesUseCase(gh<_i101.RideTypesRepository>()));
    gh.factory<_i169.DownloadWeatherUnitsUseCase>(() =>
        _i169.DownloadWeatherUnitsUseCase(gh<_i132.WeatherUnitsRepository>()));
    gh.factory<_i170.EngineFuelTypesCubit>(() => _i170.EngineFuelTypesCubit(
          gh<_i144.ClearEngineFuelTypesUseCase>(),
          gh<_i54.GetAllEngineFuelTypesUseCase>(),
          gh<_i107.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i171.EngineTransmissionTypesCubit>(
        () => _i171.EngineTransmissionTypesCubit(
              gh<_i145.ClearEngineTransmissionTypesUseCase>(),
              gh<_i55.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i108.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i172.FuelBrandsCubit>(() => _i172.FuelBrandsCubit(
          gh<_i146.ClearFuelBrandsUseCase>(),
          gh<_i56.GetAllFuelBrandUseCase>(),
          gh<_i109.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i173.FuelConsumptionUnitTypesCubit>(
        () => _i173.FuelConsumptionUnitTypesCubit(
              gh<_i147.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i57.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i110.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i174.FuelOctaneNumberCubit>(() => _i174.FuelOctaneNumberCubit(
          gh<_i148.ClearFuelOctaneNumberUseCase>(),
          gh<_i58.GetAllFuelOctaneNumberUseCase>(),
          gh<_i111.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i175.GenderCubit>(() => _i175.GenderCubit(
          gh<_i149.ClearGenderUseCase>(),
          gh<_i166.DownloadGenderUseCase>(),
          gh<_i112.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i176.GetAllMetricUnitsUseCase>(
        () => _i176.GetAllMetricUnitsUseCase(gh<_i76.MetricUnitsRepository>()));
    gh.factory<_i177.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i177.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i79.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i178.GetAllPressureUnitsUseCase>(() =>
        _i178.GetAllPressureUnitsUseCase(gh<_i89.PressureUnitsRepository>()));
    gh.factory<_i179.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i179.GetAllRecurrencePeriodTypesUseCase(
            gh<_i92.RecurrencePeriodTypesRepository>()));
    gh.factory<_i180.GetAllReminderTypeServiceUseCase>(() =>
        _i180.GetAllReminderTypeServiceUseCase(
            gh<_i95.ReminderTypeServiceRepository>()));
    gh.factory<_i181.GetAllServiceTypesUseCase>(() =>
        _i181.GetAllServiceTypesUseCase(gh<_i124.ServiceTypesRepository>()));
    gh.factory<_i182.GetAllServicesDepartmentsUseCase>(() =>
        _i182.GetAllServicesDepartmentsUseCase(
            gh<_i126.ServicesDepartmentsRepository>()));
    gh.factory<_i183.GetAllWorkflowStatusesUseCase>(() =>
        _i183.GetAllWorkflowStatusesUseCase(
            gh<_i135.WorkflowStatusesRepository>()));
    gh.factory<_i184.GetCountriesCubit>(
        () => _i184.GetCountriesCubit(gh<_i62.GetCountriesUseCase>()));
    gh.factory<_i185.GetLanguagesUseCase>(
        () => _i185.GetLanguagesUseCase(gh<_i73.LanguageRepository>()));
    gh.factory<_i186.GetMonthsUseCase>(
        () => _i186.GetMonthsUseCase(gh<_i82.MonthRepository>()));
    gh.factory<_i187.GetReminderTypesUseCase>(() =>
        _i187.GetReminderTypesUseCase(gh<_i98.ReminderTypesRepository>()));
    gh.factory<_i188.GetUserInfoCubit>(
        () => _i188.GetUserInfoCubit(gh<_i66.GetUserInfoUseCase>()));
    gh.factory<_i189.LanguageCubit>(
        () => _i189.LanguageCubit(gh<_i185.GetLanguagesUseCase>()));
    gh.factory<_i190.MetricUnitsCubit>(() => _i190.MetricUnitsCubit(
          gh<_i150.ClearMetricUnitsUseCase>(),
          gh<_i176.GetAllMetricUnitsUseCase>(),
          gh<_i113.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i191.ModelGenerationSpecificationKeysCubit>(
        () => _i191.ModelGenerationSpecificationKeysCubit(
              gh<_i151.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i177.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i114.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i192.MonthCubit>(() => _i192.MonthCubit(
          gh<_i186.GetMonthsUseCase>(),
          gh<_i115.SaveMonthsUseCase>(),
          gh<_i152.ClearMonthUseCase>(),
        ));
    gh.factory<_i193.PaymentMethodsCubit>(() => _i193.PaymentMethodsCubit(
          gh<_i153.ClearPaymentMethodsUseCase>(),
          gh<_i167.DownloadPaymentMethodsUseCase>(),
          gh<_i116.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i194.PressureUnitsCubit>(() => _i194.PressureUnitsCubit(
          gh<_i26.CountryUseCase>(),
          gh<_i117.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i154.ClearPressureUnitsUseCase>(),
          gh<_i178.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i195.RecurrencePeriodTypesCubit>(
        () => _i195.RecurrencePeriodTypesCubit(
              gh<_i155.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i179.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i118.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i196.ReminderTypeServiceCubit>(
        () => _i196.ReminderTypeServiceCubit(
              gh<_i156.ClearReminderTypeServiceUseCase>(),
              gh<_i180.GetAllReminderTypeServiceUseCase>(),
              gh<_i119.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i197.ReminderTypesCubit>(() => _i197.ReminderTypesCubit(
          gh<_i187.GetReminderTypesUseCase>(),
          gh<_i120.SaveReminderTypesUseCase>(),
          gh<_i157.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i198.RideTypesCubit>(() => _i198.RideTypesCubit(
          gh<_i158.ClearRideTypesUseCase>(),
          gh<_i168.DownloadRideTypesUseCase>(),
          gh<_i121.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i199.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i199.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i126.ServicesDepartmentsRepository>()));
    gh.factory<_i200.SaveServiceTypesInLocalDbUseCase>(() =>
        _i200.SaveServiceTypesInLocalDbUseCase(
            gh<_i124.ServiceTypesRepository>()));
    gh.factory<_i201.SaveWeatherUnitsDataInLocalDb>(() =>
        _i201.SaveWeatherUnitsDataInLocalDb(
            gh<_i132.WeatherUnitsRepository>()));
    gh.factory<_i202.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i202.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i135.WorkflowStatusesRepository>()));
    gh.factory<_i203.ServiceDepartmentsCubit>(
        () => _i203.ServiceDepartmentsCubit(
              gh<_i160.ClearServicesDepartmentsUseCase>(),
              gh<_i182.GetAllServicesDepartmentsUseCase>(),
              gh<_i199.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i204.ServiceTypesCubit>(() => _i204.ServiceTypesCubit(
          gh<_i159.ClearServiceTypesUseCase>(),
          gh<_i181.GetAllServiceTypesUseCase>(),
          gh<_i200.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i205.WeatherUnitsCubit>(() => _i205.WeatherUnitsCubit(
          gh<_i161.ClearWeatherUnitsUseCase>(),
          gh<_i169.DownloadWeatherUnitsUseCase>(),
          gh<_i201.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i206.WorkflowStatusesCubit>(() => _i206.WorkflowStatusesCubit(
          gh<_i162.ClearWorkflowStatusesUseCase>(),
          gh<_i183.GetAllWorkflowStatusesUseCase>(),
          gh<_i202.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    return this;
  }
}
