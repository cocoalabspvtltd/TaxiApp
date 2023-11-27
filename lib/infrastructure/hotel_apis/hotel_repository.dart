import 'package:dartz/dartz.dart';
import 'package:new_app/model/hotel/room_model/rooms_base_model.dart';
import '../../services/image_picker.dart';
import '../../core/failure/main_failure.dart';
import '../../model/hotel/guest_model/guest_model.dart';
import '../../model/hotel/hotel_model/hotel_model.dart';
import '../../model/errors/error_model/error_model.dart';
import '../../presentation/hotels/myHotels/myHotelEdit.dart';
import '../../model/hotel/hotel_model/hotel_base_model.dart';
import '../../model/review/review_base_model/review_base_model.dart';
import '../../model/hotel/hotel_booking_model/hotel_booking_model.dart';

abstract class IHotelRepository {
  Future<Either<Either<MainFailure, ErrorModel>, HotelBaseModel>>? getHotels({
    required int page,
    required int perPage,
    required String? minLat,
    required String? minLong,
    required String? maxLat,
    required String? maxLong,
  });

  Future<Either<Either<MainFailure, ErrorModel>, List<HotelBookingModel>>>
      ownerBookingList();

  Future<Either<Either<MainFailure, ErrorModel>, HotelModel>> getHotelDetails(
      {required int hotelId});
  Future<Either<Either<MainFailure, ErrorModel>, dynamic>>? bookhotelreview(
      {required int hotel_id, required int rating, required String comment});
  Future<Either<Either<MainFailure, ErrorModel>, String>>? bookHotel({
    required int roomId,
    required int hotelId,
    required String checkIn,
    required String checkOut,
    required List<GuestModel> guests,
  });

  Future<Either<Either<MainFailure, ErrorModel>, HotelModel>> getMyHotel();

  Future<Either<Either<MainFailure, ErrorModel>, String>> editMyHotel({
    required String type,
    required String city,
    required String state,
    required String phone,
    ImagePickerModel? image,
    required String address,
    required double latitude,
    required String district,
    required double longitude,
    required String hotelName,
    required AddOrEditHotel apiType,
  });

  Future<Either<Either<MainFailure, ErrorModel>, RoomsBaseModel>>
      getMyHotelRoomsList({int page = 1});

  Future<Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>>
      getMyHotelReviews();

  Future<Either<Either<MainFailure, ErrorModel>, String>> addRoom({
    required int price,
    required String type,
    required String bedType,
    required ImagePickerModel image,
  });

  Future<Either<Either<MainFailure, ErrorModel>, String>> deleteHotelReview(
      {required int id});

  Future<Either<Either<MainFailure, ErrorModel>, String>>
      acceptOrRejectHotelBooking({
    required int id,
    required String status,
  });

  Future<Either<Either<MainFailure, ErrorModel>, List<HotelBookingModel>>>
      userBookedHotels();

  Future<Either<Either<MainFailure, ErrorModel>, String>> deleteRoom(
      {required int id});
}
