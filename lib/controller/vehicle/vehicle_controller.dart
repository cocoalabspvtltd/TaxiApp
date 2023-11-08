import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_initialState.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/infrastructure/vehicleApis/vehicle_repository.dart';
import 'package:new_app/model/driver/driver_request_model/driver_request_model.dart';
import 'package:new_app/model/driver/owner_driver_reaquest_base_model/ownerDriverRequestModel.dart';
import 'package:new_app/services/image_picker.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../../model/errors/error_model/error_model.dart';

@Injectable()
class VehicleController extends GetxController with VehicleInitialState {
  final IVehicleRepository _vehicleRepoImpl;

  VehicleController(this._vehicleRepoImpl);

  void apiVehicleDetails() async {
    ownerVechileDetailsLoader = true;
    update(['ownerVechileDetailsLoader']);

    await _vehicleRepoImpl
        .ownerVehicleDetail()
        .then((value) => value.fold((l) => ownerVehicleDetailFailure = l, (r) {
              ownerVehicleDetailFailure = null;
              ownerVehicleDetails = r;

              if (r.driver != null) {
                ddExpireDate.text = r.driver?.expDate ?? '';
                ddLicenseNumber.text = r.driver?.licenseNumber ?? '';
                ddLicencePicture = ImagePickerModel(
                  imageUrl: r.driver?.licensePicture,
                );
                ddUploadDocument = null;
                ddTaxiPermit = ImagePickerModel(
                  imageUrl: r.driver?.taxiPermit,
                );
              }

              var carData = r.driver?.car;
              if (carData != null) {
                avRegisterNoCtr.text = carData.regNumber!;
                avCarModelCtr.text = carData.carModel!;
                avCategoryCtr.text = carData.category!;
                avSeatsCtr.text = carData.seats!.toString();
              }
            }));
    ownerVechileDetailsLoader = false;
    update(['ownerVechileDetailsLoader']);
  }

  void apiAddVehicle(BuildContext context) async {
    addVehicleloader = true;
    update(['addVehicleloader']);
    await _vehicleRepoImpl
        .addMyVehicle(
            regNumber: avRegisterNoCtr.text,
            carModel: avCarModelCtr.text,
            seats: avSeatsCtr.text,
            category: avCategoryCtr.text)
        .then((res) => res.fold(
                (l) => l.fold(
                        (l) => wwShowToast('Someting went wrong',
                            status: Status.failure), (r) {
                      if (r.errors?.regNumber != null) {
                        wwShowToast(r.errors!.regNumber!.first,
                            status: Status.failure);
                      } else if (r.errors?.seats != null) {
                        wwShowToast(r.errors!.seats!.first,
                            status: Status.failure);
                      } else if (r.errors?.category != null) {
                        wwShowToast(r.errors!.category!.first,
                            status: Status.failure);
                      }
                    }), (r) {
              // var carData = ownerVehicleDetails?.driver?.car;

              // if (carData != null) {

              ownerVehicleDetails = ownerVehicleDetails?.copyWith.driver?.car
                  ?.call(
                      regNumber: avRegisterNoCtr.text,
                      carModel: avCarModelCtr.text,
                      category: avCategoryCtr.text,
                      seats: int.parse(avSeatsCtr.text));

              update(['ownerVechileDetailsLoader']);
              // }
              wwShowToast('New Vehicle Added \n        Successfully',
                  status: Status.success);
            }));

    addVehicleloader = false;
    update(['addVehicleloader']);
  }

  void apiVehicleDetailClear() {
    ddLicenseNumber.clear();
    ddExpireDate.clear();
    ddLicencePicture = null;
    ddTaxiPermit = null;
    ddUploadDocument = null;
  }

