import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/core/packages/geocode/geocoding.dart';
import 'package:new_app/core/packages/geocode/geocodingModel.dart';
import 'package:new_app/infrastructure/tripApis/trip_repository.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/review/review_model.dart';
import 'package:new_app/model/trip/driver_routes_base_model/driver_routes_base_model.dart';
import 'package:new_app/model/trip/trip_base_model/trip_base_model.dart';
import 'package:new_app/model/trip/trip_base_model/trip_model.dart';
import 'package:new_app/presentation/trip/user_trip_list.dart';
import 'package:new_app/services/dio_service.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/custom_print.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';
import 'package:new_app/widgets/ww_showToast.dart';
import '../../model/trip/pool_model/pool_model.dart';

enum AddOrEditFood { addFood, editFood }

enum AcceptOrRejectBooking { accept, reject }

enum AcceptOrRejectDriverRequest { accept, reject }

mixin ReviewInitialState {
  List<ReviewListModel> reviewData = [
    ReviewListModel('Alex', 'Test Description', '4'),
    ReviewListModel('John', 'Test Description', '3'),
    ReviewListModel('Ann', 'Test Description', '4'),
    ReviewListModel('Mathew', 'Test Description', '3.5'),
  ];
}

mixin TripInitialState {
  GoogleMapController? mapController;

  TextEditingController rideCreateFromCtr = TextEditingController();
  TextEditingController rideCreateToCtr = TextEditingController();
  TextEditingController rideCreateDate = TextEditingController();
  Coordinates? rideCreateForm;
  Coordinates? rideCreateTo;

  bool tripCreateLoader = false;
  bool onThisRouteTab = true;
  //
  TripBaseModel? tripUserRideList;
  bool tripUserRideListLoader = false;
  Either<MainFailure, ErrorModel>? tripUserRideListFailure;

  List<PoolModel>? tripPoolList;
  bool tripPoolListLoader = false;
  Either<MainFailure, ErrorModel>? tripPoolListExceptions;

  PoolModel? myPool;
  int? currentTripId;
  int? currentPoolId;
  bool myPoolLoader = false;
  Either<MainFailure, ErrorModel>? myPoolException;

  //
  TripBaseModel? userOnThisRouteList;
  Either<MainFailure, ErrorModel>? userOnThisRouteListFailure;
  bool userOnThisRouteListLoader = false;

  //

  DriverRoutesBaseModel? driverOnThisRouteList;
  Either<MainFailure, ErrorModel>? driverOnThisRouteListFailure;
  bool driverOnThisRouteListLoader = false;

  bool acceptBookingLoader = false;
  bool rejectBookingLoader = false;
}

