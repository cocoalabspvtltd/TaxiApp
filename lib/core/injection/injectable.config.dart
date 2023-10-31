// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:new_app/controller/auth/auth_controller.dart' as _i19;
import 'package:new_app/controller/home/home_controller.dart' as _i20;
import 'package:new_app/controller/hotel/hote_controller.dart' as _i21;
import 'package:new_app/controller/restaurant/restaurant_controller.dart'
    as _i16;
import 'package:new_app/controller/vehicle/vehicle_controller.dart' as _i18;
import 'package:new_app/core/packages/geocode/geocoding.dart' as _i5;
import 'package:new_app/infrastructure/authApis/auth_repo_impl.dart' as _i7;
import 'package:new_app/infrastructure/authApis/auth_repository.dart' as _i6;
import 'package:new_app/infrastructure/hotel_apis/hotel_repo_impl.dart' as _i9;
import 'package:new_app/infrastructure/hotel_apis/hotel_repository.dart' as _i8;
import 'package:new_app/infrastructure/restaurant_apis/restaurant_repo_impl.dart'
    as _i11;
import 'package:new_app/infrastructure/restaurant_apis/restaurant_repository.dart'
    as _i10;
import 'package:new_app/infrastructure/tripApis/trip_repo_impl.dart' as _i13;
import 'package:new_app/infrastructure/tripApis/trip_repository.dart' as _i12;
import 'package:new_app/infrastructure/vehicleApis/vehicle_repo_impl.dart'
    as _i15;
import 'package:new_app/infrastructure/vehicleApis/vehicle_repository.dart'
    as _i14;
import 'package:new_app/services/dio_service.dart' as _i4;
import 'package:new_app/services/image_picker.dart' as _i3;
import 'package:new_app/services/shared_pref.dart' as _i17;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.CustomImagePicker>(() => _i3.CustomImagePicker());
    gh.lazySingleton<_i4.DioServices>(() => _i4.DioServices());
    gh.lazySingleton<_i5.GoogleGeocoding>(() => _i5.GoogleGeocoding());
    gh.lazySingleton<_i6.IAuthRepository>(() => _i7.AuthRepoImpl());
    gh.lazySingleton<_i8.IHotelRepository>(() => _i9.HotelRepoImpl());
    gh.lazySingleton<_i10.IRestaurantRepo>(() => _i11.RestaurantRepoImpl());
    gh.lazySingleton<_i12.ITripRepository>(() => _i13.TripRepositoryImpl());
    gh.lazySingleton<_i14.IVehicleRepository>(() => _i15.VehicleRepoImpl());
    gh.factory<_i16.RestaurantController>(
        () => _i16.RestaurantController(gh<_i10.IRestaurantRepo>()));
    gh.lazySingleton<_i17.SharedPref>(() => _i17.SharedPref());
    gh.factory<_i18.VehicleController>(
        () => _i18.VehicleController(gh<_i14.IVehicleRepository>()));
    gh.factory<_i19.AuthController>(
        () => _i19.AuthController(gh<_i6.IAuthRepository>()));
    gh.factory<_i20.HomeController>(
        () => _i20.HomeController(gh<_i12.ITripRepository>()));
    gh.factory<_i21.HotelController>(
        () => _i21.HotelController(gh<_i8.IHotelRepository>()));
    return this;
  }
}
