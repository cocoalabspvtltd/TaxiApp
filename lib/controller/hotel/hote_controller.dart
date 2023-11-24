import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/hotel/hotel_intialState.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/infrastructure/hotel_apis/hotel_repository.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/hotel/guest_model/guest_model.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_base_model.dart';
import 'package:new_app/widgets/ww_popup.dart';
import 'package:new_app/widgets/ww_showToast.dart';
import '../../model/hotel/hotel_model/room.dart';
import '../../presentation/hotels/myHotels/myHotelEdit.dart';

@Injectable()
class HotelController extends GetxController with HotelInitialState {
  final IHotelRepository _hotelRepoImpl;

  HotelController(this._hotelRepoImpl);

  /// Fetch hotel list here
  void getHotels() async {
    if (hotelLatLong == null) {
      wwShowToast("Please select location", status: Status.failure);
      return;
    }

    // if (minBudgetCtr.text.isEmpty) {
    //   wwShowToast("Please choose minimum budget", status: Status.failure);
    //   return;
    // }
    // if (maxBudgetCtr.text.isEmpty) {
    //   wwShowToast("Please choose maximum budget", status: Status.failure);
    //   return;
    // }
    // if (datePickerCtr.text.isEmpty) {
    //   wwShowToast("Please choose a date", status: Status.failure);
    //   return;
    // }

    hotelBtnLoader = true;
    update(["get_hotel"]);
    Either<Either<MainFailure, ErrorModel>, HotelBaseModel>? data =
        await _hotelRepoImpl.getHotels(
      page: 1,
      perPage: 10,
      latitude: hotelLatLong!.latitude,
      longitude: hotelLatLong!.longitude,
      distance: 19000,
      minBudget:
          minBudgetCtr.text.isEmpty ? null : int.parse(minBudgetCtr.text),
      maxBudget:
          maxBudgetCtr.text.isEmpty ? null : int.parse(maxBudgetCtr.text),
      dateTime: datePickerCtr.text.isEmpty ? null : datePickerCtr.text,
    );

    data?.fold((failure) {
      // Manage failure here
      failure.fold((failure) {
        hotelListFailure = failure;
      }, (error) {
        wwShowToast(
          "${error.errors?.location?.first ?? "Something went wrong}"}",
          status: Status.failure,
        );
      });
      hotelBtnLoader = false;
    }, (data) {
      // Reult
      hotelModel = data;
      hotelListFailure = null;
      hotelBtnLoader = false;

      minBudgetCtr.clear();
      maxBudgetCtr.clear();
      datePickerCtr.clear();
      hotelLatLong = null;
      hotelLocationCtr.clear();
      log("${hotelModel?.hotels}", name: "Hotels list");
    });
    update(["get_hotel", "hotel_list"]);
  }

  /// Fetch my hotel details here
  void fetchMyHotel() async {
    getMyHotelLoader = true;
    update(['my_hotel']);
    final response = await _hotelRepoImpl.getMyHotel();
    response.fold((l) => myHotelExceptions = l, (r) {
      myHotelExceptions = null;
      myHotel = r;
    });
    getMyHotelLoader = false;
    update(['my_hotel']);
  }

  /// Fetch booking list for owner
  void apiOwnerBookingList() async {
    myHotelBookingListLoader = true;
    update(['myHotelListLoader']);
    await _hotelRepoImpl.ownerBookingList().then(
          (res) => res.fold(
            (l) => myHotelBookingListFailure = l,
            (r) => myHotelBookingList = r,
          ),
        );

    myHotelBookingListLoader = false;
    update(['myHotelListLoader']);
  }

  /// Fetch hotel details using hotel id
  void getHotelDetail({required int hotelId}) async {
    final data = await _hotelRepoImpl.getHotelDetails(hotelId: hotelId);
    data.fold(
      (failure) => failure.fold((l) => hotelDetailsFailure = l, (r) => null),
      (result) => hotelDetail = result,
    );
    update(["hotel_detail"]);
  }

  void selectHotelRoom(Room? room) {
    selectedRoom = room;
    update(["select_room"]);
  }

  /// Add guests when booking hotel
  void addGuests(GuestModel guest) {
    guestList.insert(0, guest);
    update(["add_guest"]);
  }

  /// Book hotel
  void bookHotel() async {
    hotelBookingLoader = true;
    update(["book_hotel"]);
    final data = await _hotelRepoImpl.bookHotel(
      roomId: selectedRoom!.id!,
      hotelId: 2,
      checkIn: checkInDatePickerCtr.text,
      checkOut: checkOutDatePickerCtr.text,
      guests: guestList,
    );

    data?.fold((l) {
      l.fold(
        (l) {
          wwShowToast("Something went wrong!", status: Status.failure);
        },
        (error) {
          if (error.errors?.checkIn != null) {
            wwShowToast(
              "${error.errors?.checkIn?.first}",
              status: Status.failure,
            );
          } else if (error.errors?.checkOut != null) {
            wwShowToast(
              "${error.errors?.checkOut?.first}",
              status: Status.failure,
            );
          } else if (error.errors?.roomId != null) {
            wwShowToast(
              "${error.errors?.roomId?.first}",
              status: Status.failure,
            );
          }
        },
      );
    }, (r) {
      Get.back();
      selectedRoom = null;
      guestList.clear();
      checkInDatePickerCtr.clear();
      checkOutDatePickerCtr.clear();
      popup(Get.context!, 'Hotel Booked Successfully');
    });
    hotelBookingLoader = false;
    update(["book_hotel"]);
  }

  /// Update text editing controllers and image - Edit Hotel Screen

  void updateDatas() {
    if (myHotel != null) {
      hotelEditCityCtr.text = myHotel?.city ?? "";
      hotelEditTypeCtr.text = myHotel?.type ?? "";
      hotelEditStateCtr.text = myHotel?.state ?? "";
      hotelEditNameCtr.text = myHotel?.hotelName ?? "";
      hotelEditAddressCtr.text = myHotel?.address ?? "";
      hotelEditPhoneCtr.text = myHotel?.hotelPhone ?? "";
      hotelEditDistrictCtr.text = myHotel?.district ?? "";
      hotelEditTypeCtr.clear();
      hotelEditLatLang = null;
      hotelUpdateImage = null;
      update(["edit_hotel_image"]);
    }
  }
  void apihotelreviewSubmit(int hotelId, int rating, String comment) async {
    hotelBookingLoader = true;
    //errorBookTheRes = null;
    update(["booking_btn"]);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
    await _hotelRepoImpl.bookhotelreview(
        hotel_id: hotelId, rating: rating, comment: comment);

    data?.fold((failure) {
    //  e = failure;
      failure.fold((failure) {}, (error) {
        log(error.toString());
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print("data $data");
      wwShowToast(
        "Review added Successfully",
        status: Status.success,
      );
      Get.back();
      // restaurantModel = data;
    });
    hotelBookingLoader = false;
    update(['booking_btn']);
  }
  Future<void> editMyHotelDetails({required AddOrEditHotel type}) async {
    final ctr = Get.find<AuthController>();

    if (hotelEditLatLang == null) {
      wwShowToast('Please search  location', status: Status.failure);
      ctr.signUpHotelError = true;
      ctr.update(['signUpHotelError']);
      return;
    }

    if (hotelEditTypeCtr.text.isEmpty) {
      wwShowToast('Please select type', status: Status.failure);
      ctr.signUpHotelError = true;
      ctr.update(['signUpHotelError']);
      return;
    }

    /// Check for any updates
    // if (hotelEditCityCtr.text == (myHotel?.city ?? "") &&
    //     hotelEditTypeCtr.text == (myHotel?.type ?? "") &&
    //     hotelEditStateCtr.text == (myHotel?.state ?? "") &&
    //     hotelEditNameCtr.text == (myHotel?.hotelName ?? "") &&
    //     hotelEditAddressCtr.text == (myHotel?.address ?? "") &&
    //     hotelEditPhoneCtr.text == (myHotel?.hotelPhone ?? "") &&
    //     hotelEditDistrictCtr.text == (myHotel?.district ?? "") &&
    //     hotelUpdateImage == null) {
    //   wwShowToast("No upates", status: Status.failure);
    //   return;
    // }

    final data = await _hotelRepoImpl.editMyHotel(
      apiType: type,
      latitude: hotelEditLatLang!.latitude,
      longitude: hotelEditLatLang!.longitude,
      image: hotelUpdateImage,
      type: hotelEditTypeCtr.text,
      city: hotelEditCityCtr.text,
      state: hotelEditStateCtr.text,
      phone: hotelEditPhoneCtr.text,
      hotelName: hotelEditNameCtr.text,
      address: hotelEditAddressCtr.text,
      district: hotelEditDistrictCtr.text,
    );
    data.fold(
      (l) {
        ctr.signUpHotelError = true;
        ctr.update(['signUpHotelError']);

        l.fold(
          (l) => wwShowToast("Something went wrong", status: Status.failure),
          (r) => null,
        );
      },
      (r) {
        ctr.signUpHotelError = false;
        ctr.update(['signUpHotelError']);
        fetchMyHotel();
        if (ctr.loginUserData?.user?.isHotel == false) {
          ctr.loginUserData = ctr.loginUserData!
              .copyWith(user: ctr.loginUserData!.user!.copyWith(isHotel: true));
        }
        wwShowToast("Updated Successfully", status: Status.success);
      },
    );
  }

  /// List all rooms in hotel - For owner
  void getMyHotelRoomsList() async {
    roomsListLoader = true;
    update(["rooms_list"]);

    final data = await _hotelRepoImpl.getMyHotelRoomsList();
    data.fold(
      (l) => roomsListExceptions = l,
      (r) {
        roomsListExceptions = null;
        roomBaseModel = r;
      },
    );
    roomsListLoader = false;
    update(["rooms_list"]);
  }

  /// My Hotel reviews list
  void getMyHotelReviewsList() async {
    myHotelReviewsLoader = true;
    update(["my_hotel_reviews"]);

    final data = await _hotelRepoImpl.getMyHotelReviews();

    data.fold(
      (l) => myHotelReviewsFailure = l,
      (r) => myHotelReviewBaseModel = r,
    );
    myHotelReviewsLoader = false;
    update(["my_hotel_reviews"]);
  }

  void setRoomValues({Room? room}) {
    if (room != null) {
      selectedRoomDetail = room;
      roomTypeCtr.text = room.type ?? "";
      roomPriceCtr.text = room.price ?? "";
      roomBedTypeCtr.text = room.bedType ?? "";
    } else {
      roomTypeCtr.clear();
      roomPriceCtr.clear();
      roomBedTypeCtr.clear();
      addRoomImage = null;
    }
  }

  void addRoom() async {
    if (addRoomImage == null) {
      wwShowToast("Please add room image", status: Status.failure);
      return;
    }
    addOrEditRoomLoading = true;
    update(["add_room_detail"]);
    final data = await _hotelRepoImpl.addRoom(
      type: roomTypeCtr.text,
      bedType: roomBedTypeCtr.text,
      price: int.parse(roomPriceCtr.text),
      image: addRoomImage!,
    );
    data.fold(
      (l) => l.fold(
        (l) => wwShowToast("Something went wrong", status: Status.failure),
        (r) => null,
      ),
      (r) {
        Get.back();
        getMyHotelRoomsList();
        setRoomValues();
        wwShowToast("Updated Successfully", status: Status.success);
      },
    );
    addOrEditRoomLoading = false;
    update(["add_room_detail"]);
  }

  void deleteMyHotelReview({required int id}) async {
    deleteReviewLoader = true;
    update(["my_hotel_reviews"]);
    final data = await _hotelRepoImpl.deleteHotelReview(id: id);
    data.fold(
      (l) => l.fold(
        (l) => wwShowToast("Something went wrong", status: Status.failure),
        (r) => null,
      ),
      (r) {
        final review = myHotelReviewBaseModel?.reviews
            .firstWhereOrNull((review) => review.id == id);
        if (review != null) {
          myHotelReviewBaseModel?.reviews.remove(review);
        }
        wwShowToast("Deleted Successfully", status: Status.success);
      },
    );
    deleteReviewLoader = false;
    update(["my_hotel_reviews"]);
  }

  /// Accept or reject hotel booking

  void acceptOrRejectHotelBookingFn({
    required int id,
    required AcceptOrRejectBooking acceptOrRejectBooking,
  }) async {
    if (acceptOrRejectBooking == AcceptOrRejectBooking.accept) {
      acceptBookingLoader = true;
      update(["accept_booking"]);
    } else {
      rejectBookingLoader = true;
      update(["reject_booking"]);
    }

    final data = await _hotelRepoImpl.acceptOrRejectHotelBooking(
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
        int? index = myHotelBookingList?.indexWhere(
          (booking) => booking.id == id,
        );
        if (index != null && index != -1) {
          myHotelBookingList![index] = myHotelBookingList![index].copyWith(
            status: acceptOrRejectBooking == AcceptOrRejectBooking.accept
                ? "accepted"
                : "rejected",
          );
          update(["myHotelListLoader"]);
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
      acceptBookingLoader = false;
      update(["accept_booking"]);
    } else {
      rejectBookingLoader = false;
      update(["reject_booking"]);
    }
  }

  /// Users Hotel Booking List
  void getUsersHotelBookingList() async {
    userBookedHotelLoader = true;
    update(["booked_hotels"]);

    final data = await _hotelRepoImpl.userBookedHotels();
    data.fold(
      (l) => userBookedHotelFailure = l,
      (r) {
        userBookedHotelFailure = null;
        userBookedHotelList = r;
      },
    );

    userBookedHotelLoader = false;
    update(["booked_hotels"]);
  }

  void apiDeleteRoom({required int roomId}) async {
    deleteRoomLoader = true;
    update(["delete_detail"]);
    final data = await _hotelRepoImpl.deleteRoom(id: roomId);

    data.fold(
      (l) => wwShowToast("Something went wrong", status: Status.failure),
      (r) {
        Get.back();
        Get.back();
        List<Room> rooms = roomBaseModel?.rooms?.toList() ?? [];
        rooms.removeWhere((room) => room.id == roomId);
        roomBaseModel = roomBaseModel?.copyWith(rooms: rooms);
        update(["rooms_list"]);
        wwShowToast("Room deleted Successfully", status: Status.success);
      },
    );

    deleteRoomLoader = false;
    update(["delete_detail"]);
  }
}
