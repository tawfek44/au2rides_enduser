// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:au2rides/core/network_state/network_state.dart' as _i94;
import 'package:au2rides/core/repositories/user_repository.dart' as _i142;
import 'package:au2rides/core/shared_preference_manager/shared_preference_manager.dart'
    as _i77;
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
    as _i150;
import 'package:au2rides/features/countries_screen/data/datasources/get_countries_datasource.dart'
    as _i67;
import 'package:au2rides/features/countries_screen/data/repositories/get_countries_repository.dart'
    as _i69;
import 'package:au2rides/features/countries_screen/domain/repositories/get_countries_repository.dart'
    as _i68;
import 'package:au2rides/features/countries_screen/domain/usecase/get_country_usecase.dart'
    as _i70;
import 'package:au2rides/features/countries_screen/presentation/bloc/get_countries_cubit/get_countries_cubit.dart'
    as _i199;
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
    as _i85;
import 'package:au2rides/features/download_screen/data/datasources/model_generation_specification_keys_datasource.dart'
    as _i88;
import 'package:au2rides/features/download_screen/data/datasources/month_datasource.dart'
    as _i91;
import 'package:au2rides/features/download_screen/data/datasources/payment_methods_data_source.dart'
    as _i95;
import 'package:au2rides/features/download_screen/data/datasources/pressure_units_datasource.dart'
    as _i98;
import 'package:au2rides/features/download_screen/data/datasources/reccurence_period_types_datasource.dart'
    as _i101;
import 'package:au2rides/features/download_screen/data/datasources/reminder_type_service_datasource.dart'
    as _i104;
import 'package:au2rides/features/download_screen/data/datasources/reminder_types_datasource.dart'
    as _i107;
import 'package:au2rides/features/download_screen/data/datasources/ride_types_data_source.dart'
    as _i110;
import 'package:au2rides/features/download_screen/data/datasources/service_departments_datasource.dart'
    as _i132;
import 'package:au2rides/features/download_screen/data/datasources/service_types_datasource.dart'
    as _i133;
import 'package:au2rides/features/download_screen/data/datasources/weather_units_data_source.dart'
    as _i143;
import 'package:au2rides/features/download_screen/data/datasources/workflow_statuses_datasource.dart'
    as _i146;
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
    as _i87;
import 'package:au2rides/features/download_screen/data/repositories/model_generation_specification_keys_repository.dart'
    as _i90;
import 'package:au2rides/features/download_screen/data/repositories/month_repository.dart'
    as _i93;
import 'package:au2rides/features/download_screen/data/repositories/payment_methods_repository.dart'
    as _i97;
import 'package:au2rides/features/download_screen/data/repositories/pressure_units_repository.dart'
    as _i100;
import 'package:au2rides/features/download_screen/data/repositories/recurrence_period_types_repository.dart'
    as _i103;
import 'package:au2rides/features/download_screen/data/repositories/reminder_type_service_repository.dart'
    as _i106;
import 'package:au2rides/features/download_screen/data/repositories/reminder_types_repository.dart'
    as _i109;
import 'package:au2rides/features/download_screen/data/repositories/ride_types_repository.dart'
    as _i112;
import 'package:au2rides/features/download_screen/data/repositories/service_types_repository.dart'
    as _i135;
import 'package:au2rides/features/download_screen/data/repositories/services_departments_repository.dart'
    as _i137;
import 'package:au2rides/features/download_screen/data/repositories/weather_units_repository.dart'
    as _i145;
import 'package:au2rides/features/download_screen/data/repositories/workflow_statuses_repository.dart'
    as _i148;
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
    as _i86;
import 'package:au2rides/features/download_screen/domain/repository/model_generation_specification_keys_repository.dart'
    as _i89;
import 'package:au2rides/features/download_screen/domain/repository/month_repository.dart'
    as _i92;
import 'package:au2rides/features/download_screen/domain/repository/payment_methods_repository.dart'
    as _i96;
import 'package:au2rides/features/download_screen/domain/repository/pressure_units_repository.dart'
    as _i99;
import 'package:au2rides/features/download_screen/domain/repository/recurrence_period_types_repository.dart'
    as _i102;
import 'package:au2rides/features/download_screen/domain/repository/reminder_type_service_repository.dart'
    as _i105;
import 'package:au2rides/features/download_screen/domain/repository/reminder_types_repository.dart'
    as _i108;
import 'package:au2rides/features/download_screen/domain/repository/ride_types_repository.dart'
    as _i111;
import 'package:au2rides/features/download_screen/domain/repository/service_types_repository.dart'
    as _i134;
import 'package:au2rides/features/download_screen/domain/repository/services_departments_repository.dart'
    as _i136;
import 'package:au2rides/features/download_screen/domain/repository/weather_measuring_units_repository.dart'
    as _i144;
import 'package:au2rides/features/download_screen/domain/repository/workflow_statuses_repository.dart'
    as _i147;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/clear_acquisition_types_usecase.dart'
    as _i29;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/get_all_acquisition_types_usecase.dart'
    as _i58;
import 'package:au2rides/features/download_screen/domain/usecase/acquisition_types/save_acquisition_types_in_local_db_usecase.dart'
    as _i113;
import 'package:au2rides/features/download_screen/domain/usecase/authorize/authorize_usecase.dart'
    as _i21;
import 'package:au2rides/features/download_screen/domain/usecase/country/clear_all_data_country_usecase.dart'
    as _i156;
import 'package:au2rides/features/download_screen/domain/usecase/country/country_usecase.dart'
    as _i33;
import 'package:au2rides/features/download_screen/domain/usecase/country/save_country_usecase.dart'
    as _i114;
import 'package:au2rides/features/download_screen/domain/usecase/currency/currency_usecase.dart'
    as _i157;