  Future<void> apiVehicleEdit(String type) async {
    final ctr = Get.find<AuthController>();

    ddLoader = true;
    update(['ddLoader']);

    await _vehicleRepoImpl
        .ownerDriverEdit(
            type: type,
            licenceNumber: ddLicenseNumber.text,
            expireDate: ddExpireDate.text,
            licencePicture: ddLicencePicture,
            taxiPermitPicture: ddTaxiPermit,
            documentPicture: ddUploadDocument)
        .then((value) => value.fold((l) {
              ctr.signUpvehicleError = true;
              ctr.update(['signUpvehicleError']);

              l.fold(
                  (l) => wwShowToast('something went wrong',
                      status: Status.failure), (r) {
                if (r.errors?.driver?.first != null) {
                  wwShowToast(r.errors!.driver!.first, status: Status.failure);
                }
                //

                else if (r.errors?.driverExpDate?.first != null) {
                  wwShowToast(r.errors!.driverExpDate!.first,
                      status: Status.failure);
                }
                //

                else if (r.errors?.driverLicenseNumber?.first != null) {
                  wwShowToast(r.errors!.driverLicenseNumber!.first,
                      status: Status.failure);
                }
                //

                else if (r.errors?.driverDocuments?.first != null) {
                  wwShowToast(r.errors!.driverDocuments!.first,
                      status: Status.failure);
                }
                //

                else {
                  wwShowToast('something went wrong', status: Status.failure);
                }
              });
            }, (r) {
              ctr.signUpvehicleError = false;
              ctr.update(['signUpvehicleError']);
              if (ctr.loginUserData?.user?.isDriver == false) {
                apiVehicleDetails();
                ctr.loginUserData = ctr.loginUserData!.copyWith(
                    user: ctr.loginUserData!.user!.copyWith(isDriver: true));
              }

              wwShowToast('successfully added', status: Status.success);
            }));

    ddLoader = false;
    update(['ddLoader']);
  }

  void apiDriverReviewList() async {
    vehicleReviewLoader = true;
    update(['vehicleReviewLoader']);
    await _vehicleRepoImpl
        .ownerDriverReviewList()
        .then((value) => value.fold((l) => vehicleReviewFailure = l, (r) {
              vehicleReviewFailure = null;
              vehicleReviewList = r;
            }));
    vehicleReviewLoader = false;
    update(['vehicleReviewLoader']);
  }

  void apiDriverReviewUpdate(
      {required int id,
      required String comment,
      required int rating,
      required DriverReviewStatus status}) async {
    await _vehicleRepoImpl
        .ownerDriverReviewUpdate(
            id: id, rating: rating, message: comment, status: status)
        .then((value) => value.fold(
                (l) => wwShowToast('something went wrong ',
                    status: Status.failure), (r) {
              wwShowToast('review added ', status: Status.success);
            }));
  }

  void apiDriverOwnerBookingsList() async {
    driverOwnerBookingsLoading = true;
    update(['driverOwnerBookingsLoading']);

    await _vehicleRepoImpl.ownerDriverBookingList().then(
          (value) => value.fold((l) => driverOwnerBookingsFailure = l, (r) {
            driverOwnerBookings = r;
            driverOwnerBookingsFailure = null;
          }),
        );

    driverOwnerBookingsLoading = false;
    update(['driverOwnerBookingsLoading']);
  }

