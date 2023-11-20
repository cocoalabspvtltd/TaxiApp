import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/driver/driver.dart';
import 'package:new_app/model/driver/driver_base_model/vehicle_base_model.dart';
import 'package:new_app/model/driver/driver_request_model/driver_requestlist_base_model.dart';
import 'package:new_app/model/driver/owner_driver_reaquest_base_model/owner_driver_request_base_model.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/profile/profile_base_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';

mixin VehicleInitialState {
  List<MyVehicleModel> data = [
    MyVehicleModel('12341', 'Car-car Model', '4', 'category'),
    MyVehicleModel('12342', 'Car-car Model', '4', 'category'),
    MyVehicleModel('12343', 'Car-car Model', '4', 'category'),
    MyVehicleModel('12344', 'Car-car Model', '4', 'category'),
  ];

  bool addVehicleloader = false;
  bool ownerVechileDetailsLoader = false;

  VehicleBaseModel? ownerVehicleDetails;
  Either<MainFailure, ErrorModel>? ownerVehicleDetailFailure;

  TextEditingController avRegisterNoCtr = TextEditingController();
  TextEditingController avCarModelCtr = TextEditingController();
  TextEditingController avSeatsCtr = TextEditingController();
  TextEditingController avCategoryCtr = TextEditingController();

  //  owner driver details
  TextEditingController ddLicenseNumber = TextEditingController();
  TextEditingController ddExpireDate = TextEditingController();
  ImagePickerModel? ddLicencePicture;
  ImagePickerModel? ddTaxiPermit;
  FilePickerResult? ddUploadDocument;
  bool ddLoader = false;

  // owner driver bookings
  OwnerDriverRequestBaseModel? driverOwnerBookings;
  Either<MainFailure, ErrorModel>? driverOwnerBookingsFailure;
  bool driverOwnerBookingsLoading = false;

  // owner vehicle review
  bool vehicleReviewLoader = false;
  Either<MainFailure, ErrorModel>? vehicleReviewFailure;
  ReviewBaseModel? vehicleReviewList;
  bool vehicleAcceptBookingLoader = false;
  bool vehicleRejectBookingLoader = false;

  bool pdfViewerLoading = false;

  //delete my Restaurant Review
  Either<MainFailure, ErrorModel>? errorDeleteMyVehicleReview;
  bool deleteMyVehicleReviewLoader = false;

  DriverRequsetlistBaseModel? driverRequestListing;
  Either<MainFailure, ErrorModel>? driverRequestListFailure;
  bool driverRequestListLoader= false;

  bool driverRequestAcceptBookingLoader = false;
  bool driverRequestRejectBookingLoader = false;

  ProfileBaseModel? profileListing;
  Either<MainFailure, ErrorModel>? profileListFailure;
  bool profileListLoader= false;


}
