import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/constants/endpoints.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/infrastructure/vehicleApis/vehicle_repository.dart';
import 'package:new_app/model/driver/driver_base_model/vehicle_base_model.dart';
import 'package:new_app/model/driver/driver_request_model/driver_requestlist_base_model.dart';
import 'package:new_app/model/driver/owner_driver_reaquest_base_model/owner_driver_request_base_model.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:dio/dio.dart' as dio;
import 'package:new_app/model/profile/profile_base_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/dio_service.dart';
import 'package:new_app/services/image_picker.dart';

import '../../constants/constant.dart';

@LazySingleton(as: IVehicleRepository)
class VehicleRepoImpl implements IVehicleRepository {
  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> addMyVehicle(
      {required String regNumber,
      required String carModel,
      required String seats,
      required String category}) async {
    var data = {
      "reg_number": regNumber,
      "car_model": carModel,
      "seats": seats,
      "category": category,
    };
    dio.FormData formData = dio.FormData.fromMap(data);

    return await getIt<DioServices>()
        .request(
          url: apiAddVehicle,
          method: 'POST',
          data: formData,
        )
        .then((res) => res.fold((l) => Left(l), (r) => Right('success')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, VehicleBaseModel>>
      ownerVehicleDetail() async {
    return await getIt<DioServices>()
        .request(url: apiDriverDetails, method: 'GET')
        .then((value) => value.fold(
            (l) => Left(l), (r) => Right(VehicleBaseModel.fromJson(r.data))));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>
      ownerDriverReviewList() async {
    return await getIt<DioServices>()
        .request(url: '$apiDriverReview', method: 'GET')
        .then((value) => value.fold(
            (l) => Left(l), (r) => Right(ReviewBaseModel.fromJson(r.data))));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>>
      ownerDriverReviewUpdate(
          {required int id,
          required int rating,
          required String message,
          required DriverReviewStatus status}) async {
    if (status == DriverReviewStatus.create) {
      return await getIt<DioServices>()
          .request(url: '$apiDriverReview/store', method: 'POST', data: {
        "driver_id": 1,
        "rating": 4,
        "comment": "This is a test comment",
      }).then((value) => value.fold((l) => Left(l), (r) => Right('success')));
      //
    } else if (status == DriverReviewStatus.update) {
      return await getIt<DioServices>()
          .request(url: '$apiDriverReview/$id/update', method: 'POST', data: {
        "rating": 4,
        "comment": "This is a test comment",
      }).then((value) => value.fold((l) => Left(l), (r) => Right('success')));
      //
    } else {
      return await getIt<DioServices>()
          .request(url: '$apiDriverReview/$id/delete', method: 'DELETE')
          .then((value) => value.fold((l) => Left(l), (r) => Right('success')));
    }
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> ownerDriverEdit(
      {required String type,
      required String licenceNumber,
      required String expireDate,
      ImagePickerModel? licencePicture,
      ImagePickerModel? taxiPermitPicture,
      FilePickerResult? documentPicture}) async {
    print(' pdf byte : ${documentPicture?.files.last} ');
    print(' pdf byte 1 : ${documentPicture?.files.first.name} ');

    var data = type == 'add'
        ? {
            "is_driver": 1,
            "driver[license_number]": licenceNumber,
            "driver[exp_date]": expireDate,
            if (licencePicture?.imageUint8List != null)
              "driver[license_picture]": await dio.MultipartFile.fromBytes(
                licencePicture?.imageUint8List ?? [],
                filename: licencePicture?.imageFileName,
              ),
            if (taxiPermitPicture?.imageUint8List != null)
              "driver[taxi_permit]": await dio.MultipartFile.fromBytes(
                taxiPermitPicture?.imageUint8List ?? [],
                filename: taxiPermitPicture?.imageFileName,
              ),
            if (documentPicture != null)
              "driver[documents]": await dio.MultipartFile.fromBytes(
                documentPicture.files.first.bytes ?? [],
                filename: documentPicture.files.first.name,
              ),
          }
        : {
            "license_number": licenceNumber,
            "exp_date": expireDate,
            if (licencePicture?.imageUint8List != null)
              "license_picture": await dio.MultipartFile.fromBytes(
                licencePicture?.imageUint8List ?? [],
                filename: licencePicture?.imageFileName,
              ),
            if (taxiPermitPicture?.imageUint8List != null)
              "taxi_permit": await dio.MultipartFile.fromBytes(
                taxiPermitPicture?.imageUint8List ?? [],
                filename: taxiPermitPicture?.imageFileName,
              ),
            if (documentPicture != null)
              "documents": await dio.MultipartFile.fromBytes(
                documentPicture.files.first.bytes ?? [],
                filename: documentPicture.files.first.name,
              ),
          };
    print('------------------');
    print(data);
    print('------------------');

    dio.FormData formData = dio.FormData.fromMap(data);

    return await getIt<DioServices>()
        .request(
            url: type == 'add' ? roleDetails : apiVehicleEdit,
            method: 'POST',
            data: formData)
        .then((value) => value.fold((l) => Left(l), (r) => Right('success')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, OwnerDriverRequestBaseModel>>
      ownerDriverBookingList() async {
    return await getIt<DioServices>()
        .request(url: apiDriverOwnerBookings, method: 'GET')
        .then((value) => value.fold((l) => Left(l),
            (r) => Right(OwnerDriverRequestBaseModel.fromJson(r.data))

    )

    );


  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectVehicleBooking({
    required int id,
    required String status,
  }) async {
    var data = {"status": status};
    // dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: '/driver/trip/request/$id/update',
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
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      deleteMyVehicleReview({required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/drivers/reviews/$id/delete',
      method: 'DELETE',
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, DriverRequsetlistBaseModel>> driverRequestList() async {
    return await getIt<DioServices>()
        .request(url: '$driverRequsetList', method: 'GET')
        .then((value) => value.fold(
            (l) => Left(l), (r) => Right(DriverRequsetlistBaseModel.fromJson(r.data))));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> acceptOrRejectDriverRequest({required int id, required String status}) async{
    var data = {"status": status};
    var response = await getIt<DioServices>().request(
      url: '/trip/driver/request/$id/update',
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
  Future<Either<Either<MainFailure, ErrorModel>, ProfileBaseModel>> profileListing() async{
    return await getIt<DioServices>()
        .request(url: '$profileDetails', method: 'GET')
        .then((value) => value.fold(
            (l) => Left(l), (r) => Right(ProfileBaseModel.fromJson(r.data))));
  }
}
