import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/driver/driver_base_model/vehicle_base_model.dart';
import 'package:new_app/model/driver/owner_driver_reaquest_base_model/owner_driver_request_base_model.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';

enum DriverReviewStatus { create, update, delete }

abstract class IVehicleRepository {
  Future<Either<Either<MainFailure, ErrorModel>, String>> addMyVehicle(
      {required String regNumber,
      required String carModel,
      required String seats,
      required String category});

  Future<Either<Either<MainFailure, ErrorModel>, VehicleBaseModel>>
      ownerVehicleDetail();

  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>
      ownerDriverReviewList();

  Future<Either<Either<MainFailure, ErrorModel>, String>>
      ownerDriverReviewUpdate(
          {required int id,
          required int rating,
          required String message,
          required DriverReviewStatus status});

  Future<Either<Either<MainFailure, ErrorModel>, String>> ownerDriverEdit({
    required String type,
    required String licenceNumber,
    required String expireDate,
    ImagePickerModel? licencePicture,
    ImagePickerModel? taxiPermitPicture,
    FilePickerResult? documentPicture,
  });

  Future<Either<Either<MainFailure, ErrorModel>, OwnerDriverRequestBaseModel>>
      ownerDriverBookingList();

  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectVehicleBooking({
    required int id,
    required String status,
  });

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      deleteMyVehicleReview({required int id});
}
