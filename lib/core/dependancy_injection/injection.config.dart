// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i95;
import 'package:au2rides/core/repositories/user_repository.dart' as _i143;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i78;
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
    as _i151;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i67;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i69;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i68;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i70;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i200;
import 'package:au2rides/features/download_screen/data/datasources/acquisition_types_datasource.dart'
    as _i3;
import 'package:au2rides/features/download_screen/data/datasources/authorize_datasource.dart'
    as _i14;
import 'package:au2rides/features/download_screen/data/datasources/country_datasource.dart'
    as _i30;
import 'package:au2rides/features/download_screen/data/datasources/currency_datasource.dart'
    as _i34;
import 'package:au2rides/features/download_screen/data/datasources/department_service_items_datasource.dart'
    as _i37;
import 'package:au2rides/features/download_screen/data/datasources/engine_fuel_types_datasource.dart'
    as _i40;
import 'package:au2rides/features/download_screen/data/datasources/engine_transmission_types_datasource.dart'
    as _i43;
import 'package:au2rides/features/download_screen/data/datasources/fuel_brands_datasource.dart'
    as _i46;
import 'package:au2rides/features/download_screen/data/datasources/fuel_consumption_unit_types_datasource.dart'
    as _i49;
import 'package:au2rides/features/download_screen/data/datasources/fuel_octane_number_datasource.dart'
    as _i52;
import 'package:au2rides/features/download_screen/data/datasources/gender_data_source.dart'
    as _i55;
import 'package:au2rides/features/download_screen/data/datasources/metric_units_datasource.dart'
    as _i86;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i89;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i92;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i96;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i99;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i102;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i105;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i108;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i111;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i133;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i134;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i144;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i147;
import 'package:au2rides/features/download_screen/data/repositories/acquisition_types_repository.dart'
    as _i5;
import 'package:au2rides/features/download_screen/data/repositories/authorize_repository.dart'
    as _i20;
import 'package:au2rides/features/download_screen/data/repositories/country_repository.dart'
    as _i32;
import 'package:au2rides/features/download_screen/data/repositories/currency_repository.dart'
    as _i36;
import 'package:au2rides/features/download_screen/data/repositories/department_service_items_repository.dart'
    as _i39;
import 'package:au2rides/features/download_screen/data/repositories/engine_fuel_types_repository.dart'
    as _i42;
import 'package:au2rides/features/download_screen/data/repositories/engine_transmission_types_repository.dart'
    as _i45;
import 'package:au2rides/features/download_screen/data/repositories/fuel_brands_repository.dart'
    as _i48;
import 'package:au2rides/features/download_screen/data/repositories/fuel_consumption_unit_types_repository.dart'
    as _i51;
import 'package:au2rides/features/download_screen/data/repositories/fuel_octane_number_repository.dart'
    as _i54;
import 'package:au2rides/features/download_screen/data/repositories/gender_repository.dart'
    as _i57;
import 'package:au2rides/features/download_screen/data/repositories/metric_units_repository.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i91;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i94;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i98;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i101;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i104;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i107;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i110;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i113;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i136;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i138;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i146;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i149;
import 'package:au2rides/features/download_screen/domain/repository/acquisition_types_repository.dart'
    as _i4;
import 'package:au2rides/features/download_screen/domain/repository/authorize_repository.dart'
    as _i19;
import 'package:au2rides/features/download_screen/domain/repository/country_repository.dart'
    as _i31;
import 'package:au2rides/features/download_screen/domain/repository/currency_repository.dart'
    as _i35;
import 'package:au2rides/features/download_screen/domain/repository/department_service_items_repository.dart'
    as _i38;
import 'package:au2rides/features/download_screen/domain/repository/engine_fuel_types_repository.dart'
    as _i41;
import 'package:au2rides/features/download_screen/domain/repository/engine_transmission_types_repository.dart'
    as _i44;
import 'package:au2rides/features/download_screen/domain/repository/fuel_brands_repository.dart'
    as _i47;
import 'package:au2rides/features/download_screen/domain/repository/fuel_consumption_unit_types_repository.dart'
    as _i50;
import 'package:au2rides/features/download_screen/domain/repository/fuel_octane_number_repository.dart'
    as _i53;
import 'package:au2rides/features/download_screen/domain/repository/gender_repository.dart'
    as _i56;