import 'package:au2rides/features/download_screen/domain/usecase/currency/get_all_currencies_usecase.dart'
    as _i59;
import 'package:au2rides/features/download_screen/domain/usecase/currency/save_currencies_in_local_db_usecase.dart'
    as _i115;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/clear_department_service_items_usecase.dart'
    as _i158;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/get_all_department_service_items_usecase.dart'
    as _i60;
import 'package:au2rides/features/download_screen/domain/usecase/department_service_items/save_department_service_items_in_local_db_usecase.dart'
    as _i116;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/engine_fuel_types_usecase.dart'
    as _i159;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/get_all_engine_fuel_types_usecase.dart'
    as _i61;
import 'package:au2rides/features/download_screen/domain/usecase/engine_fuel_types/save_engine_fuel_types_in_local_db_usecase.dart'
    as _i117;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/engine_transmission_types_usecase.dart'
    as _i160;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/get_all_engine_transmission_types_usecase.dart'
    as _i62;
import 'package:au2rides/features/download_screen/domain/usecase/engine_transmission_types/save_engine_transmission_types_in_local_db_usecase.dart'
    as _i118;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/clear_fuel_brands_usecase.dart'
    as _i161;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/get_all_fuel_brands_usecase.dart'
    as _i63;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_brands/save_fuel_brands_in_local_db_usecase.dart'
    as _i119;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/clear_fuel_consumption_unit_types_usecase.dart'
    as _i162;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/get_all_fuel_consumption_unit_types_usecase.dart'
    as _i64;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_consumption_unit_types/save_fuel_consumption_unit_types_in_local_db_usecase.dart'
    as _i120;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/clear_fuel_octane_number_usecase.dart'
    as _i163;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/get_all_fuel_octane_number_usecase.dart'
    as _i65;
import 'package:au2rides/features/download_screen/domain/usecase/fuel_octane_number/save_fuel_octane_number_in_local_db_usecase.dart'
    as _i121;
import 'package:au2rides/features/download_screen/domain/usecase/gender/clear_gender_local_usecase.dart'
    as _i164;
import 'package:au2rides/features/download_screen/domain/usecase/gender/download_gender_network_usecase.dart'
    as _i181;
import 'package:au2rides/features/download_screen/domain/usecase/gender/save_gender_data_usecase.dart'
    as _i122;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/clear_metric_units_usecase.dart'
    as _i165;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/get_all_metric_units_usecase.dart'
    as _i191;
import 'package:au2rides/features/download_screen/domain/usecase/metric_units/save_metric_units_in_local_db_usecase.dart'
    as _i123;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/clear_model_generation_specification_keys_usecase.dart'
    as _i166;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/get_all_model_generation_specification_keys_usecase.dart'
    as _i192;
import 'package:au2rides/features/download_screen/domain/usecase/model_generation_specification_keys/save_model_generation_specification_keys_in_local_db_usecase.dart'
    as _i124;
import 'package:au2rides/features/download_screen/domain/usecase/month/clear_all_data_month_usecase.dart'
    as _i167;
import 'package:au2rides/features/download_screen/domain/usecase/month/get_months_usecase.dart'
    as _i202;
import 'package:au2rides/features/download_screen/domain/usecase/month/save_months_usecase.dart'
    as _i125;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/clear_payment_methods_local_usecase.dart'
    as _i168;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/download_payment_methods_network_usecase.dart'
    as _i182;
import 'package:au2rides/features/download_screen/domain/usecase/payment_methods/save_payment_methods_data_usecase.dart'
    as _i126;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/clear_all_pressure_units_usecase.dart'
    as _i169;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/get_all_pressure_units_usecase.dart'
    as _i193;
import 'package:au2rides/features/download_screen/domain/usecase/pressure_units/save_pressure_units_in_local_db_usecase.dart'
    as _i127;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/clear_recurrence_period_types_usecase.dart'
    as _i170;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/get_all_recurrence_period_types_usecase.dart'
    as _i194;
import 'package:au2rides/features/download_screen/domain/usecase/recurrence_period_types/save_recurrence_period_types_in_local_db_usecase.dart'
    as _i128;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/clear_reminder_type_service_usecase.dart'
    as _i171;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/get_all_reminder_type_service_usecase.dart'
    as _i195;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_type_service_types/save_reminder_type_service_in_local_db_usecase.dart'
    as _i129;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/clear_all_data_reminder_types_usecase.dart'
    as _i172;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/get_reminder_types_usecase.dart'
    as _i203;
import 'package:au2rides/features/download_screen/domain/usecase/reminder_types/save_reminder_types_usecase.dart'
    as _i130;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/clear_ride_types_local_usecase.dart'
    as _i173;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/download_ride_types_network_usecase.dart'
    as _i183;
import 'package:au2rides/features/download_screen/domain/usecase/ride_types/save_ride_types_data_usecase.dart'
    as _i131;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/clear_service_types_usecase.dart'
    as _i174;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/get_all_service_types_usecase.dart'
    as _i196;
import 'package:au2rides/features/download_screen/domain/usecase/service_types/save_service_types_in_local_db_usecase.dart'
    as _i216;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/clear_services_departments_usecase.dart'
    as _i175;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/get_all_services_departments_usecase.dart'
    as _i197;
import 'package:au2rides/features/download_screen/domain/usecase/services_departments/save_services_departments_in_local_db_usecase.dart'
    as _i215;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/clear_weather_units_local_usecase.dart'
    as _i176;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/download_weather_units_network_usecase.dart'
    as _i184;
import 'package:au2rides/features/download_screen/domain/usecase/weather_measuring_units/save_weather_units_data_usecase.dart'
    as _i217;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/clear_workflow_statuses_usecase.dart'
    as _i177;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/get_all_workflow_statuses_usecase.dart'
    as _i198;
