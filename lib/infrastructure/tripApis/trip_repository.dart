import 'package:dartz/dartz.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/trip/driver_routes_base_model/driver_routes_base_model.dart';
import 'package:new_app/model/trip/trip_base_model/trip_base_model.dart';

import '../../model/trip/pool_model/pool_model.dart';
import '../../model/errors/error_model/error_model.dart';

abstract class ITripRepository {
  Future<Either<Either<MainFailure, ErrorModel>, String>> createTrip({
    required String? from,
    required String? to,
    required String? date,
    required String? startLong,
    required String? startLat,
    required String? endLong,
    required String? endLat,
  });

  Future<Either<Either<MainFailure, ErrorModel>, TripBaseModel>>?
      userCreatedTrips();

  Future<Either<Either<MainFailure, ErrorModel>, String>> tripCreatePool(
      {required int id});

  Future<Either<Either<MainFailure, ErrorModel>, List<PoolModel>>>?
      getPoolInvites({required int tripId});

  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectPoolInvite({
    required int id,
    required String status,
  });

  Future<Either<Either<MainFailure, ErrorModel>, PoolModel>> getMyPool(
      {required int id});

  Future<Either<Either<MainFailure, ErrorModel>, TripBaseModel>>
      userOnThisRoute({required int id});

  Future<Either<Either<MainFailure, ErrorModel>, DriverRoutesBaseModel>>
      driverOnThisRoute({
    required int tripId,
  });

  Future<Either<Either<MainFailure, ErrorModel>, String>> addToPool({
    required int userId,
    required int tripId,
    required int poolId,
  });

  Future<Either<Either<MainFailure, ErrorModel>, String>> addDriverToPool({
    required int userId,
    required int tripId,
    required int poolId,
  });
}
