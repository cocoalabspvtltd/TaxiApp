import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/constants/constant.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_initialState.dart';
import 'package:new_app/infrastructure/restaurant_apis/restaurant_repository.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:dio/dio.dart' as dio;
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';

import '../../constants/endpoints.dart';
import '../../core/failure/main_failure.dart';
import '../../core/injection/injectable.dart';
import '../../model/restuarant/restaurant_base_model/restaurant_base_model.dart';
import '../../services/dio_service.dart';

@LazySingleton(as: IRestaurantRepo)
class RestaurantRepoImpl implements IRestaurantRepo {
  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getRestaurants({
    required int page,
    required int perPage,
    required String? type,
    required String? minLat,
    required String? minLong,
    required String? maxLat,
    required String? maxLong,
  }) async {
    var data = {
      "page": page,
      "per_page": perPage,
      "type": type,
      "location[min_lat]": minLat,
      "location[min_lan]": minLong,
      "location[max_lat]": maxLat,
      "location[max_lan]": maxLong
    };

    dio.FormData formData = dio.FormData.fromMap(data);

    log(data.toString());

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/$apiGetRestaurant',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(RestaurantBaseModel.fromJson(response.data)),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantModel>>?
      getRestaurantDetails(int id) async {
    var response = await getIt<DioServices>()
        .request(url: '$baseUrl$apigetRestaurantDetail$id/show', method: 'GET');
    return response.fold((failure) => Left(failure),
        (response) => Right(RestaurantModel.fromJson(response.data[0])));
  }

  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? bookRestaurant(
      {required int restaurant_id,
      required String date,
      required String time}) async {
    var data = {
      "restaurant_id": restaurant_id,
      "date": date,
      "time": time,
    };

    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/$apibookRestaurent',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getBookedRestaurantList() async {
    var response = await getIt<DioServices>()
        .request(url: '$baseUrl/$apiBookedRestaurants', method: 'GET');

    return response.fold((failure) => Left(failure),
        (response) => Right(RestaurantBaseModel.fromJson(response.data)));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantModel>>?
      getOwnerMyRestaurant() async {
    var response = await getIt<DioServices>()
        .request(url: '$baseUrl/$apigetOwnerMyRestaurant', method: 'GET');

    log(response.toString());

    return response.fold(
        (failure) => Left(failure),
        (response) =>
            Right(RestaurantModel.fromJson(response.data['restaurant'])));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getOwnerMyFoodList(
          {required int page,
          required int perPage,
          required int restaurantId}) async {
    var data = {
      "page": page,
      "per_page": perPage,
    };
    log(data.toString());
    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/restaurant/$restaurantId/food-items',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(RestaurantBaseModel.fromJson(response.data)),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantAddFood(
          {required String name,
          required String description,
          required String price,
          required ImagePickerModel image,
          required String type}) async {
    var data = {
      "name": name,
      "description": description,
      "price": price,
      "image": await dio.MultipartFile.fromBytes(
        image.imageUint8List ?? [],
        filename: image.imageFileName,
      ),
      "type": type,
    };

    log(data.toString());
    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/$apiOwnerMyRestaurantAddFoodEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantEditFood(
          {required String name,
          required String description,
          required String price,
          ImagePickerModel? selectedImage,
          String? image,
          required int id,
          required String type}) async {
    var data = {
      "name": name,
      "description": description,
      "price": price,
      if (selectedImage != null)
        "image": await dio.MultipartFile.fromBytes(
          selectedImage.imageUint8List ?? [],
          filename: selectedImage.imageFileName,
        ),
      "type": type,
    };
    log(id.toString());
    log(data.toString());
    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/restaurant/food/$id/update',
      method: 'POST',
      data: formData,
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      ownerMyRestaurantDeleteFood({required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/restaurant/food/$id/delete',
      method: 'DELETE',
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>>?
      getOwnerMyRestaurantBookingList() async {
    var response = await getIt<DioServices>().request(
        url: '$baseUrl/$apiGetOwnerMyRestaurantBookingListEndPoint',
        method: 'GET');

    log(response.toString());

    return response.fold((failure) => Left(failure),
        (response) => Right(RestaurantBaseModel.fromJson(response.data)));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>?
      getReviewsOfMyRestaurantList() async {
    var response = await getIt<DioServices>().request(
        url: '$baseUrl/$apiGetReviewsOdMyRestaurantListEndpoint',
        method: 'GET');

    log(response.toString());

    return response.fold((failure) => Left(failure),
        (response) => Right(ReviewBaseModel.fromJson(response.data)));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      bookingAcceptOrRejectMyRestaurant(
          {required String status, required int id}) async {
    var data = {
      "status": status,
    };

    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/restaurant/bookings/$id/update',
      method: 'POST',
      data: formData,
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
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
      String? district}) async {
    final ctr = Get.find<RestaurantController>();

    var data;
    String? endUrl;
    if (ctr.restaurantAddOrEdit == RestaurantAddOrEdit.add) {
      endUrl = roleDetails;
      data = {
        "is_restaurant": 1,
        "restaurant[name]": name,
        "restaurant[phone]": phone,
        "restaurant[address]": address,
        "restaurant[type]": type,
        "restaurant[city]": city,
        "restaurant[state]": state,
        "restaurant[district]": district,
        "restaurant[latitude]": maxLat,
        "restaurant[longitude]": maxLong,
        if (selectedImage != null)
          "restaurant[image]": await dio.MultipartFile.fromBytes(
            selectedImage.imageUint8List ?? [],
            filename: selectedImage.imageFileName,
          ),
      };
    } else {
      endUrl = apiEditMyRestaurantEndpint;
      data = {
        "id": id,
        if (name != null) "name": name,
        if (phone != null) "phone": phone,
        if (address != null) "address": address,
        if (type != null) "type": type,
        if (city != null) "city": city,
        if (state != null) "state": state,
        if (district != null) "district": district,
        "latitude": maxLat,
        "longitude": maxLong,
        if (selectedImage != null)
          "image": await dio.MultipartFile.fromBytes(
            selectedImage.imageUint8List ?? [],
            filename: selectedImage.imageFileName,
          ),
      };
    }

    print('---------------');
    print(data);
    print('---------------');

    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl$endUrl',
      method: 'POST',
      data: formData,
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>?
      deleteMyRestaurantReview({required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/restaurant/reviews/$id/delete',
      method: 'DELETE',
      auth: false,
    );
    return response.fold(
      (failure) => Left(failure),
      (response) => Right(response.data),
    );
  }
}