  void acceptOrRejectVehicleBookingFn({
    required int id,
    required AcceptOrRejectBooking acceptOrRejectBooking,
  }) async {
    if (acceptOrRejectBooking == AcceptOrRejectBooking.accept) {
      vehicleAcceptBookingLoader = true;
      update(["accept_booking"]);
    } else {
      vehicleRejectBookingLoader = true;
      update(["reject_booking"]);
    }

    final data = await _vehicleRepoImpl.acceptOrRejectVehicleBooking(
      id: id,
      status: acceptOrRejectBooking == AcceptOrRejectBooking.accept
          ? "accepted"
          : "rejected",
    );

    data.fold(
      (l) => l.fold(
        (l) => wwShowToast("Something went wrong", status: Status.failure),
        (r) => null,
      ),
      (r) {
        int? index = driverOwnerBookings?.requests?.indexWhere(
          (booking) => booking.id == id,
        );
        if (index != null && index != -1) {
          List<OwnerDriverRequestModel>? list =
              driverOwnerBookings?.requests?.toList();

          list![index] = list[index].copyWith(
            status: acceptOrRejectBooking == AcceptOrRejectBooking.accept
                ? "accepted"
                : "rejected",
          );
          driverOwnerBookings = driverOwnerBookings?.copyWith(requests: list);
          update(["driverOwnerBookingsLoading"]);
        }

        Get.back();
        wwShowToast(
          acceptOrRejectBooking == AcceptOrRejectBooking.accept
              ? "Booking Accepted Successfully"
              : "Booking Rejected Successfully",
          status: Status.success,
        );
      },
    );
    if (acceptOrRejectBooking == AcceptOrRejectBooking.accept) {
      vehicleAcceptBookingLoader = false;
      update(["accept_booking"]);
    } else {
      vehicleRejectBookingLoader = false;
      update(["reject_booking"]);
    }
  }

  void apiDeleteMyVehicleReview(int id) async {
    deleteMyVehicleReviewLoader = true;
    update(['update_btn_review_delete_vehicle']);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _vehicleRepoImpl.deleteMyVehicleReview(id: id);

    data?.fold((failure) {
      errorDeleteMyVehicleReview = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print(data);
      apiDriverReviewList();
      Get.back();
      wwShowToast(
        "Review Deleted Successfully",
        status: Status.success,
      );
    });
    deleteMyVehicleReviewLoader = false;
    update(['update_btn_review_delete_vehicle']);
  }


  void driverRequestList() async {
    driverRequestListLoader = true;
    update(['DriverRequestLoader']);
    await _vehicleRepoImpl
        .driverRequestList()
        .then((value) => value.fold((l) => driverRequestListFailure = l, (r) {
      driverRequestListFailure = null;
      driverRequestListing = r;
    }));
    driverRequestListLoader = false;
    update(['DriverRequestLoader']);
  }

  void acceptOrRejectDriverRequestFn({
    required int id,
    required AcceptOrRejectDriverRequest acceptOrRejectDriverRequest,
  }) async {
    if (acceptOrRejectDriverRequest == AcceptOrRejectDriverRequest.accept) {
      driverRequestAcceptBookingLoader = true;
      update(["accept_driver_request"]);
    } else {
      driverRequestRejectBookingLoader = true;
      update(["reject_driver_request"]);
    }

    final data = await _vehicleRepoImpl.acceptOrRejectDriverRequest(
      id: id,
      status: acceptOrRejectDriverRequest == AcceptOrRejectDriverRequest.accept
          ? "accepted"
          : "rejected",
    );

    data.fold(
          (l) => l.fold(
            (l) => wwShowToast("Something went wrong", status: Status.failure),
            (r) => null,
      ),
          (r) {
        int? index = driverRequestListing?.requests?.indexWhere(
              (request) => request.id == id,
        );
        if (index != null && index != -1) {
          List<DriverRequestModel>? list =
          driverRequestListing?.requests?.toList();

          list![index] = list[index].copyWith(
            status: acceptOrRejectDriverRequest == AcceptOrRejectDriverRequest.accept
                ? "accepted"
                : "rejected",
          );
          driverRequestListing = driverRequestListing?.copyWith(requests: list);
          update(["driverRequestsLoading"]);
        }

        Get.back();
        wwShowToast(
          acceptOrRejectDriverRequest == AcceptOrRejectDriverRequest.accept
              ? "Request Accepted Successfully"
              : "Request Rejected Successfully",
          status: Status.success,
        );
      },
    );
    if (acceptOrRejectDriverRequest == AcceptOrRejectDriverRequest.accept) {
      driverRequestAcceptBookingLoader = false;
      update(["accept_driver_request"]);
    } else {
      driverRequestAcceptBookingLoader = false;
      update(["reject_driver_request"]);
    }
  }
}