import 'package:au2rides/features/download_screen/domain/repository/metric_units_repository.dart'
    as _i87;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i97;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i100;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i103;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i106;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i109;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i112;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i135;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i137;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i145;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i148;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i29;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i114;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i33;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i115;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i116;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i60;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i160;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i120;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i163;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i121;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i164;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i165;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i182;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i123;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i166;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i192;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i124;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i193;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i203;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i183;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i194;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i128;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i171;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i195;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i172;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i196;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i130;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i207;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i174;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i184;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i132;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i175;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i197;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i220;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i198;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i219;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i177;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i185;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i221;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i178;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i199;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i222;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i150;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i154;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i179;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i180;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i181;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i186;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i187;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i188;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i189;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i190;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i191;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i210;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i211;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i212;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i213;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i214;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i215;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i216;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i217;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i218;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i223;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i224;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i226;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i227;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i10;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i74;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_to_server/add_user_to_server_data_scource.dart'
    as _i11;
import 'package:au2rides/features/enter_user_info/data/repositories/update_user_data/update_user_repository_impl.dart'
    as _i140;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i76;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i142;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i75;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart'
    as _i139;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i141;
import 'package:au2rides/features/enter_user_info/domain/use_cases/add_user_in_local_db_use_case.dart'
    as _i152;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i77;
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart'
    as _i225;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart'
    as _i153;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart'
    as _i230;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i208;
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart'
    as _i66;
import 'package:au2rides/features/gender_screen/data/repositories/get_gender_repository_impl.dart'
    as _i72;
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart'
    as _i71;
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart'
    as _i201;
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart'
    as _i228;
import 'package:au2rides/features/home_screen/data/data_sources/get_rides_datasource.dart'
    as _i73;
import 'package:au2rides/features/home_screen/data/repositories/get_my_rides_repository_impl.dart'
    as _i205;
import 'package:au2rides/features/home_screen/domain/repositories/get_my_rides_repository.dart'
    as _i204;
import 'package:au2rides/features/home_screen/domain/use_cases/get_my_rides_usecase.dart'
    as _i206;