import 'package:au2rides/features/download_screen/domain/usecase/workflow_statuses/save_workflow_statuses_in_local_db_usecase.dart'
    as _i218;
import 'package:au2rides/features/download_screen/presentation/bloc/acquisition_types_cubit/acquisition_types_cubit.dart'
    as _i149;
import 'package:au2rides/features/download_screen/presentation/bloc/authorize_cubit/authorize_cubit.dart'
    as _i153;
import 'package:au2rides/features/download_screen/presentation/bloc/country_cubit/country_cubit.dart'
    as _i178;
import 'package:au2rides/features/download_screen/presentation/bloc/currency_cubit/currency_cubit.dart'
    as _i179;
import 'package:au2rides/features/download_screen/presentation/bloc/department_service_items_cubit/department_service_items_cubit.dart'
    as _i180;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_fuel_types_cubit/engine_fuel_types_cubit.dart'
    as _i185;
import 'package:au2rides/features/download_screen/presentation/bloc/engine_transmission_types_cubit/engine_transmission_types_cubit.dart'
    as _i186;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_brands_cubit/fuel_brands_cubit.dart'
    as _i187;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_consumption_unit_types_cubit/fuel_consumption_unit_types_cubit.dart'
    as _i188;
import 'package:au2rides/features/download_screen/presentation/bloc/fuel_octane_number_cubit/fuel_octane_number_cubit.dart'
    as _i189;
import 'package:au2rides/features/download_screen/presentation/bloc/gender_cubit/gender_cubit.dart'
    as _i190;
import 'package:au2rides/features/download_screen/presentation/bloc/metric_untis_cubit/metric_units_cubit.dart'
    as _i206;
import 'package:au2rides/features/download_screen/presentation/bloc/model_generation_specification_keys_cubit/model_generation_specification_keys_cubit.dart'
    as _i207;
import 'package:au2rides/features/download_screen/presentation/bloc/month_cubit/month_cubit.dart'
    as _i208;
import 'package:au2rides/features/download_screen/presentation/bloc/payment_methods/payment_methods_cubit.dart'
    as _i209;
import 'package:au2rides/features/download_screen/presentation/bloc/pressure_units_cubit/pressure_units_cubit.dart'
    as _i210;
import 'package:au2rides/features/download_screen/presentation/bloc/recurrence_period_types_cubit/recurrence_period_types_cubit.dart'
    as _i211;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_type_service_cubit/reminder_type_service_cubit.dart'
    as _i212;
import 'package:au2rides/features/download_screen/presentation/bloc/reminder_types_cubit/reminder_types_cubit.dart'
    as _i213;
import 'package:au2rides/features/download_screen/presentation/bloc/ride_types/ride_types_cubit.dart'
    as _i214;
import 'package:au2rides/features/download_screen/presentation/bloc/service_departments_cubit/service_departments_cubit.dart'
    as _i219;
import 'package:au2rides/features/download_screen/presentation/bloc/service_types_cubit/service_types_cubit.dart'
    as _i220;
import 'package:au2rides/features/download_screen/presentation/bloc/weather_units/weather_units_cubit.dart'
    as _i222;
import 'package:au2rides/features/download_screen/presentation/bloc/workflow_statuses_cubit/workflow_statuses_cubit.dart'
    as _i223;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/add_user_in_local_db_data_source.dart'
    as _i10;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_in_local/get_user_data_data_scource.dart'
    as _i73;
import 'package:au2rides/features/enter_user_info/data/data_source/add_user_to_server/add_user_to_server_data_scource.dart'
    as _i11;
import 'package:au2rides/features/enter_user_info/data/repositories/update_user_data/update_user_repository_impl.dart'
    as _i139;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/get_user_info_repository_impl.dart'
    as _i75;
import 'package:au2rides/features/enter_user_info/data/repositories/user_repository/user_repository_impl.dart'
    as _i141;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/get_user_info_repository.dart'
    as _i74;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_body_repository.dart'
    as _i138;
import 'package:au2rides/features/enter_user_info/domain/repositories/user/user_repository.dart'
    as _i140;
import 'package:au2rides/features/enter_user_info/domain/use_cases/add_user_in_local_db_use_case.dart'
    as _i151;
import 'package:au2rides/features/enter_user_info/domain/use_cases/get_user_info_usecase.dart'
    as _i76;
import 'package:au2rides/features/enter_user_info/domain/use_cases/update_user_usecase.dart'
    as _i221;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_in_local_db/add_user_in_loca_db_cubit.dart'
    as _i152;
import 'package:au2rides/features/enter_user_info/presentation/bloc/add_user_to_server/update_user_data_cubit.dart'
    as _i225;
import 'package:au2rides/features/enter_user_info/presentation/bloc/get_user_info_cubit.dart'
    as _i204;
import 'package:au2rides/features/gender_screen/data/data_source/get_gender_local_db_data_source.dart'
    as _i66;
import 'package:au2rides/features/gender_screen/data/repositories/get_gender_repository_impl.dart'
    as _i72;
import 'package:au2rides/features/gender_screen/domain/repositories/get_gender_repository.dart'
    as _i71;
import 'package:au2rides/features/gender_screen/domain/use_cases/get_gemders_usecase.dart'
    as _i200;
import 'package:au2rides/features/gender_screen/presentation/bloc/get_gender_cubit.dart'
    as _i224;
import 'package:au2rides/features/language_screen/data/data_sources/local/language_local_database.dart'
    as _i82;
import 'package:au2rides/features/language_screen/data/repositories/langauge_repository_impl.dart'
    as _i84;
import 'package:au2rides/features/language_screen/domain/repositories/language_repository.dart'
    as _i83;
