import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart' as dio;
import 'package:new_app/presentation/hotels/bookHotel/availableHotels.dart';
import '../../constants/endpoints.dart';
import '../../services/dio_service.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/utils/exports.dart';
import '../../core/injection/injectable.dart';
import '../../model/hotel/hotel_model/hotel_model.dart';
import '../../model/hotel/guest_model/guest_model.dart';
import 'package:new_app/core/failure/main_failure.dart';
import '../../presentation/hotels/myHotels/myHotelEdit.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import '../../model/review/review_base_model/review_base_model.dart';
import 'package:new_app/model/hotel/room_model/rooms_base_model.dart';
import 'package:new_app/model/hotel/hotel_model/hotel_base_model.dart';
import '../../model/hotel/hotel_booking_model/hotel_booking_model.dart';
import 'package:new_app/infrastructure/hotel_apis/hotel_repository.dart';
import '../../services/image_picker.dart';

@LazySingleton(as: IHotelRepository)
class HotelRepoImpl implements IHotelRepository {
  @override
  Future<Either<Either<MainFailure, ErrorModel>, HotelBaseModel>> getHotels(
      {required int page,
      required int perPage,
        required String? minLat,
        required String? minLong,
        required String? maxLat,
        required String? maxLong,
        required String? checkIn,
        required String? checkOut,
     }) async {
    var data = {
      "page": page,
      "per_page": perPage,
      "location[min_lat]": minLat,
      "location[min_lan]": minLong,
      "location[max_lat]": maxLat,
      "location[max_lan]": maxLong,
      "is_travelling":travelToUpdate,
      "location[current_lat]":currentHLatituderes,
      "location[current_lan]":currentHLongituderes,
    };

    if (checkIn != null && checkIn.isNotEmpty && checkOut != null && checkOut.isNotEmpty) {
      data["date[check_in]"] = checkIn;
      data["date[check_out]"] = checkOut;
    }

    log(data.toString());
    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl$hotelListEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(HotelBaseModel.fromJson(response.data)),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, List<HotelBookingModel>>>
      ownerBookingList() async {
    final response = await getIt<DioServices>().request(
      url: '$baseUrl$hotelOwnerBookingListEndPoint',
      method: 'GET',
    );
    return response.fold(
      (l) => Left(l),
      (r) {
        List<HotelBookingModel> list = (r.data["bookings"] as List)
            .map((e) => HotelBookingModel.fromJson(e))
            .toList();

        return Right(list);
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, HotelModel>> getHotelDetails(
      {required int hotelId}) async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/hotel/$hotelId/show',
      method: 'GET',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(HotelModel.fromJson(response.data["hotel"])),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>>? bookHotel({
    required int roomId,
    required int hotelId,
    required String checkIn,
    required String checkOut,
    required List<GuestModel> guests,
  }) async {
    var data = {
      "hotel_id": hotelId,
      "room_id": roomId,
      "check_in": checkIn,
      "check_out": checkOut,
      for (int i = 0; i < guests.length; i++) ...{
        "guests[$i][name]": guests[i].name,
        "guests[$i][age]": guests[i].age,
        "guests[$i][phone]": guests[i].phone,
        "guests[$i][gender]": guests[i].gender,
        "guests[$i][address]": guests[i].address,
      }
    };
    dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$bookHotelEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right("success"),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, HotelModel>>
      getMyHotel() async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$getMyHotelEndPoint',
      method: 'GET',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) {
        // return Right(HotelModel.fromJson(response.data["hotel"]));
        return Right(HotelModel.fromJson(response.data));
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> editMyHotel({
    required String type,
    required String city,
    required String state,
    required String phone,
    required String address,
    required double latitude,
    required String district,
    required double longitude,
    ImagePickerModel? image,
    required String hotelName,
    required AddOrEditHotel apiType,
  }) async {
    var data;
    if (apiType == AddOrEditHotel.add) {
      data = {
        "is_hotel": 1,
        "hotel": {
          "type": type,
          "city": city,
          "state": state,
          "address": address,
          "district": district,
          "latitude": latitude,
          "longitude": longitude,
          "hotel_phone": phone,
          "hotel_name": hotelName,
          if (image != null)
            "hotel_image": await dio.MultipartFile.fromFile(
              image.imagePath!,
              filename: image.imageFileName,
            ),
        }
      };
    } else {
      data = {
        "type": type,
        "city": city,
        "state": state,
        "address": address,
        "district": district,
        "latitude": latitude,
        "hotel_phone": phone,
        "longitude": longitude,
        "hotel_name": hotelName,
        if (image != null)
          "image": await dio.MultipartFile.fromFile(
            image.imagePath!,
            filename: image.imageFileName,
          ),
      };
    }

    print('----------------');
    print(data);
    print('----------------');

    dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: apiType == AddOrEditHotel.add
          ? '$addMyHotelEndPoint'
          : '$editMyHotelEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) {
        log("${response.data}", name: "Hotel edit response");
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, RoomsBaseModel>>
      getMyHotelRoomsList({int page = 1}) async {
    var data = {"page": page, "per_page": 10};
    dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$getMyHotelRoomListEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(RoomsBaseModel.fromJson(response.data)),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>
      getMyHotelReviews() async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$getMyHotelReviewsEndPoint',
      method: 'GET',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right(ReviewBaseModel.fromJson(response.data)),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> addRoom({
    required int price,
    required String type,
    required String bedType,
    required ImagePickerModel image,
  }) async {
    var data = {
      "type": type,
      "price": price,
      "bed_type": bedType,
      "images[]": await dio.MultipartFile.fromFile(
        image.imagePath!,
        filename: image.imageFileName,
      ),
    };
    dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$addRoomEndPoint',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
      (failure) => Left(failure),
      (response) {
        log("${response.data}", name: "Hotel edit response");
        return Right("Success");
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> deleteHotelReview(
      {required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/hotel/reviews/$id/delete',
      method: 'DELETE',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right("Success"),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectHotelBooking({
    required int id,
    required String status,
  }) async {
    var data = {"status": status};
    // dio.FormData formData = dio.FormData.fromMap(data);
    var response = await getIt<DioServices>().request(
      url: '$baseUrl/hotel/bookings/$id/update',
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
  Future<Either<Either<MainFailure, ErrorModel>, List<HotelBookingModel>>>
      userBookedHotels() async {
    var response = await getIt<DioServices>().request(
      url: '$baseUrl$userHotelBookingListEndpoint',
      method: 'GET',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) {
        List<HotelBookingModel> data = response.data["bookings"] == null
            ? []
            : (response.data["bookings"] as List)
                .map((e) => HotelBookingModel.fromJson(e))
                .toList();
        return Right(data);
      },
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> deleteRoom(
      {required int id}) async {
    var response = await getIt<DioServices>().request(
      url: '$deleteRoomEndPoint/$id/delete',
      method: 'DELETE',
    );

    return response.fold(
      (failure) => Left(failure),
      (response) => Right("Success"),
    );
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? bookhotelreview(
      {required int hotel_id, required int rating, required String comment}) async {
    var data = {
      "hotel_id": hotel_id,
      "rating": rating,
      "comment": comment,
    };
    print("->${data}");
    dio.FormData formData = dio.FormData.fromMap(data);

    var response = await getIt<DioServices>().request(
      url: '$baseUrl/$apibookedhotelreview',
      method: 'POST',
      data: formData,
      auth: false,
    );

    return response.fold(
          (failure) => Left(failure),
          (response) => Right(response.data),
    );
  }
}