import 'package:au2rides/features/home_screen/presentation/bloc/get_my_rides_cubit.dart'
    as _i229;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i83;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i85;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i84;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i202;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i209;
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
    as _i155;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i79;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i81;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i23;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i80;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i82;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i156;
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
    gh.factory<_i29.ClearAcquisitionTypesUseCase>(() =>
        _i29.ClearAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i30.CountryDataSource>(() => _i30.CountryDataSource());
    gh.factory<_i31.CountryRepository>(
        () => _i32.CountryRepositoryImpl(gh<_i30.CountryDataSource>()));
    gh.factory<_i33.CountryUseCase>(
        () => _i33.CountryUseCase(gh<_i31.CountryRepository>()));
    gh.factory<_i34.CurrencyDataSource>(() => _i34.CurrencyDataSource());
    gh.factory<_i35.CurrencyRepository>(
        () => _i36.CurrencyRepositoryImpl(gh<_i34.CurrencyDataSource>()));
    gh.factory<_i37.DepartmentServiceItemsDataSource>(
        () => _i37.DepartmentServiceItemsDataSource());
    gh.factory<_i38.DepartmentServiceItemsRepository>(() =>
        _i39.DepartmentServiceItemsRepositoryImpl(
            gh<_i37.DepartmentServiceItemsDataSource>()));
    gh.factory<_i40.EngineFuelTypesDataSource>(
        () => _i40.EngineFuelTypesDataSource());
    gh.factory<_i41.EngineFuelTypesRepository>(() =>
        _i42.EngineFuelTypesRepositoryImpl(
            gh<_i40.EngineFuelTypesDataSource>()));
    gh.factory<_i43.EngineTransmissionTypesDataSource>(
        () => _i43.EngineTransmissionTypesDataSource());
    gh.factory<_i44.EngineTransmissionTypesRepository>(() =>
        _i45.EngineTransmissionTypesRepositoryImpl(
            gh<_i43.EngineTransmissionTypesDataSource>()));
    gh.factory<_i46.FuelBrandsDataSource>(() => _i46.FuelBrandsDataSource());
    gh.factory<_i47.FuelBrandsRepository>(
        () => _i48.FuelBrandsRepositoryImpl(gh<_i46.FuelBrandsDataSource>()));
    gh.factory<_i49.FuelConsumptionUnitTypesDataSource>(
        () => _i49.FuelConsumptionUnitTypesDataSource());
    gh.factory<_i50.FuelConsumptionUnitTypesRepository>(() =>
        _i51.FuelConsumptionUnitTypesRepositoryImpl(
            gh<_i49.FuelConsumptionUnitTypesDataSource>()));
    gh.factory<_i52.FuelOctaneNumberDataSource>(
        () => _i52.FuelOctaneNumberDataSource());
    gh.factory<_i53.FuelOctaneNumberRepository>(() =>
        _i54.FuelOctaneNumberRepositoryImpl(
            gh<_i52.FuelOctaneNumberDataSource>()));
    gh.factory<_i55.GenderDataSource>(() => _i55.GenderDataSource());
    gh.factory<_i56.GenderRepository>(
        () => _i57.GenderRepositoryImpl(gh<_i55.GenderDataSource>()));
    gh.factory<_i58.GetAllAcquisitionTypesUseCase>(() =>
        _i58.GetAllAcquisitionTypesUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i59.GetAllCurrencyUseCase>(
        () => _i59.GetAllCurrencyUseCase(gh<_i35.CurrencyRepository>()));
    gh.factory<_i60.GetAllDepartmentServiceItemsUseCase>(() =>
        _i60.GetAllDepartmentServiceItemsUseCase(
            gh<_i38.DepartmentServiceItemsRepository>()));
    gh.factory<_i61.GetAllEngineFuelTypesUseCase>(() =>
        _i61.GetAllEngineFuelTypesUseCase(
            gh<_i41.EngineFuelTypesRepository>()));
    gh.factory<_i62.GetAllEngineTransmissionTypesUseCase>(() =>
        _i62.GetAllEngineTransmissionTypesUseCase(
            gh<_i44.EngineTransmissionTypesRepository>()));
    gh.factory<_i63.GetAllFuelBrandUseCase>(
        () => _i63.GetAllFuelBrandUseCase(gh<_i47.FuelBrandsRepository>()));
    gh.factory<_i64.GetAllFuelConsumptionUnitTypesUseCase>(() =>
        _i64.GetAllFuelConsumptionUnitTypesUseCase(
            gh<_i50.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i65.GetAllFuelOctaneNumberUseCase>(() =>
        _i65.GetAllFuelOctaneNumberUseCase(
            gh<_i53.FuelOctaneNumberRepository>()));
    gh.factory<_i66.GetAllGenderFromLocalDbDatasource>(
        () => _i66.AddUserInLocalDbDatasourceImp());
    gh.factory<_i67.GetCountriesDataSource>(
        () => _i67.GetCountriesDataSource());
    gh.factory<_i68.GetCountriesRepository>(() =>
        _i69.GetCountriesRepositoryImpl(gh<_i67.GetCountriesDataSource>()));
    gh.factory<_i70.GetCountriesUseCase>(
        () => _i70.GetCountriesUseCase(gh<_i68.GetCountriesRepository>()));
    gh.factory<_i71.GetGendersFromLocalDbRepository>(() =>
        _i72.GetGenderFromLocalRepositoryImpl(
            gh<_i66.GetAllGenderFromLocalDbDatasource>()));
    gh.factory<_i73.GetRidesDataSource>(() => _i73.GetRidesDataSource());
    gh.factory<_i74.GetUserDataFromNetworkDatasource>(
        () => _i74.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i75.GetUserInfoFromNetworkRepository>(() =>
        _i76.GetUserInfoRepositoryImpl(
            gh<_i74.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i77.GetUserInfoUseCase>(() =>
        _i77.GetUserInfoUseCase(gh<_i75.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i78.IPrefsManager>(
      () => _i78.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i79.IsDownloadedDataSource>(
        () => _i79.IsDownloadedDataSource());
    gh.factory<_i80.IsDownloadedRepository>(
        () => _i81.IsDownloadedImpl(gh<_i79.IsDownloadedDataSource>()));
    gh.factory<_i82.IsDownloadedUseCase>(
        () => _i82.IsDownloadedUseCase(gh<_i80.IsDownloadedRepository>()));
    gh.factory<_i83.LanguageLocalDatabase>(() => _i83.LanguageLocalDatabase());
    gh.factory<_i84.LanguageRepository>(
        () => _i85.LanguageRepositoryImpl(gh<_i83.LanguageLocalDatabase>()));
    gh.factory<_i86.MetricUnitsDataSource>(() => _i86.MetricUnitsDataSource());
    gh.factory<_i87.MetricUnitsRepository>(
        () => _i88.MetricUnitsRepositoryImpl(gh<_i86.MetricUnitsDataSource>()));
    gh.factory<_i89.ModelGenerationSpecificationKeysDataSource>(
        () => _i89.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i90.ModelGenerationSpecificationKeysRepository>(() =>
        _i91.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i89.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i92.MonthDataSource>(() => _i92.MonthDataSource());
    gh.factory<_i93.MonthRepository>(
        () => _i94.MonthRepositoryImpl(gh<_i92.MonthDataSource>()));
    gh.factory<_i95.NetworkInfo>(() => _i95.NetworkInfoImpl.create());
    gh.factory<_i96.PaymentMethodsDataSource>(
        () => _i96.PaymentMethodsDataSource());
    gh.factory<_i97.PaymentMethodsRepository>(() =>
        _i98.PaymentMethodsRepositoryImpl(gh<_i96.PaymentMethodsDataSource>()));
    gh.factory<_i99.PressureUnitsDataSource>(
        () => _i99.PressureUnitsDataSource());
    gh.factory<_i100.PressureUnitsRepository>(() =>
        _i101.PressureUnitsRepositoryImpl(gh<_i99.PressureUnitsDataSource>()));
    gh.factory<_i102.RecurrencePeriodTypesDataSource>(
        () => _i102.RecurrencePeriodTypesDataSource());
    gh.factory<_i103.RecurrencePeriodTypesRepository>(() =>
        _i104.RecurrencePeriodTypesRepositoryImpl(
            gh<_i102.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i105.ReminderTypeServiceDataSource>(
        () => _i105.ReminderTypeServiceDataSource());
    gh.factory<_i106.ReminderTypeServiceRepository>(() =>
        _i107.ReminderTypeServiceRepositoryImpl(
            gh<_i105.ReminderTypeServiceDataSource>()));
    gh.factory<_i108.ReminderTypesDataSource>(
        () => _i108.ReminderTypesDataSource());
    gh.factory<_i109.ReminderTypesRepository>(() =>
        _i110.ReminderTypesRepositoryImpl(gh<_i108.ReminderTypesDataSource>()));
    gh.factory<_i111.RideTypesDataSource>(() => _i111.RideTypesDataSource());
    gh.factory<_i112.RideTypesRepository>(
        () => _i113.RideTypesRepositoryImpl(gh<_i111.RideTypesDataSource>()));
    gh.factory<_i114.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i114.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i115.SaveCountriesUseCase>(
        () => _i115.SaveCountriesUseCase(gh<_i31.CountryRepository>()));
    gh.factory<_i116.SaveCurrenciesInLocalDbUseCase>(() =>
        _i116.SaveCurrenciesInLocalDbUseCase(gh<_i35.CurrencyRepository>()));
    gh.factory<_i117.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i117.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i38.DepartmentServiceItemsRepository>()));
    gh.factory<_i118.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i118.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i41.EngineFuelTypesRepository>()));
    gh.factory<_i119.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i119.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i44.EngineTransmissionTypesRepository>()));
    gh.factory<_i120.SaveFuelBrandInLocalDbUseCase>(() =>
        _i120.SaveFuelBrandInLocalDbUseCase(gh<_i47.FuelBrandsRepository>()));
    gh.factory<_i121.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i121.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i50.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i122.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i122.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i53.FuelOctaneNumberRepository>()));
    gh.factory<_i123.SaveGenderDataInLocalDb>(
        () => _i123.SaveGenderDataInLocalDb(gh<_i56.GenderRepository>()));
    gh.factory<_i124.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i124.SaveMetricUnitsInLocalDbUseCase(
            gh<_i87.MetricUnitsRepository>()));
    gh.factory<_i125.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i125.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i90.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i126.SaveMonthsUseCase>(
        () => _i126.SaveMonthsUseCase(gh<_i93.MonthRepository>()));
    gh.factory<_i127.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i127.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i97.PaymentMethodsRepository>()));
    gh.factory<_i128.SavePressureUnitsInLocalDbUseCase>(() =>
        _i128.SavePressureUnitsInLocalDbUseCase(
            gh<_i100.PressureUnitsRepository>()));
    gh.factory<_i129.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i129.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i103.RecurrencePeriodTypesRepository>()));
    gh.factory<_i130.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i130.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i106.ReminderTypeServiceRepository>()));
    gh.factory<_i131.SaveReminderTypesUseCase>(() =>
        _i131.SaveReminderTypesUseCase(gh<_i109.ReminderTypesRepository>()));
    gh.factory<_i132.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i132.SaveRideTypesDataInLocalDbUseCase(
            gh<_i112.RideTypesRepository>()));
    gh.factory<_i133.ServiceDepartmentsDataSource>(
        () => _i133.ServiceDepartmentsDataSource());
    gh.factory<_i134.ServiceTypesDataSource>(
        () => _i134.ServiceTypesDataSource());
    gh.factory<_i135.ServiceTypesRepository>(() =>
        _i136.ServiceTypesRepositoryImpl(gh<_i134.ServiceTypesDataSource>()));
    gh.factory<_i137.ServicesDepartmentsRepository>(() =>
        _i138.ServiceDepartmentsRepositoryImpl(
            gh<_i133.ServiceDepartmentsDataSource>()));
    gh.factory<_i139.UpdateUserRepository>(() =>
        _i140.UpdateUserRepositoryImpl(gh<_i11.AddUserToNetworkDatasource>()));
    gh.factory<_i141.UserAccountRepository>(
        () => _i142.UserRepositoryImpl(gh<_i10.AddUserInLocalDbDatasource>()));
    gh.singleton<_i143.UserRepository>(_i143.UserRepository.create(
        gh<_i78.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i144.WeatherUnitsDataSource>(
        () => _i144.WeatherUnitsDataSource());
    gh.factory<_i145.WeatherUnitsRepository>(() =>
        _i146.WeatherUnitsRepositoryImpl(gh<_i144.WeatherUnitsDataSource>()));
    gh.factory<_i147.WorkflowStatusesDataSource>(
        () => _i147.WorkflowStatusesDataSource());
    gh.factory<_i148.WorkflowStatusesRepository>(() =>
        _i149.WorkflowStatusesRepositoryImpl(
            gh<_i147.WorkflowStatusesDataSource>()));
    gh.factory<_i150.AcquisitionTypesCubit>(() => _i150.AcquisitionTypesCubit(
          gh<_i29.ClearAcquisitionTypesUseCase>(),
          gh<_i58.GetAllAcquisitionTypesUseCase>(),
          gh<_i114.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i151.AddRideCubit>(
        () => _i151.AddRideCubit(gh<_i9.AddRideUseCase>()));
    gh.factory<_i152.AddUserInLocalDbUseCase>(
        () => _i152.AddUserInLocalDbUseCase(gh<_i141.UserAccountRepository>()));
    gh.factory<_i153.AddUserToLocalDbCubit>(
        () => _i153.AddUserToLocalDbCubit(gh<_i152.AddUserInLocalDbUseCase>()));
    gh.factory<_i154.AuthorizeCubit>(
        () => _i154.AuthorizeCubit(gh<_i21.AuthorizeUseCase>()));
    gh.factory<_i155.AuthorizeMobileNumberCubit>(() =>
        _i155.AuthorizeMobileNumberCubit(
            gh<_i18.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i156.CheckPrimaryDataCubit>(() => _i156.CheckPrimaryDataCubit(
          gh<_i25.CheckPrimaryDataUseCase>(),
          gh<_i82.IsDownloadedUseCase>(),
        ));
    gh.factory<_i157.ClearCountryUseCase>(
        () => _i157.ClearCountryUseCase(gh<_i31.CountryRepository>()));
    gh.factory<_i158.ClearCurrencyUseCase>(
        () => _i158.ClearCurrencyUseCase(gh<_i35.CurrencyRepository>()));
    gh.factory<_i159.ClearDepartmentServiceItemsUseCase>(() =>
        _i159.ClearDepartmentServiceItemsUseCase(
            gh<_i38.DepartmentServiceItemsRepository>()));
    gh.factory<_i160.ClearEngineFuelTypesUseCase>(() =>
        _i160.ClearEngineFuelTypesUseCase(
            gh<_i41.EngineFuelTypesRepository>()));
    gh.factory<_i161.ClearEngineTransmissionTypesUseCase>(() =>
        _i161.ClearEngineTransmissionTypesUseCase(
            gh<_i44.EngineTransmissionTypesRepository>()));
    gh.factory<_i162.ClearFuelBrandsUseCase>(
        () => _i162.ClearFuelBrandsUseCase(gh<_i47.FuelBrandsRepository>()));
    gh.factory<_i163.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i163.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i50.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i164.ClearFuelOctaneNumberUseCase>(() =>
        _i164.ClearFuelOctaneNumberUseCase(
            gh<_i53.FuelOctaneNumberRepository>()));
    gh.factory<_i165.ClearGenderUseCase>(
        () => _i165.ClearGenderUseCase(gh<_i56.GenderRepository>()));
    gh.factory<_i166.ClearMetricUnitsUseCase>(
        () => _i166.ClearMetricUnitsUseCase(gh<_i87.MetricUnitsRepository>()));
    gh.factory<_i167.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i167.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i90.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i168.ClearMonthUseCase>(
        () => _i168.ClearMonthUseCase(gh<_i93.MonthRepository>()));
    gh.factory<_i169.ClearPaymentMethodsUseCase>(() =>
        _i169.ClearPaymentMethodsUseCase(gh<_i97.PaymentMethodsRepository>()));
    gh.factory<_i170.ClearPressureUnitsUseCase>(() =>
        _i170.ClearPressureUnitsUseCase(gh<_i100.PressureUnitsRepository>()));
    gh.factory<_i171.ClearRecurrencePeriodTypesUseCase>(() =>
        _i171.ClearRecurrencePeriodTypesUseCase(
            gh<_i103.RecurrencePeriodTypesRepository>()));
    gh.factory<_i172.ClearReminderTypeServiceUseCase>(() =>
        _i172.ClearReminderTypeServiceUseCase(
            gh<_i106.ReminderTypeServiceRepository>()));
    gh.factory<_i173.ClearReminderTypeUseCase>(() =>
        _i173.ClearReminderTypeUseCase(gh<_i109.ReminderTypesRepository>()));
    gh.factory<_i174.ClearRideTypesUseCase>(
        () => _i174.ClearRideTypesUseCase(gh<_i112.RideTypesRepository>()));
    gh.factory<_i175.ClearServiceTypesUseCase>(() =>
        _i175.ClearServiceTypesUseCase(gh<_i135.ServiceTypesRepository>()));
    gh.factory<_i176.ClearServicesDepartmentsUseCase>(() =>
        _i176.ClearServicesDepartmentsUseCase(
            gh<_i137.ServicesDepartmentsRepository>()));
    gh.factory<_i177.ClearWeatherUnitsUseCase>(() =>
        _i177.ClearWeatherUnitsUseCase(gh<_i145.WeatherUnitsRepository>()));
    gh.factory<_i178.ClearWorkflowStatusesUseCase>(() =>
        _i178.ClearWorkflowStatusesUseCase(
            gh<_i148.WorkflowStatusesRepository>()));
    gh.factory<_i179.CountryCubit>(() => _i179.CountryCubit(
          gh<_i33.CountryUseCase>(),
          gh<_i115.SaveCountriesUseCase>(),
          gh<_i157.ClearCountryUseCase>(),
        ));
    gh.factory<_i180.CurrencyCubit>(() => _i180.CurrencyCubit(
          gh<_i158.ClearCurrencyUseCase>(),
          gh<_i59.GetAllCurrencyUseCase>(),
          gh<_i116.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i181.DepartmentServiceItemsCubit>(
        () => _i181.DepartmentServiceItemsCubit(
              gh<_i159.ClearDepartmentServiceItemsUseCase>(),
              gh<_i60.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i117.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i182.DownloadGenderUseCase>(
        () => _i182.DownloadGenderUseCase(gh<_i56.GenderRepository>()));
    gh.factory<_i183.DownloadPaymentMethodsUseCase>(() =>
        _i183.DownloadPaymentMethodsUseCase(
            gh<_i97.PaymentMethodsRepository>()));
    gh.factory<_i184.DownloadRideTypesUseCase>(
        () => _i184.DownloadRideTypesUseCase(gh<_i112.RideTypesRepository>()));
    gh.factory<_i185.DownloadWeatherUnitsUseCase>(() =>
        _i185.DownloadWeatherUnitsUseCase(gh<_i145.WeatherUnitsRepository>()));
    gh.factory<_i186.EngineFuelTypesCubit>(() => _i186.EngineFuelTypesCubit(
          gh<_i160.ClearEngineFuelTypesUseCase>(),
          gh<_i61.GetAllEngineFuelTypesUseCase>(),
          gh<_i118.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i187.EngineTransmissionTypesCubit>(
        () => _i187.EngineTransmissionTypesCubit(
              gh<_i161.ClearEngineTransmissionTypesUseCase>(),
              gh<_i62.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i119.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i188.FuelBrandsCubit>(() => _i188.FuelBrandsCubit(
          gh<_i162.ClearFuelBrandsUseCase>(),
          gh<_i63.GetAllFuelBrandUseCase>(),
          gh<_i120.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i189.FuelConsumptionUnitTypesCubit>(
        () => _i189.FuelConsumptionUnitTypesCubit(
              gh<_i163.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i64.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i121.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i190.FuelOctaneNumberCubit>(() => _i190.FuelOctaneNumberCubit(
          gh<_i164.ClearFuelOctaneNumberUseCase>(),
          gh<_i65.GetAllFuelOctaneNumberUseCase>(),
          gh<_i122.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i191.GenderCubit>(() => _i191.GenderCubit(
          gh<_i165.ClearGenderUseCase>(),
          gh<_i182.DownloadGenderUseCase>(),
          gh<_i123.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i192.GetAllMetricUnitsUseCase>(
        () => _i192.GetAllMetricUnitsUseCase(gh<_i87.MetricUnitsRepository>()));
    gh.factory<_i193.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i193.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i90.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i194.GetAllPressureUnitsUseCase>(() =>
        _i194.GetAllPressureUnitsUseCase(gh<_i100.PressureUnitsRepository>()));
    gh.factory<_i195.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i195.GetAllRecurrencePeriodTypesUseCase(
            gh<_i103.RecurrencePeriodTypesRepository>()));
    gh.factory<_i196.GetAllReminderTypeServiceUseCase>(() =>
        _i196.GetAllReminderTypeServiceUseCase(
            gh<_i106.ReminderTypeServiceRepository>()));
    gh.factory<_i197.GetAllServiceTypesUseCase>(() =>
        _i197.GetAllServiceTypesUseCase(gh<_i135.ServiceTypesRepository>()));
    gh.factory<_i198.GetAllServicesDepartmentsUseCase>(() =>
        _i198.GetAllServicesDepartmentsUseCase(
            gh<_i137.ServicesDepartmentsRepository>()));
    gh.factory<_i199.GetAllWorkflowStatusesUseCase>(() =>
        _i199.GetAllWorkflowStatusesUseCase(
            gh<_i148.WorkflowStatusesRepository>()));
    gh.factory<_i200.GetCountriesCubit>(
        () => _i200.GetCountriesCubit(gh<_i70.GetCountriesUseCase>()));
    gh.factory<_i201.GetGenderFromLocalDbUseCase>(() =>
        _i201.GetGenderFromLocalDbUseCase(
            gh<_i71.GetGendersFromLocalDbRepository>()));
    gh.factory<_i202.GetLanguagesUseCase>(
        () => _i202.GetLanguagesUseCase(gh<_i84.LanguageRepository>()));
    gh.factory<_i203.GetMonthsUseCase>(
        () => _i203.GetMonthsUseCase(gh<_i93.MonthRepository>()));
    gh.factory<_i204.GetMyRidesRepository>(
        () => _i205.GetMyRidesRepositoryImpl(gh<_i73.GetRidesDataSource>()));
    gh.factory<_i206.GetMyRidesUseCase>(
        () => _i206.GetMyRidesUseCase(gh<_i204.GetMyRidesRepository>()));
    gh.factory<_i207.GetReminderTypesUseCase>(() =>
        _i207.GetReminderTypesUseCase(gh<_i109.ReminderTypesRepository>()));
    gh.factory<_i208.GetUserInfoCubit>(
        () => _i208.GetUserInfoCubit(gh<_i77.GetUserInfoUseCase>()));
    gh.factory<_i209.LanguageCubit>(
        () => _i209.LanguageCubit(gh<_i202.GetLanguagesUseCase>()));
    gh.factory<_i210.MetricUnitsCubit>(() => _i210.MetricUnitsCubit(
          gh<_i166.ClearMetricUnitsUseCase>(),
          gh<_i192.GetAllMetricUnitsUseCase>(),
          gh<_i124.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i211.ModelGenerationSpecificationKeysCubit>(
        () => _i211.ModelGenerationSpecificationKeysCubit(
              gh<_i167.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i193.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i125.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i212.MonthCubit>(() => _i212.MonthCubit(
          gh<_i203.GetMonthsUseCase>(),
          gh<_i126.SaveMonthsUseCase>(),
          gh<_i168.ClearMonthUseCase>(),
        ));
    gh.factory<_i213.PaymentMethodsCubit>(() => _i213.PaymentMethodsCubit(
          gh<_i169.ClearPaymentMethodsUseCase>(),
          gh<_i183.DownloadPaymentMethodsUseCase>(),
          gh<_i127.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i214.PressureUnitsCubit>(() => _i214.PressureUnitsCubit(
          gh<_i33.CountryUseCase>(),
          gh<_i128.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i170.ClearPressureUnitsUseCase>(),
          gh<_i194.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i215.RecurrencePeriodTypesCubit>(
        () => _i215.RecurrencePeriodTypesCubit(
              gh<_i171.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i195.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i129.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i216.ReminderTypeServiceCubit>(
        () => _i216.ReminderTypeServiceCubit(
              gh<_i172.ClearReminderTypeServiceUseCase>(),
              gh<_i196.GetAllReminderTypeServiceUseCase>(),
              gh<_i130.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i217.ReminderTypesCubit>(() => _i217.ReminderTypesCubit(
          gh<_i207.GetReminderTypesUseCase>(),
          gh<_i131.SaveReminderTypesUseCase>(),
          gh<_i173.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i218.RideTypesCubit>(() => _i218.RideTypesCubit(
          gh<_i174.ClearRideTypesUseCase>(),
          gh<_i184.DownloadRideTypesUseCase>(),
          gh<_i132.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i219.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i219.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i137.ServicesDepartmentsRepository>()));
    gh.factory<_i220.SaveServiceTypesInLocalDbUseCase>(() =>
        _i220.SaveServiceTypesInLocalDbUseCase(
            gh<_i135.ServiceTypesRepository>()));
    gh.factory<_i221.SaveWeatherUnitsDataInLocalDb>(() =>
        _i221.SaveWeatherUnitsDataInLocalDb(
            gh<_i145.WeatherUnitsRepository>()));
    gh.factory<_i222.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i222.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i148.WorkflowStatusesRepository>()));
    gh.factory<_i223.ServiceDepartmentsCubit>(
        () => _i223.ServiceDepartmentsCubit(
              gh<_i176.ClearServicesDepartmentsUseCase>(),
              gh<_i198.GetAllServicesDepartmentsUseCase>(),
              gh<_i219.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i224.ServiceTypesCubit>(() => _i224.ServiceTypesCubit(
          gh<_i175.ClearServiceTypesUseCase>(),
          gh<_i197.GetAllServiceTypesUseCase>(),
          gh<_i220.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i225.UpdateUserDataUseCase>(
        () => _i225.UpdateUserDataUseCase(gh<_i139.UpdateUserRepository>()));
    gh.factory<_i226.WeatherUnitsCubit>(() => _i226.WeatherUnitsCubit(
          gh<_i177.ClearWeatherUnitsUseCase>(),
          gh<_i185.DownloadWeatherUnitsUseCase>(),
          gh<_i221.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i227.WorkflowStatusesCubit>(() => _i227.WorkflowStatusesCubit(
          gh<_i178.ClearWorkflowStatusesUseCase>(),
          gh<_i199.GetAllWorkflowStatusesUseCase>(),
          gh<_i222.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    gh.factory<_i228.GetGenderCubit>(
        () => _i228.GetGenderCubit(gh<_i201.GetGenderFromLocalDbUseCase>()));
    gh.factory<_i229.GetMyRidesCubit>(
        () => _i229.GetMyRidesCubit(gh<_i206.GetMyRidesUseCase>()));
    gh.factory<_i230.UpdateUserDataCubit>(
        () => _i230.UpdateUserDataCubit(gh<_i225.UpdateUserDataUseCase>()));
    return this;
  }
}
