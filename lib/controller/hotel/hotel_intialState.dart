import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/packages/geocode/geocodingModel.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/hotel/guest_model/guest_model.dart';
import 'package:new_app/model/hotel/hotel_booking_model/hotel_booking_model.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_base_model.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_model.dart';
import 'package:new_app/model/hotel/hotel_model/room.dart';
import 'package:new_app/model/hotel/room_model/rooms_base_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';

mixin HotelInitialState {
  final editHotelFormKey = GlobalKey<FormState>();

  TextEditingController hotelLocationFromCtr = TextEditingController();
  TextEditingController hotelLocationToCtr = TextEditingController();
  Coordinates? hotelLatLong;
  Coordinates? resLocationFrom;
  Coordinates? resLocationTo;
  TextEditingController resLocationFromCtr = TextEditingController();
  TextEditingController resLocationToCtr = TextEditingController();
  TextEditingController checkInDatePickerSearchCtr = TextEditingController();
  TextEditingController checkOutDatePickerSearchCtr = TextEditingController();

  HotelBaseModel? hotelModel;
  bool hotelBtnLoader = false;
  MainFailure? hotelListFailure;
  TextEditingController minBudgetCtr = TextEditingController();
  TextEditingController datePickerCtr = TextEditingController();
  TextEditingController maxBudgetCtr = TextEditingController();
  List<HotelBookingModel>? myHotelBookingList;
  bool myHotelBookingListLoader = false;
  Either<MainFailure, ErrorModel>? myHotelBookingListFailure;
  MainFailure? hotelDetailsFailure;
  HotelModel? hotelDetail;
  Room? selectedRoom;
  TextEditingController checkInDatePickerCtr = TextEditingController();
  TextEditingController checkOutDatePickerCtr = TextEditingController();
  List<GuestModel> guestList = [];
  TextEditingController guestNameCtr = TextEditingController();
  TextEditingController guestPhoneCtr = TextEditingController();
  TextEditingController guestAgeCtr = TextEditingController();
  TextEditingController guestGenderCtr = TextEditingController();
  TextEditingController guestAddressCtr = TextEditingController();
  bool tileExpanded = false,
      hotelBookingLoader = false,
      getMyHotelLoader = false;
  Either<MainFailure, ErrorModel>? myHotelExceptions;
  HotelModel? myHotel;

  /// Hotel edit
  TextEditingController hotelEditLocation = TextEditingController();
  Coordinates? hotelEditLatLang;
  ImagePickerModel? hotelUpdateImage;
  TextEditingController hotelEditNameCtr = TextEditingController();
  TextEditingController hotelEditPhoneCtr = TextEditingController();
  TextEditingController hotelEditAddressCtr = TextEditingController();
  TextEditingController hotelEditTypeCtr = TextEditingController();
  TextEditingController hotelEditCityCtr = TextEditingController();
  TextEditingController hotelEditDistrictCtr = TextEditingController();
  TextEditingController hotelEditStateCtr = TextEditingController();

  /// Rooms List and add/ edit rooms
  Room? selectedRoomDetail;
  RoomsBaseModel? roomBaseModel;
  ImagePickerModel? addRoomImage;
  Either<MainFailure, ErrorModel>? roomsListExceptions;
  Either<MainFailure, ErrorModel>? addOrEditRoomExceptions;
  bool roomsListLoader = false, addOrEditRoomLoading = false;
  TextEditingController roomTypeCtr = TextEditingController();
  TextEditingController roomPriceCtr = TextEditingController();
  TextEditingController roomBedTypeCtr = TextEditingController();

  /// My hotel reviews

  ReviewBaseModel? myHotelReviewBaseModel;
  Either<MainFailure, ErrorModel>? myHotelReviewsFailure;
  bool myHotelReviewsLoader = false, deleteReviewLoader = false;

  /// Accept or reject hotel booking

  bool acceptBookingLoader = false, rejectBookingLoader = false;

  /// Users booked hotel list
  bool userBookedHotelLoader = false;
  List<HotelBookingModel>? userBookedHotelList;
  Either<MainFailure, ErrorModel>? userBookedHotelFailure;

  bool deleteRoomLoader = false;
}
