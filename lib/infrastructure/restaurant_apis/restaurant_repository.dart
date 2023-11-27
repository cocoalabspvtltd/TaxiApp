import 'package:dartz/dartz.dart';

import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_base_model.dart';

import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/services/image_picker.dart';

import '../../model/errors/error_model/error_model.dart';
import '../../model/restuarant/restaurant_base_model/restaurant_model.dart';
import '../../model/review/review_base_model/review_base_model.dart';

abstract class IRestaurantRepo {
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getRestaurants({
    required int page,
    required int perPage,
    required String? type,
    required String? minLat,
    required String? minLong,
    required String? maxLat,
    required String? maxLong,
  });

  Future<Either<Either<MainFailure, ErrorModel>, RestaurantModel>>?
      getRestaurantDetails(int id);

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? editMyRestaurant(
      {int? id,
      String? name,
      String? phone,
      String? address,
      String? type,
      String? city,
      String? state,
      ImagePickerModel? selectedImage,
      required String? maxLat,
      required String? maxLong,
      String? district});

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? bookRestaurant(
      {required int restaurant_id, required String date, required String time});
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? bookRestaurantreview(
      {required int restaurant_id, required int rating, required String comment});

  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getBookedRestaurantList();

  Future<Either<Either<MainFailure, ErrorModel>, RestaurantModel>>?
      getOwnerMyRestaurant();

  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getOwnerMyFoodList(
          {required int page, required int perPage, required int restaurantId});
//food
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantAddFood(
          {required String name,
          required String description,
          required String price,
          required ImagePickerModel image,
          required String type});
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantEditFood(
          {required String name,
          required String description,
          required String price,
          ImagePickerModel? selectedImage,
          String? image,
          required int id,
          required String type});

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantDeleteFood({
    required int id,
  });

  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getOwnerMyRestaurantBookingList();

//review
  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>?
      getReviewsOfMyRestaurantList();

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      bookingAcceptOrRejectMyRestaurant(
          {required String status, required int id});

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      deleteMyRestaurantReview({required int id});
}
