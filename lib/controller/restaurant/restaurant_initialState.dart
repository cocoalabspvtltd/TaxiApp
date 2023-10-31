import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/packages/geocode/geocodingModel.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_base_model.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';

enum RestaurantAddOrEdit { add, edit }

mixin RestaurantInitialState {
  //get Resturants
  RestaurantBaseModel? restaurantModel;
  bool restaurantListLoader = false;
  Either<MainFailure, ErrorModel>? errorGetRestaurantList;
  ScrollController restaurantListController = ScrollController();
  Coordinates? resLocationFrom;
  Coordinates? resLocationTo;
  TextEditingController resLocationFromCtr = TextEditingController();
  TextEditingController resLocationToCtr = TextEditingController();
  TextEditingController resTypeCtr = TextEditingController();

  RestaurantModel? restaurantDetail;
  bool restaurantDetailLoader = false;
  bool restaurantBookingLoader = false;
  Either<MainFailure, ErrorModel>? errorBookTheRes;
  Either<MainFailure, ErrorModel>? errorRestaurantDetail;

  //edit Restaurant
  RestaurantAddOrEdit? restaurantAddOrEdit;
  ImagePickerModel? restaurantUpdateImage;
  bool editMyRestaurantLoader = false;
  final editMyRestaurantKey = GlobalKey<FormState>();

  Either<MainFailure, ErrorModel>? errorEditRestaurantFailure;
  //booking
  RestaurantBaseModel? bookedRestaurantModel;
  bool bookedRestaurantListLoader = false;
  Either<MainFailure, ErrorModel>? errorBookeRestaurant;
  //owner my restaurant
  bool ownerMyRestaurantLoader = false;
  Either<MainFailure, ErrorModel>? errorOwnerMyRestaurant;
  RestaurantModel? ownerMyRestaurantModel;
  TextEditingController? ownerMyRestaurantNameCtr = TextEditingController();
  TextEditingController? ownerMyRestaurantPhoneCtr = TextEditingController();
  TextEditingController? ownerMyRestaurantAddressCtr = TextEditingController();
  TextEditingController ownerMyRestaurantTypeCtr = TextEditingController();
  TextEditingController ownerMyRestaurantLocationCtr = TextEditingController();
  Coordinates? ownerMyRestaurantLatLang;
  TextEditingController? ownerMyRestaurantCityCtr = TextEditingController();
  TextEditingController? ownerMyRestaurantStateCtr = TextEditingController();
  TextEditingController? ownerMyRestaurantDistrictCtr = TextEditingController();
  //get food list
  bool ownerMyFoodListLoader = false;
  ScrollController myRestaurantFoodListController = ScrollController();
  Either<MainFailure, ErrorModel>? ErrorOwnerMyFoodList;
  RestaurantBaseModel? ownerMyFoodListModel;
//create food for owner myRestaurant
  bool createFoddOwnerLoader = false;
  Either<MainFailure, ErrorModel>? errorCreateFoodOwner;
  Either<MainFailure, ErrorModel>? errorUpdateFoodOwner;
  Either<MainFailure, ErrorModel>? errorDeleteFoodOwner;

  TextEditingController? ownerFoodNameCtr = TextEditingController();
  TextEditingController? ownerFoodDescriptionCtr = TextEditingController();
  TextEditingController? ownerFoodTypeCtr = TextEditingController();
  TextEditingController? ownerFoodPriceCtr = TextEditingController();
  String? ownerFoodImage;
  final addFoodFormKey = GlobalKey<FormState>();
  ImagePickerModel? addFoodImage;
  int? selectedRestaurantId;
  String? selcectedImageFromList;
  int? selectedFoodId;
  AddOrEditFood? addOrEditFood;

  //my Restaurant Bookings
  Either<MainFailure, ErrorModel>? errorMyRestaurantBookingsList;
  bool myRestaurantBookingsListLoader = false;
  RestaurantBaseModel? myRestaurantBookingsListModel;

  Either<MainFailure, ErrorModel>? errorAcceptOrRejectBooking;
  bool acceptOrRejectBookingLoader = false;

  //my Restaurant Review
  Either<MainFailure, ErrorModel>? errorMyRestaurantReviewsList;
  bool myRestaurantReviewListLoader = false;
  ReviewBaseModel? myRestaurantReviewsListModel;

  //delete my Restaurant Review
  Either<MainFailure, ErrorModel>? errorDeleteMyRestaurantReview;
  bool deleteMyRestaurantReviewLoader = false;
}
