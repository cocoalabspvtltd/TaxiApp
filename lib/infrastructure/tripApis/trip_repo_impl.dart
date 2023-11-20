import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:injectable/injectable.dart';
import 'package:new_app/constants/endpoints.dart';
import 'package:new_app/model/trip/driver_routes_base_model/driver_routes_base_model.dart';
import 'package:new_app/services/dio_service.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/infrastructure/tripApis/trip_repository.dart';
import 'package:new_app/model/trip/trip_base_model/trip_base_model.dart';
import 'package:new_app/widgets/custom_print.dart';

import '../../model/trip/pool_model/pool_model.dart';

@LazySingleton(as: ITripRepository)
class TripRepositoryImpl implements ITripRepository {
  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> createTrip({
    required String? from,
    required String? to,
    required String? date,
    required String? startLong,
    required String? startLat,
    required String? endLong,
    required String? endLat,
  }) async {
    var data = {
      "from": from,
      "to": to,
      "date": date,
      "start_lat": startLat,
      "start_long": startLong,
      "end_lat": endLat,
      "end_long": endLong
    };

    dio.FormData formData = dio.FormData.fromMap(data);

    log(data.toString());

    return await getIt<DioServices>()
        .request(url: apiTripCreate, method: 'POST', data: formData)
        .then((value) => value.fold((l) => Left(l), (r) => Right('success')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, TripBaseModel>>?
      userCreatedTrips() async {
    return await getIt<DioServices>()
        .request(url: apiTripList, method: 'GET')
        .then((value) => value.fold(
            (l) => Left(l), (r) => Right(TripBaseModel.fromJson(r.data))));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> tripCreatePool(
      {required int id}) async {
    return await getIt<DioServices>()
        .request(url: '$apiCreatePool/$id/store', method: 'GET')
        .then((value) => value.fold((l) => Left(l), (r) => Right('succes')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, List<PoolModel>>>?
      getPoolInvites({required int tripId}) async {
    final response = await getIt<DioServices>().request(
      url: '$apiCreatePool/$tripId/invites',
      method: 'GET',
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        List<PoolModel> poolList = (r.data["invites"] as List)
            .map((e) => PoolModel.fromJson(e))
            .toList();
        return Right(poolList);
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectPoolInvite({
    required int id,
    required String status,
  }) async {
    var data = {"status": status};
    var response = await getIt<DioServices>().request(
      url: '/trip/pool/$id/accept-invite',
      method: 'POST',
      data: data,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right("success"),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, PoolModel>> getMyPool(
      {required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '/trip/pool/$id/show',
      method: 'GET',
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(PoolModel.fromJson(response.data["pool"])),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, TripBaseModel>>
      userOnThisRoute({required int id}) async {
    return await getIt<DioServices>()
        .request(url: '$apiUserOnThisRoute/$id/user-list', method: 'GET')
        .then(
          (value) => value.fold(
            (l) => Left(l),
            (r) => Right(TripBaseModel.fromJson(r.data)),
          ),
        );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, DriverRoutesBaseModel>>
      driverOnThisRoute({
    required int tripId,
  }) async {
    return await getIt<DioServices>()
        .request(url: '$apiUserOnThisRoute/$tripId/driver-list', method: 'GET')
        .then(
          (value) => value.fold(
            (l) => Left(l),
            (r) => Right(DriverRoutesBaseModel.fromJson(r.data)),
          ),
        );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> addToPool(
      {required int userId, required int tripId, required int poolId}) async {
    customPrint('''

         "user_id": $userId,
         "trip_id": $tripId,
         "pool_id": $poolId

        ''');

    return await getIt<DioServices>()
        .request(
          url: '$apiCreatePool/$poolId/invite?user_id=$userId&trip_id=$tripId',
          method: 'POST',
          // data: {
          //   "user_id": userId,
          //   "trip_id": tripId
          // }
        )
        .then((value) => value.fold((l) => Left(l), (r) => Right('succes')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> addDriverToPool(
      {required int userId, required int tripId, required int poolId}) async {
    customPrint('''

         "driver_id": $userId,
         "trip_id": $tripId,
         "pool_id": $poolId

        ''');

    return await getIt<DioServices>()
        .request(
          url: '$apiUserOnThisRoute/$tripId/driver-request?driver_id=$userId',
          method: 'Post',
          // data: {"driver_id": userId, "trip_id": tripId},
        )
        .then((value) => value.fold((l) => Left(l), (r) => Right('succes')));
  }
}