@Injectable()
class HomeController extends GetxController
    with ReviewInitialState, TripInitialState {
  //
  final ITripRepository _iTripRepo;

  HomeController(this._iTripRepo);

//  vehicle owner

  /// Accept or reject vehicle booking - for driver

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////// R E S T A U R A N T /////////////////////////////////////////////////////////////////

//get Restaurants

// trip module

  void apiTripCreate() async {
    tripCreateLoader = true;
    update(['tripCreateLoader']);
    await _iTripRepo
        .createTrip(
          from: rideCreateFromCtr.text,
          to: rideCreateToCtr.text,
          date: rideCreateDate.text,
          startLong: rideCreateForm?.longitude.toString(),
          startLat: rideCreateForm?.latitude.toString(),
          endLong: rideCreateTo?.longitude.toString(),
          endLat: rideCreateTo?.latitude.toString(),
        )
        .then((value) => value.fold(
                (l) => l.fold(
                        (l) => wwShowToast('Something went wrong',
                            status: Status.failure), (r) {
                      if (r.errors?.from?.first != null) {
                        wwShowToast(r.errors!.from!.first,
                            status: Status.failure);
                      } else if (r.errors?.to?.first != null) {
                        wwShowToast(r.errors!.to!.first,
                            status: Status.failure);
                      } else if (r.errors?.startLat?.first != null) {
                        wwShowToast(r.errors!.startLat!.first,
                            status: Status.failure);
                      } else if (r.errors?.endLat?.first != null) {
                        wwShowToast(r.errors!.endLat!.first,
                            status: Status.failure);
                      } else if (r.errors?.startLong?.first != null) {
                        wwShowToast(r.errors!.startLong!.first,
                            status: Status.failure);
                      } else if (r.errors?.endLong?.first != null) {
                        wwShowToast(r.errors!.endLong!.first,
                            status: Status.failure);
                      } else if (r.errors?.date?.first != null) {
                        wwShowToast(r.errors!.date!.first,
                            status: Status.failure);
                      } else {
                        wwShowToast('Something went wromg',
                            status: Status.failure);
                      }
                    }), (r) {
              wwShowToast('Trip Created', status: Status.success);
              apiTripUserList();
              // Get.to(() => InviteScreen());
              Get.to(() => UserTripListScreen());
            }));

    tripCreateLoader = false;
    update(['tripCreateLoader']);
  }

  void apiTripUserList() async {
    tripUserRideListLoader = true;
    update(['tripUserRideListLoader']);

    await _iTripRepo
        .userCreatedTrips()
        ?.then((value) => value.fold((l) => tripUserRideListFailure = l, (r) {
              tripUserRideListFailure = null;
              tripUserRideList = r;
            }));

    tripUserRideListLoader = false;
    update(['tripUserRideListLoader']);
  }

  Future<void> apiCreatePool({required int id}) async {
    await _iTripRepo.tripCreatePool(id: id).then((value) => value.fold(
            (l) => wwShowToast('something went wrong', status: Status.failure),
            (r) {
          wwShowToast('pool created', status: Status.success);
          apiTripUserList();
        }));
  }

  void getTripPoolInvitesList() async {
    tripPoolListLoader = true;
    update(["trip_pool_invites"]);

    if (currentTripId != null) {
      final data = await _iTripRepo.getPoolInvites(tripId: currentTripId!);

      data?.fold(
        (l) => tripPoolListExceptions = l,
        (r) {
          tripPoolListExceptions = null;
          tripPoolList = r;
        },
      );
    } else {
      wwShowToast('trip id not set', status: Status.failure);
    }

    tripPoolListLoader = false;
    update(["trip_pool_invites"]);
  }

  /// Accept or reject pool invites

  void acceptOrRejectPoolInvitedFn({
    required int id,
    required AcceptOrRejectBooking acceptOrRejectPoolInvite,
  }) async {
    if (acceptOrRejectPoolInvite == AcceptOrRejectBooking.accept) {
      acceptBookingLoader = true;
    } else {
      rejectBookingLoader = true;
    }
    update(["trip_pool_invites_btn"]);

    final data = await _iTripRepo.acceptOrRejectPoolInvite(
      id: id,
      status: acceptOrRejectPoolInvite == AcceptOrRejectBooking.accept
          ? "accepted"
          : "rejected",
    );

    data.fold(
      (l) => l.fold(
        (l) => wwShowToast("Something went wrong", status: Status.failure),
        (r) => null,
      ),
      (r) {
        wwShowToast(
          acceptOrRejectPoolInvite == AcceptOrRejectBooking.accept
              ? "Invite Accepted Successfully"
              : "Invite Rejected Successfully",
          status: Status.success,
        );
      },
    );
    if (acceptOrRejectPoolInvite == AcceptOrRejectBooking.accept) {
      acceptBookingLoader = false;
    } else {
      rejectBookingLoader = false;
    }
    update(["trip_pool_invites_btn"]);
  }

  /// Pool members of a trip

  void apiGetMyPoolMembers({required int tripId}) async {
    myPoolLoader = true;
    update(["my_pool"]);

    final data = await _iTripRepo.getMyPool(id: tripId);
    data.fold(
      (l) {
        myPoolException = l;
        myPool = null;
      },
      (r) {
        myPoolException = null;
        myPool = r;
      },
    );

    myPoolLoader = false;
    update(["my_pool"]);
  }

  void apiUserOnThisRoute({required int id}) async {
    userOnThisRouteListLoader = true;
    update(['userOnThisRouteListLoader']);

    await _iTripRepo
        .userOnThisRoute(id: id)
        .then((value) => value.fold((l) => userOnThisRouteListFailure = l, (r) {
              userOnThisRouteList = r;
              userOnThisRouteListFailure = null;
            }));

    userOnThisRouteListLoader = false;
    update(['userOnThisRouteListLoader']);
  }

  void apiDriverOnThisRoute(TripModel data) async {
    driverOnThisRouteListLoader = true;
    update(['driverOnThisRouteListLoader']);

    if (currentTripId != null) {
      await _iTripRepo.driverOnThisRoute(tripId: currentTripId!).then(
          (value) => value.fold((l) => driverOnThisRouteListFailure = l, (r) {
                driverOnThisRouteList = r;
                driverOnThisRouteListFailure = null;
              }));
    } else {
      wwShowToast('trip id is null', status: Status.failure);
    }

    log(data.startLat ?? '');
    log(data.startLong ?? '');

    driverOnThisRouteListLoader = false;
    update(['driverOnThisRouteListLoader']);
  }

  void apiAddToPool(int userId, int tripId) async {
    if (currentPoolId != null) {
      await _iTripRepo
          .addToPool(userId: userId, tripId: tripId, poolId: currentPoolId!)
          .then((value) => value.fold(
              (l) =>
                  wwShowToast('Something went wrong', status: Status.failure),
              (r) => wwShowToast('pool added', status: Status.success)));
    } else {
      wwShowToast('Please create pool', status: Status.failure);
    }
  }

  void apiAddDriverToPool(int? userId) async {
    if (currentTripId != null && currentPoolId != null) {
      if (userId != null) {
        await _iTripRepo
            .addDriverToPool(
                userId: userId, tripId: currentTripId!, poolId: currentPoolId!)
            .then((value) => value.fold(
                (l) =>
                    wwShowToast('Something went wrong', status: Status.failure),
                (r) => wwShowToast('pool added', status: Status.success)));
      } else {
        wwShowToast('Driver ID', status: Status.failure);
      }
    } else {
      wwShowToast('Please create pool', status: Status.failure);
    }
  }

  // location api

  Future<List<SearchText>> apiLocationSearch(String data) async {
    List<SearchText> text = [];
    var response = await getIt<DioServices>().request(
        url:
            'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$data&key=$mapKey',
        method: 'GET');

    response.fold((l) {}, (r) {
      if (r.data['predictions'] != null) {
        for (var element in r.data['predictions']) {
          text.add(SearchText(element['description']));
        }
      }
    });

    return text;
  }

  Future<Coordinates?> apiLocationFetchLatLong(String address) async {
    var s =
        (await getIt<GoogleGeocoding>().findAddressesFromQuery(address)).first;
    customPrint('------------------');
    customPrint(s.coordinates?.latitude);
    customPrint('------------------');
    customPrint(s.coordinates?.longitude);
    return s.coordinates;
  }
}