import 'package:au2rides/features/language_screen/domain/use_cases/language_use_case.dart'
    as _i201;
import 'package:au2rides/features/language_screen/presentation/bloc/language_cubit.dart'
    as _i205;
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
    as _i154;
import 'package:au2rides/features/splash_screen/data/datasources/check_primary_data_data_scource.dart'
    as _i22;
import 'package:au2rides/features/splash_screen/data/datasources/isDownloaded_data_scource.dart'
    as _i78;
import 'package:au2rides/features/splash_screen/data/repositories/check_primary_data_repository_imp.dart'
    as _i24;
import 'package:au2rides/features/splash_screen/data/repositories/is_downloaded_repository_imp.dart'
    as _i80;
import 'package:au2rides/features/splash_screen/domain/repositories/check_primary_data_repository.dart'
    as _i23;
import 'package:au2rides/features/splash_screen/domain/repositories/is_downloaded_repository.dart'
    as _i79;
import 'package:au2rides/features/splash_screen/domain/usecases/check_primary_data_usecase.dart'
    as _i25;
import 'package:au2rides/features/splash_screen/domain/usecases/is_downloaded_usecase.dart'
    as _i81;
import 'package:au2rides/features/splash_screen/presentation/bloc/check_primary_data_cubit.dart'
    as _i155;
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
    gh.factory<_i73.GetUserDataFromNetworkDatasource>(
        () => _i73.GetUserDataFromNetworkDatasourceImp());
    gh.factory<_i74.GetUserInfoFromNetworkRepository>(() =>
        _i75.GetUserInfoRepositoryImpl(
            gh<_i73.GetUserDataFromNetworkDatasource>()));
    gh.factory<_i76.GetUserInfoUseCase>(() =>
        _i76.GetUserInfoUseCase(gh<_i74.GetUserInfoFromNetworkRepository>()));
    await gh.factoryAsync<_i77.IPrefsManager>(
      () => _i77.PrefsManager.create(),
      instanceName: 'prefs',
      preResolve: true,
    );
    gh.factory<_i78.IsDownloadedDataSource>(
        () => _i78.IsDownloadedDataSource());
    gh.factory<_i79.IsDownloadedRepository>(
        () => _i80.IsDownloadedImpl(gh<_i78.IsDownloadedDataSource>()));
    gh.factory<_i81.IsDownloadedUseCase>(
        () => _i81.IsDownloadedUseCase(gh<_i79.IsDownloadedRepository>()));
    gh.factory<_i82.LanguageLocalDatabase>(() => _i82.LanguageLocalDatabase());
    gh.factory<_i83.LanguageRepository>(
        () => _i84.LanguageRepositoryImpl(gh<_i82.LanguageLocalDatabase>()));
    gh.factory<_i85.MetricUnitsDataSource>(() => _i85.MetricUnitsDataSource());
    gh.factory<_i86.MetricUnitsRepository>(
        () => _i87.MetricUnitsRepositoryImpl(gh<_i85.MetricUnitsDataSource>()));
    gh.factory<_i88.ModelGenerationSpecificationKeysDataSource>(
        () => _i88.ModelGenerationSpecificationKeysDataSource());
    gh.factory<_i89.ModelGenerationSpecificationKeysRepository>(() =>
        _i90.ModelGenerationSpecificationKeysRepositoryImpl(
            gh<_i88.ModelGenerationSpecificationKeysDataSource>()));
    gh.factory<_i91.MonthDataSource>(() => _i91.MonthDataSource());
    gh.factory<_i92.MonthRepository>(
        () => _i93.MonthRepositoryImpl(gh<_i91.MonthDataSource>()));
    gh.factory<_i94.NetworkInfo>(() => _i94.NetworkInfoImpl.create());
    gh.factory<_i95.PaymentMethodsDataSource>(
        () => _i95.PaymentMethodsDataSource());
    gh.factory<_i96.PaymentMethodsRepository>(() =>
        _i97.PaymentMethodsRepositoryImpl(gh<_i95.PaymentMethodsDataSource>()));
    gh.factory<_i98.PressureUnitsDataSource>(
        () => _i98.PressureUnitsDataSource());
    gh.factory<_i99.PressureUnitsRepository>(() =>
        _i100.PressureUnitsRepositoryImpl(gh<_i98.PressureUnitsDataSource>()));
    gh.factory<_i101.RecurrencePeriodTypesDataSource>(
        () => _i101.RecurrencePeriodTypesDataSource());
    gh.factory<_i102.RecurrencePeriodTypesRepository>(() =>
        _i103.RecurrencePeriodTypesRepositoryImpl(
            gh<_i101.RecurrencePeriodTypesDataSource>()));
    gh.factory<_i104.ReminderTypeServiceDataSource>(
        () => _i104.ReminderTypeServiceDataSource());
    gh.factory<_i105.ReminderTypeServiceRepository>(() =>
        _i106.ReminderTypeServiceRepositoryImpl(
            gh<_i104.ReminderTypeServiceDataSource>()));
    gh.factory<_i107.ReminderTypesDataSource>(
        () => _i107.ReminderTypesDataSource());
    gh.factory<_i108.ReminderTypesRepository>(() =>
        _i109.ReminderTypesRepositoryImpl(gh<_i107.ReminderTypesDataSource>()));
    gh.factory<_i110.RideTypesDataSource>(() => _i110.RideTypesDataSource());
    gh.factory<_i111.RideTypesRepository>(
        () => _i112.RideTypesRepositoryImpl(gh<_i110.RideTypesDataSource>()));
    gh.factory<_i113.SaveAcquisitionTypesInLocalDbUseCase>(() =>
        _i113.SaveAcquisitionTypesInLocalDbUseCase(
            gh<_i4.AcquisitionTypesRepository>()));
    gh.factory<_i114.SaveCountriesUseCase>(
        () => _i114.SaveCountriesUseCase(gh<_i31.CountryRepository>()));
    gh.factory<_i115.SaveCurrenciesInLocalDbUseCase>(() =>
        _i115.SaveCurrenciesInLocalDbUseCase(gh<_i35.CurrencyRepository>()));
    gh.factory<_i116.SaveDepartmentServiceItemsInLocalDbUseCase>(() =>
        _i116.SaveDepartmentServiceItemsInLocalDbUseCase(
            gh<_i38.DepartmentServiceItemsRepository>()));
    gh.factory<_i117.SaveEngineFuelTypesInLocalDbUseCase>(() =>
        _i117.SaveEngineFuelTypesInLocalDbUseCase(
            gh<_i41.EngineFuelTypesRepository>()));
    gh.factory<_i118.SaveEngineTransmissionTypesInLocalDbUseCase>(() =>
        _i118.SaveEngineTransmissionTypesInLocalDbUseCase(
            gh<_i44.EngineTransmissionTypesRepository>()));
    gh.factory<_i119.SaveFuelBrandInLocalDbUseCase>(() =>
        _i119.SaveFuelBrandInLocalDbUseCase(gh<_i47.FuelBrandsRepository>()));
    gh.factory<_i120.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(() =>
        _i120.SaveFuelConsumptionUnitTypesInLocalDbUseCase(
            gh<_i50.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i121.SaveFuelOctaneNumberInLocalDbUseCase>(() =>
        _i121.SaveFuelOctaneNumberInLocalDbUseCase(
            gh<_i53.FuelOctaneNumberRepository>()));
    gh.factory<_i122.SaveGenderDataInLocalDb>(
        () => _i122.SaveGenderDataInLocalDb(gh<_i56.GenderRepository>()));
    gh.factory<_i123.SaveMetricUnitsInLocalDbUseCase>(() =>
        _i123.SaveMetricUnitsInLocalDbUseCase(
            gh<_i86.MetricUnitsRepository>()));
    gh.factory<_i124.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(() =>
        _i124.SaveModelGenerationSpecificationKeysInLocalDbUseCase(
            gh<_i89.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i125.SaveMonthsUseCase>(
        () => _i125.SaveMonthsUseCase(gh<_i92.MonthRepository>()));
    gh.factory<_i126.SavePaymentMethodsDataInLocalDbUseCase>(() =>
        _i126.SavePaymentMethodsDataInLocalDbUseCase(
            gh<_i96.PaymentMethodsRepository>()));
    gh.factory<_i127.SavePressureUnitsInLocalDbUseCase>(() =>
        _i127.SavePressureUnitsInLocalDbUseCase(
            gh<_i99.PressureUnitsRepository>()));
    gh.factory<_i128.SaveRecurrencePeriodTypesInLocalDbUseCase>(() =>
        _i128.SaveRecurrencePeriodTypesInLocalDbUseCase(
            gh<_i102.RecurrencePeriodTypesRepository>()));
    gh.factory<_i129.SaveReminderTypeServiceInLocalDbUseCase>(() =>
        _i129.SaveReminderTypeServiceInLocalDbUseCase(
            gh<_i105.ReminderTypeServiceRepository>()));
    gh.factory<_i130.SaveReminderTypesUseCase>(() =>
        _i130.SaveReminderTypesUseCase(gh<_i108.ReminderTypesRepository>()));
    gh.factory<_i131.SaveRideTypesDataInLocalDbUseCase>(() =>
        _i131.SaveRideTypesDataInLocalDbUseCase(
            gh<_i111.RideTypesRepository>()));
    gh.factory<_i132.ServiceDepartmentsDataSource>(
        () => _i132.ServiceDepartmentsDataSource());
    gh.factory<_i133.ServiceTypesDataSource>(
        () => _i133.ServiceTypesDataSource());
    gh.factory<_i134.ServiceTypesRepository>(() =>
        _i135.ServiceTypesRepositoryImpl(gh<_i133.ServiceTypesDataSource>()));
    gh.factory<_i136.ServicesDepartmentsRepository>(() =>
        _i137.ServiceDepartmentsRepositoryImpl(
            gh<_i132.ServiceDepartmentsDataSource>()));
    gh.factory<_i138.UpdateUserRepository>(() =>
        _i139.UpdateUserRepositoryImpl(gh<_i11.AddUserToNetworkDatasource>()));
    gh.factory<_i140.UserAccountRepository>(
        () => _i141.UserRepositoryImpl(gh<_i10.AddUserInLocalDbDatasource>()));
    gh.singleton<_i142.UserRepository>(_i142.UserRepository.create(
        gh<_i77.IPrefsManager>(instanceName: 'prefs')));
    gh.factory<_i143.WeatherUnitsDataSource>(
        () => _i143.WeatherUnitsDataSource());
    gh.factory<_i144.WeatherUnitsRepository>(() =>
        _i145.WeatherUnitsRepositoryImpl(gh<_i143.WeatherUnitsDataSource>()));
    gh.factory<_i146.WorkflowStatusesDataSource>(
        () => _i146.WorkflowStatusesDataSource());
    gh.factory<_i147.WorkflowStatusesRepository>(() =>
        _i148.WorkflowStatusesRepositoryImpl(
            gh<_i146.WorkflowStatusesDataSource>()));
    gh.factory<_i149.AcquisitionTypesCubit>(() => _i149.AcquisitionTypesCubit(
          gh<_i29.ClearAcquisitionTypesUseCase>(),
          gh<_i58.GetAllAcquisitionTypesUseCase>(),
          gh<_i113.SaveAcquisitionTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i150.AddRideCubit>(
        () => _i150.AddRideCubit(gh<_i9.AddRideUseCase>()));
    gh.factory<_i151.AddUserInLocalDbUseCase>(
        () => _i151.AddUserInLocalDbUseCase(gh<_i140.UserAccountRepository>()));
    gh.factory<_i152.AddUserToLocalDbCubit>(
        () => _i152.AddUserToLocalDbCubit(gh<_i151.AddUserInLocalDbUseCase>()));
    gh.factory<_i153.AuthorizeCubit>(
        () => _i153.AuthorizeCubit(gh<_i21.AuthorizeUseCase>()));
    gh.factory<_i154.AuthorizeMobileNumberCubit>(() =>
        _i154.AuthorizeMobileNumberCubit(
            gh<_i18.AuthorizeMobileNumberUseCase>()));
    gh.factory<_i155.CheckPrimaryDataCubit>(() => _i155.CheckPrimaryDataCubit(
          gh<_i25.CheckPrimaryDataUseCase>(),
          gh<_i81.IsDownloadedUseCase>(),
        ));
    gh.factory<_i156.ClearCountryUseCase>(
        () => _i156.ClearCountryUseCase(gh<_i31.CountryRepository>()));
    gh.factory<_i157.ClearCurrencyUseCase>(
        () => _i157.ClearCurrencyUseCase(gh<_i35.CurrencyRepository>()));
    gh.factory<_i158.ClearDepartmentServiceItemsUseCase>(() =>
        _i158.ClearDepartmentServiceItemsUseCase(
            gh<_i38.DepartmentServiceItemsRepository>()));
    gh.factory<_i159.ClearEngineFuelTypesUseCase>(() =>
        _i159.ClearEngineFuelTypesUseCase(
            gh<_i41.EngineFuelTypesRepository>()));
    gh.factory<_i160.ClearEngineTransmissionTypesUseCase>(() =>
        _i160.ClearEngineTransmissionTypesUseCase(
            gh<_i44.EngineTransmissionTypesRepository>()));
    gh.factory<_i161.ClearFuelBrandsUseCase>(
        () => _i161.ClearFuelBrandsUseCase(gh<_i47.FuelBrandsRepository>()));
    gh.factory<_i162.ClearFuelConsumptionUnitTypesUseCase>(() =>
        _i162.ClearFuelConsumptionUnitTypesUseCase(
            gh<_i50.FuelConsumptionUnitTypesRepository>()));
    gh.factory<_i163.ClearFuelOctaneNumberUseCase>(() =>
        _i163.ClearFuelOctaneNumberUseCase(
            gh<_i53.FuelOctaneNumberRepository>()));
    gh.factory<_i164.ClearGenderUseCase>(
        () => _i164.ClearGenderUseCase(gh<_i56.GenderRepository>()));
    gh.factory<_i165.ClearMetricUnitsUseCase>(
        () => _i165.ClearMetricUnitsUseCase(gh<_i86.MetricUnitsRepository>()));
    gh.factory<_i166.ClearModelGenerationSpecificationKeysUseCase>(() =>
        _i166.ClearModelGenerationSpecificationKeysUseCase(
            gh<_i89.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i167.ClearMonthUseCase>(
        () => _i167.ClearMonthUseCase(gh<_i92.MonthRepository>()));
    gh.factory<_i168.ClearPaymentMethodsUseCase>(() =>
        _i168.ClearPaymentMethodsUseCase(gh<_i96.PaymentMethodsRepository>()));
    gh.factory<_i169.ClearPressureUnitsUseCase>(() =>
        _i169.ClearPressureUnitsUseCase(gh<_i99.PressureUnitsRepository>()));
    gh.factory<_i170.ClearRecurrencePeriodTypesUseCase>(() =>
        _i170.ClearRecurrencePeriodTypesUseCase(
            gh<_i102.RecurrencePeriodTypesRepository>()));
    gh.factory<_i171.ClearReminderTypeServiceUseCase>(() =>
        _i171.ClearReminderTypeServiceUseCase(
            gh<_i105.ReminderTypeServiceRepository>()));
    gh.factory<_i172.ClearReminderTypeUseCase>(() =>
        _i172.ClearReminderTypeUseCase(gh<_i108.ReminderTypesRepository>()));
    gh.factory<_i173.ClearRideTypesUseCase>(
        () => _i173.ClearRideTypesUseCase(gh<_i111.RideTypesRepository>()));
    gh.factory<_i174.ClearServiceTypesUseCase>(() =>
        _i174.ClearServiceTypesUseCase(gh<_i134.ServiceTypesRepository>()));
    gh.factory<_i175.ClearServicesDepartmentsUseCase>(() =>
        _i175.ClearServicesDepartmentsUseCase(
            gh<_i136.ServicesDepartmentsRepository>()));
    gh.factory<_i176.ClearWeatherUnitsUseCase>(() =>
        _i176.ClearWeatherUnitsUseCase(gh<_i144.WeatherUnitsRepository>()));
    gh.factory<_i177.ClearWorkflowStatusesUseCase>(() =>
        _i177.ClearWorkflowStatusesUseCase(
            gh<_i147.WorkflowStatusesRepository>()));
    gh.factory<_i178.CountryCubit>(() => _i178.CountryCubit(
          gh<_i33.CountryUseCase>(),
          gh<_i114.SaveCountriesUseCase>(),
          gh<_i156.ClearCountryUseCase>(),
        ));
    gh.factory<_i179.CurrencyCubit>(() => _i179.CurrencyCubit(
          gh<_i157.ClearCurrencyUseCase>(),
          gh<_i59.GetAllCurrencyUseCase>(),
          gh<_i115.SaveCurrenciesInLocalDbUseCase>(),
        ));
    gh.factory<_i180.DepartmentServiceItemsCubit>(
        () => _i180.DepartmentServiceItemsCubit(
              gh<_i158.ClearDepartmentServiceItemsUseCase>(),
              gh<_i60.GetAllDepartmentServiceItemsUseCase>(),
              gh<_i116.SaveDepartmentServiceItemsInLocalDbUseCase>(),
            ));
    gh.factory<_i181.DownloadGenderUseCase>(
        () => _i181.DownloadGenderUseCase(gh<_i56.GenderRepository>()));
    gh.factory<_i182.DownloadPaymentMethodsUseCase>(() =>
        _i182.DownloadPaymentMethodsUseCase(
            gh<_i96.PaymentMethodsRepository>()));
    gh.factory<_i183.DownloadRideTypesUseCase>(
        () => _i183.DownloadRideTypesUseCase(gh<_i111.RideTypesRepository>()));
    gh.factory<_i184.DownloadWeatherUnitsUseCase>(() =>
        _i184.DownloadWeatherUnitsUseCase(gh<_i144.WeatherUnitsRepository>()));
    gh.factory<_i185.EngineFuelTypesCubit>(() => _i185.EngineFuelTypesCubit(
          gh<_i159.ClearEngineFuelTypesUseCase>(),
          gh<_i61.GetAllEngineFuelTypesUseCase>(),
          gh<_i117.SaveEngineFuelTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i186.EngineTransmissionTypesCubit>(
        () => _i186.EngineTransmissionTypesCubit(
              gh<_i160.ClearEngineTransmissionTypesUseCase>(),
              gh<_i62.GetAllEngineTransmissionTypesUseCase>(),
              gh<_i118.SaveEngineTransmissionTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i187.FuelBrandsCubit>(() => _i187.FuelBrandsCubit(
          gh<_i161.ClearFuelBrandsUseCase>(),
          gh<_i63.GetAllFuelBrandUseCase>(),
          gh<_i119.SaveFuelBrandInLocalDbUseCase>(),
        ));
    gh.factory<_i188.FuelConsumptionUnitTypesCubit>(
        () => _i188.FuelConsumptionUnitTypesCubit(
              gh<_i162.ClearFuelConsumptionUnitTypesUseCase>(),
              gh<_i64.GetAllFuelConsumptionUnitTypesUseCase>(),
              gh<_i120.SaveFuelConsumptionUnitTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i189.FuelOctaneNumberCubit>(() => _i189.FuelOctaneNumberCubit(
          gh<_i163.ClearFuelOctaneNumberUseCase>(),
          gh<_i65.GetAllFuelOctaneNumberUseCase>(),
          gh<_i121.SaveFuelOctaneNumberInLocalDbUseCase>(),
        ));
    gh.factory<_i190.GenderCubit>(() => _i190.GenderCubit(
          gh<_i164.ClearGenderUseCase>(),
          gh<_i181.DownloadGenderUseCase>(),
          gh<_i122.SaveGenderDataInLocalDb>(),
        ));
    gh.factory<_i191.GetAllMetricUnitsUseCase>(
        () => _i191.GetAllMetricUnitsUseCase(gh<_i86.MetricUnitsRepository>()));
    gh.factory<_i192.GetAllModelGenerationSpecificationKeysUseCase>(() =>
        _i192.GetAllModelGenerationSpecificationKeysUseCase(
            gh<_i89.ModelGenerationSpecificationKeysRepository>()));
    gh.factory<_i193.GetAllPressureUnitsUseCase>(() =>
        _i193.GetAllPressureUnitsUseCase(gh<_i99.PressureUnitsRepository>()));
    gh.factory<_i194.GetAllRecurrencePeriodTypesUseCase>(() =>
        _i194.GetAllRecurrencePeriodTypesUseCase(
            gh<_i102.RecurrencePeriodTypesRepository>()));
    gh.factory<_i195.GetAllReminderTypeServiceUseCase>(() =>
        _i195.GetAllReminderTypeServiceUseCase(
            gh<_i105.ReminderTypeServiceRepository>()));
    gh.factory<_i196.GetAllServiceTypesUseCase>(() =>
        _i196.GetAllServiceTypesUseCase(gh<_i134.ServiceTypesRepository>()));
    gh.factory<_i197.GetAllServicesDepartmentsUseCase>(() =>
        _i197.GetAllServicesDepartmentsUseCase(
            gh<_i136.ServicesDepartmentsRepository>()));
    gh.factory<_i198.GetAllWorkflowStatusesUseCase>(() =>
        _i198.GetAllWorkflowStatusesUseCase(
            gh<_i147.WorkflowStatusesRepository>()));
    gh.factory<_i199.GetCountriesCubit>(
        () => _i199.GetCountriesCubit(gh<_i70.GetCountriesUseCase>()));
    gh.factory<_i200.GetGenderFromLocalDbUseCase>(() =>
        _i200.GetGenderFromLocalDbUseCase(
            gh<_i71.GetGendersFromLocalDbRepository>()));
    gh.factory<_i201.GetLanguagesUseCase>(
        () => _i201.GetLanguagesUseCase(gh<_i83.LanguageRepository>()));
    gh.factory<_i202.GetMonthsUseCase>(
        () => _i202.GetMonthsUseCase(gh<_i92.MonthRepository>()));
    gh.factory<_i203.GetReminderTypesUseCase>(() =>
        _i203.GetReminderTypesUseCase(gh<_i108.ReminderTypesRepository>()));
    gh.factory<_i204.GetUserInfoCubit>(
        () => _i204.GetUserInfoCubit(gh<_i76.GetUserInfoUseCase>()));
    gh.factory<_i205.LanguageCubit>(
        () => _i205.LanguageCubit(gh<_i201.GetLanguagesUseCase>()));
    gh.factory<_i206.MetricUnitsCubit>(() => _i206.MetricUnitsCubit(
          gh<_i165.ClearMetricUnitsUseCase>(),
          gh<_i191.GetAllMetricUnitsUseCase>(),
          gh<_i123.SaveMetricUnitsInLocalDbUseCase>(),
        ));
    gh.factory<_i207.ModelGenerationSpecificationKeysCubit>(
        () => _i207.ModelGenerationSpecificationKeysCubit(
              gh<_i166.ClearModelGenerationSpecificationKeysUseCase>(),
              gh<_i192.GetAllModelGenerationSpecificationKeysUseCase>(),
              gh<_i124.SaveModelGenerationSpecificationKeysInLocalDbUseCase>(),
            ));
    gh.factory<_i208.MonthCubit>(() => _i208.MonthCubit(
          gh<_i202.GetMonthsUseCase>(),
          gh<_i125.SaveMonthsUseCase>(),
          gh<_i167.ClearMonthUseCase>(),
        ));
    gh.factory<_i209.PaymentMethodsCubit>(() => _i209.PaymentMethodsCubit(
          gh<_i168.ClearPaymentMethodsUseCase>(),
          gh<_i182.DownloadPaymentMethodsUseCase>(),
          gh<_i126.SavePaymentMethodsDataInLocalDbUseCase>(),
        ));
    gh.factory<_i210.PressureUnitsCubit>(() => _i210.PressureUnitsCubit(
          gh<_i33.CountryUseCase>(),
          gh<_i127.SavePressureUnitsInLocalDbUseCase>(),
          gh<_i169.ClearPressureUnitsUseCase>(),
          gh<_i193.GetAllPressureUnitsUseCase>(),
        ));
    gh.factory<_i211.RecurrencePeriodTypesCubit>(
        () => _i211.RecurrencePeriodTypesCubit(
              gh<_i170.ClearRecurrencePeriodTypesUseCase>(),
              gh<_i194.GetAllRecurrencePeriodTypesUseCase>(),
              gh<_i128.SaveRecurrencePeriodTypesInLocalDbUseCase>(),
            ));
    gh.factory<_i212.ReminderTypeServiceCubit>(
        () => _i212.ReminderTypeServiceCubit(
              gh<_i171.ClearReminderTypeServiceUseCase>(),
              gh<_i195.GetAllReminderTypeServiceUseCase>(),
              gh<_i129.SaveReminderTypeServiceInLocalDbUseCase>(),
            ));
    gh.factory<_i213.ReminderTypesCubit>(() => _i213.ReminderTypesCubit(
          gh<_i203.GetReminderTypesUseCase>(),
          gh<_i130.SaveReminderTypesUseCase>(),
          gh<_i172.ClearReminderTypeUseCase>(),
        ));
    gh.factory<_i214.RideTypesCubit>(() => _i214.RideTypesCubit(
          gh<_i173.ClearRideTypesUseCase>(),
          gh<_i183.DownloadRideTypesUseCase>(),
          gh<_i131.SaveRideTypesDataInLocalDbUseCase>(),
        ));
    gh.factory<_i215.SaveServiceDepartmentsInLocalDbUseCase>(() =>
        _i215.SaveServiceDepartmentsInLocalDbUseCase(
            gh<_i136.ServicesDepartmentsRepository>()));
    gh.factory<_i216.SaveServiceTypesInLocalDbUseCase>(() =>
        _i216.SaveServiceTypesInLocalDbUseCase(
            gh<_i134.ServiceTypesRepository>()));
    gh.factory<_i217.SaveWeatherUnitsDataInLocalDb>(() =>
        _i217.SaveWeatherUnitsDataInLocalDb(
            gh<_i144.WeatherUnitsRepository>()));
    gh.factory<_i218.SaveWorkflowStatusesInLocalDbUseCase>(() =>
        _i218.SaveWorkflowStatusesInLocalDbUseCase(
            gh<_i147.WorkflowStatusesRepository>()));
    gh.factory<_i219.ServiceDepartmentsCubit>(
        () => _i219.ServiceDepartmentsCubit(
              gh<_i175.ClearServicesDepartmentsUseCase>(),
              gh<_i197.GetAllServicesDepartmentsUseCase>(),
              gh<_i215.SaveServiceDepartmentsInLocalDbUseCase>(),
            ));
    gh.factory<_i220.ServiceTypesCubit>(() => _i220.ServiceTypesCubit(
          gh<_i174.ClearServiceTypesUseCase>(),
          gh<_i196.GetAllServiceTypesUseCase>(),
          gh<_i216.SaveServiceTypesInLocalDbUseCase>(),
        ));
    gh.factory<_i221.UpdateUserDataUseCase>(
        () => _i221.UpdateUserDataUseCase(gh<_i138.UpdateUserRepository>()));
    gh.factory<_i222.WeatherUnitsCubit>(() => _i222.WeatherUnitsCubit(
          gh<_i176.ClearWeatherUnitsUseCase>(),
          gh<_i184.DownloadWeatherUnitsUseCase>(),
          gh<_i217.SaveWeatherUnitsDataInLocalDb>(),
        ));
    gh.factory<_i223.WorkflowStatusesCubit>(() => _i223.WorkflowStatusesCubit(
          gh<_i177.ClearWorkflowStatusesUseCase>(),
          gh<_i198.GetAllWorkflowStatusesUseCase>(),
          gh<_i218.SaveWorkflowStatusesInLocalDbUseCase>(),
        ));
    gh.factory<_i224.GetGenderCubit>(
        () => _i224.GetGenderCubit(gh<_i200.GetGenderFromLocalDbUseCase>()));
    gh.factory<_i225.UpdateUserDataCubit>(
        () => _i225.UpdateUserDataCubit(gh<_i221.UpdateUserDataUseCase>()));
    return this;
  }
}
