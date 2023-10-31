import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_initialState.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/infrastructure/restaurant_apis/restaurant_repository.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/restuarant/food/food_model.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_base_model.dart';
import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/model/review/review_base_model/review_base_model.dart';
import 'package:new_app/services/image_picker.dart';
import 'package:new_app/widgets/custom_print.dart';
import 'package:new_app/widgets/ww_showToast.dart';

@Injectable()
class RestaurantController extends GetxController with RestaurantInitialState {
  final IRestaurantRepo _iRestaurantRepo;

  RestaurantController(this._iRestaurantRepo);

  @override
  void onInit() {
    super.onInit();
    getRestaurantListPagination();
    getFoodListPagination();
  }

  void apiGetRestaurants() async {
    if (resLocationFrom == null) {
      wwShowToast('Please search from location', status: Status.failure);
      return;
    }
    if (resLocationTo == null) {
      wwShowToast('Please search to location', status: Status.failure);
      return;
    }
    if (resTypeCtr.text.isEmpty) {
      wwShowToast('Please select type', status: Status.failure);
      return;
    }

    restaurantListLoader = true;
    errorGetRestaurantList = null;
    update(['restaurant_list']);
    int pageNo =
        restaurantModel != null ? int.parse(restaurantModel!.page!) : 1;
    Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>? data =
        await _iRestaurantRepo.getRestaurants(
            page: pageNo,
            perPage: 10,
            type: resTypeCtr.text,
            minLat: resLocationFrom?.latitude.toString(),
            minLong: resLocationFrom?.longitude.toString(),
            maxLat: resLocationTo?.latitude.toString(),
            maxLong: resLocationTo?.longitude.toString());

    data?.fold((failure) {
      failure.fold((failure) {}, (error) {
        errorGetRestaurantList = failure;
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print("data $data");
      // restaurantModel = data;
      List<RestaurantModel> modifiableList = [];

      modifiableList = restaurantModel?.restaurants?.toList() ?? [];
      if (data.page != null) {
        int? pageNo = int.parse(data.page!);
        if (pageNo == 1) {
          restaurantModel = data;
        } else {
          modifiableList.addAll(data.restaurants ?? []);
          restaurantModel =
              restaurantModel?.copyWith(restaurants: modifiableList);
        }
      }
      resLocationFrom = null;
      resLocationTo = null;
      resLocationFromCtr.clear();
      resLocationToCtr.clear();
      resTypeCtr.clear();
    });
    restaurantListLoader = false;
    update(['restaurant_list']);
  }

  void getRestaurantListPagination() {
    restaurantListController.addListener(() {
      if (restaurantListController.positions.last.pixels ==
              restaurantListController.positions.last.maxScrollExtent &&
          restaurantModel != null &&
          (restaurantModel!.page != null &&
              (int.parse(restaurantModel!.page!)) <
                  restaurantModel!.lastPage!)) {
        int pageNo = int.parse(restaurantModel!.page!);
        restaurantModel =
            restaurantModel?.copyWith(page: (pageNo + 1).toString());
        apiGetRestaurants();
      }
    });
  }

//get Restaurant Details

  void apiGetRestaurantDetails(int id) async {
    restaurantDetailLoader = true;
    errorRestaurantDetail = null;
    update(['restaurant_detail']);
    Either<Either<MainFailure, ErrorModel>, RestaurantModel>? data =
        await _iRestaurantRepo.getRestaurantDetails(id);

    data?.fold((failure) {
      errorRestaurantDetail = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print("data $data");
      restaurantDetail = data;
    });
    restaurantDetailLoader = false;
    update(['restaurant_detail']);
  }

// book restaurant

  void apibookRestaurant(int restaurantId, String date, String time) async {
    restaurantBookingLoader = true;
    errorBookTheRes = null;
    update(["booking_btn"]);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.bookRestaurant(
            restaurant_id: restaurantId, date: date, time: time);

    data?.fold((failure) {
      errorBookTheRes = failure;
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
        "Booked Successfully",
        status: Status.success,
      );
      Get.back();
      // restaurantModel = data;
    });
    restaurantBookingLoader = false;
    update(['booking_btn']);
  }

// booked restaurant details

  void apiGetBookedRestaurantList() async {
    bookedRestaurantListLoader = true;
    errorBookeRestaurant = null;
    update(['booked_restaurant_list']);
    Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>? data =
        await _iRestaurantRepo.getBookedRestaurantList();

    data?.fold((failure) {
      errorBookeRestaurant = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print("data $data");
      bookedRestaurantModel = data;
    });
    bookedRestaurantListLoader = false;
    update(['booked_restaurant_list']);
  }

  //owner my restaurant details

  void apiGetOwnerMyRestaurantDetails() async {
    ownerMyRestaurantLoader = true;
    errorOwnerMyRestaurant = null;
    update(['owner_myRestaurant_detail']);

    Either<Either<MainFailure, ErrorModel>, RestaurantModel>? data =
        await _iRestaurantRepo.getOwnerMyRestaurant();

    data?.fold((failure) {
      errorOwnerMyRestaurant = failure;
    }, (data) {
      ownerMyRestaurantModel = data;
    });
    ownerMyRestaurantLoader = false;
    update(['owner_myRestaurant_detail']);
  }

  //edit owner my Restaurant Details

  getEditableOwnerMyRestaurantDetails() {
    ownerMyRestaurantNameCtr?.text = ownerMyRestaurantModel?.name ?? "";
    ownerMyRestaurantPhoneCtr?.text = ownerMyRestaurantModel?.phone ?? "";
    ownerMyRestaurantAddressCtr?.text = ownerMyRestaurantModel?.address ?? "";
    ownerMyRestaurantTypeCtr?.text = ownerMyRestaurantModel?.type ?? "";
    // ownerMyRestaurantLocationCtr?.text =
    //     ownerMyRestaurantModel?.locationPoint ?? "";
    ownerMyRestaurantCityCtr?.text = ownerMyRestaurantModel?.city ?? "";
    ownerMyRestaurantStateCtr?.text = ownerMyRestaurantModel?.state ?? "";
    ownerMyRestaurantDistrictCtr?.text = ownerMyRestaurantModel?.district ?? "";
    restaurantUpdateImage = null;
  }

  clearEditableOwnerMyRestaurantDetails() {
    ownerMyRestaurantNameCtr?.clear();
    ownerMyRestaurantPhoneCtr?.clear();
    ownerMyRestaurantAddressCtr?.clear();
    ownerMyRestaurantTypeCtr?.clear();
    ownerMyRestaurantCityCtr?.clear();
    ownerMyRestaurantStateCtr?.clear();
    ownerMyRestaurantDistrictCtr?.clear();
    ownerMyRestaurantLocationCtr.clear();
    restaurantUpdateImage = null;
    ownerMyRestaurantLatLang = null;
  }

  Future<void> apiEditMyRestaurant() async {
    final ctr = Get.find<AuthController>();
    Either<Either<MainFailure, ErrorModel>, dynamic>? data;

    //restaurant add

    if (ownerMyRestaurantTypeCtr.text.isEmpty) {
      wwShowToast('Please select type', status: Status.failure);
      ctr.signUpRestaurantError = true;
      ctr.update(['signUpRestaurantError']);
      return;
    }

    if (ownerMyRestaurantLatLang == null) {
      wwShowToast('Please search  location', status: Status.failure);
      ctr.signUpRestaurantError = true;
      ctr.update(['signUpRestaurantError']);
      return;
    }

    if (restaurantAddOrEdit == RestaurantAddOrEdit.add) {
      if (restaurantUpdateImage == null) {
        wwShowToast("Please add Image", status: Status.failure);
        ctr.signUpRestaurantError = true;
        ctr.update(['signUpRestaurantError']);
        return;
      }
      editMyRestaurantLoader = true;
      update(['edit_my_restaurant_loader']);
      data = await _iRestaurantRepo.editMyRestaurant(
          // id: ownerMyRestaurantModel?.id ?? 0,
          name: ownerMyRestaurantNameCtr?.text ?? "",
          phone: ownerMyRestaurantPhoneCtr?.text ?? "",
          address: ownerMyRestaurantAddressCtr?.text ?? "",
          type: ownerMyRestaurantTypeCtr?.text ?? "",
          city: ownerMyRestaurantCityCtr?.text ?? "",
          state: ownerMyRestaurantStateCtr?.text ?? "",
          district: ownerMyRestaurantDistrictCtr?.text ?? "",
          selectedImage: restaurantUpdateImage,
          maxLat: ownerMyRestaurantLatLang!.latitude.toString(),
          maxLong: ownerMyRestaurantLatLang!.longitude.toString());
    } else {
      //restuarant edit

      // if (ownerMyRestaurantNameCtr?.text ==
      //         (ownerMyRestaurantModel?.name ?? "") &&
      //     ownerMyRestaurantPhoneCtr?.text ==
      //         (ownerMyRestaurantModel?.phone ?? "") &&
      //     ownerMyRestaurantAddressCtr?.text ==
      //         (ownerMyRestaurantModel?.address ?? "") &&
      //     ownerMyRestaurantTypeCtr?.text ==
      //         (ownerMyRestaurantModel?.type ?? "") &&
      //     ownerMyRestaurantCityCtr?.text ==
      //         (ownerMyRestaurantModel?.city ?? "") &&
      //     ownerMyRestaurantStateCtr?.text ==
      //         (ownerMyRestaurantModel?.state ?? "") &&
      //     ownerMyRestaurantDistrictCtr?.text ==
      //         (ownerMyRestaurantModel?.district ?? "") &&
      //     restaurantUpdateImage == null) {
      //   wwShowToast("No upates", status: Status.failure);
      //   return;
      // }
      editMyRestaurantLoader = true;
      update(['edit_my_restaurant_loader']);
      data = await _iRestaurantRepo.editMyRestaurant(
          id: ownerMyRestaurantModel?.id ?? 0,
          name: (ownerMyRestaurantNameCtr?.text != ownerMyRestaurantModel?.name)
              ? ownerMyRestaurantNameCtr?.text ?? ""
              : null,
          phone:
              (ownerMyRestaurantPhoneCtr?.text != ownerMyRestaurantModel?.phone)
                  ? ownerMyRestaurantPhoneCtr?.text ?? ""
                  : null,
          address: (ownerMyRestaurantAddressCtr?.text !=
                  ownerMyRestaurantModel?.address)
              ? ownerMyRestaurantAddressCtr?.text ?? ""
              : null,
          type: (ownerMyRestaurantTypeCtr?.text != ownerMyRestaurantModel?.type)
              ? ownerMyRestaurantTypeCtr?.text ?? ""
              : null,
          city: (ownerMyRestaurantCityCtr?.text != ownerMyRestaurantModel?.city)
              ? ownerMyRestaurantCityCtr?.text ?? ""
              : null,
          state:
              (ownerMyRestaurantStateCtr?.text != ownerMyRestaurantModel?.state)
                  ? ownerMyRestaurantStateCtr?.text ?? ""
                  : null,
          district: (ownerMyRestaurantDistrictCtr?.text !=
                  ownerMyRestaurantModel?.district)
              ? ownerMyRestaurantDistrictCtr?.text ?? ""
              : null,
          selectedImage: restaurantUpdateImage,
          maxLat: ownerMyRestaurantLatLang!.latitude.toString(),
          maxLong: ownerMyRestaurantLatLang!.longitude.toString());
    }

    data?.fold((failure) {
      ctr.signUpRestaurantError = true;
      ctr.update(['signUpRestaurantError']);
      errorEditRestaurantFailure = failure;
      failure.fold((failure) {}, (error) {
        if (error.errors?.restaurantPhone != null) {
          wwShowToast(error.errors!.restaurantPhone!.first,
              status: Status.failure);
        } else if (error.errors?.restaurantImage != null) {
          wwShowToast(error.errors!.restaurantImage!.first,
              status: Status.failure);
        } else if (error.message != null) {
          wwShowToast(error.message!, status: Status.failure);
        }
      });
    }, (data) {
      ctr.signUpRestaurantError = false;
      ctr.update(['signUpRestaurantError']);
      // ownerMyRestaurantModel = data;
      wwShowToast(
        "updated successfully",
        status: Status.success,
      );

      ownerMyRestaurantLocationCtr.clear();
      ownerMyRestaurantLatLang = null;

      if (ctr.loginUserData?.user?.isRestaurant == false) {
        apiGetOwnerMyRestaurantDetails();
        ctr.loginUserData = ctr.loginUserData!.copyWith(
            user: ctr.loginUserData!.user!.copyWith(isRestaurant: true));
      }
      customPrint(data);
    });
    editMyRestaurantLoader = false;
    update(['edit_my_restaurant_loader']);
  }
  //get owner myfood list

  apiGetOwnerMyFoodList(int id) async {
    ownerMyFoodListLoader = true;
    ErrorOwnerMyFoodList = null;
    update(['owner_my_food_list']);
    int pageNo = ownerMyFoodListModel != null
        ? int.parse(ownerMyFoodListModel!.page!)
        : 1;
    Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>? data =
        await _iRestaurantRepo.getOwnerMyFoodList(
            page: pageNo, perPage: 10, restaurantId: id);

    data?.fold((failure) {
      ErrorOwnerMyFoodList = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      // ownerMyFoodListModel = data;
      List<FoodModel> modifiableList = [];

      modifiableList = ownerMyFoodListModel?.food_items?.toList() ?? [];
      int pageNo = int.parse(data.page!);
      if (pageNo == 1) {
        print(data?.food_items?.length);
        ownerMyFoodListModel = data;
      } else {
        modifiableList.addAll(data.food_items ?? []);
        ownerMyFoodListModel =
            ownerMyFoodListModel?.copyWith(food_items: modifiableList);
      }
    });
    ownerMyFoodListLoader = false;
    update(['owner_my_food_list']);
    // Vehicle Owner
  }

  void getFoodListPagination() {
    myRestaurantFoodListController.addListener(() {
      if (myRestaurantFoodListController.positions.last.pixels ==
              myRestaurantFoodListController.positions.last.maxScrollExtent &&
          ownerMyFoodListModel != null &&
          (ownerMyFoodListModel!.page != null &&
              (int.parse(ownerMyFoodListModel!.page!)) <
                  ownerMyFoodListModel!.lastPage!)) {
        int pageNo = int.parse(ownerMyFoodListModel!.page!);
        ownerMyFoodListModel =
            ownerMyFoodListModel?.copyWith(page: (pageNo + 1).toString());
        apiGetOwnerMyFoodList(selectedRestaurantId ?? 0);
      }
    });
  }

//create food for myRestaurant By Owner

  apiOwnerMyRestaurantAddFood() async {
    if (addFoodImage == null) {
      wwShowToast(
        "Please Add Food Image",
        status: Status.failure,
      );
      return;
    }
    createFoddOwnerLoader = true;
    errorCreateFoodOwner = null;
    update(["add_food_myRestaurant"]);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.ownerMyRestaurantAddFood(
            name: ownerFoodNameCtr?.text ?? "",
            description: ownerFoodDescriptionCtr?.text ?? "",
            price: ownerFoodPriceCtr?.text ?? "",
            type: ownerFoodTypeCtr?.text ?? "",
            image: addFoodImage!);

    data?.fold((failure) {
      errorCreateFoodOwner = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      // ownerMyFoodListModel = data;
      print(data);
      wwShowToast(
        "Food added SuccessFully",
        status: Status.success,
      );
      apiGetOwnerMyFoodList(selectedRestaurantId ?? 0);
      Get.back();
    });
    createFoddOwnerLoader = false;
    update(["add_food_myRestaurant"]);
  }

  void pickAddFoodImage(BuildContext context) async {
    addFoodImage = await getIt<CustomImagePicker>().imagePicker(context);
    update(["add_food_image"]);
  }

  void clearAddFoodFields() {
    ownerFoodNameCtr?.clear();
    ownerFoodDescriptionCtr?.clear();
    ownerFoodPriceCtr?.clear();
    ownerFoodTypeCtr?.clear();
    addFoodImage = null;
    selcectedImageFromList = null;
  }

  void getSelectedFoodDetails(FoodModel selectedFood) {
    ownerFoodNameCtr?.text = selectedFood.name ?? "";
    ownerFoodDescriptionCtr?.text = selectedFood.description ?? "";
    ownerFoodPriceCtr?.text = selectedFood.price ?? "";
    ownerFoodTypeCtr?.text = selectedFood.type ?? "";
    selcectedImageFromList = selectedFood.image ?? "";
    selectedFoodId = selectedFood.id;
  }

//edit the food

  apiOwnerMyRestaurantEditFood() async {
    if (addFoodImage == null && selcectedImageFromList == null) {
      wwShowToast(
        "Please Add Food Image",
        status: Status.failure,
      );
      return;
    }
    createFoddOwnerLoader = true;
    errorUpdateFoodOwner = null;
    update(["add_food_myRestaurant"]);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.ownerMyRestaurantEditFood(
            name: ownerFoodNameCtr?.text ?? "",
            description: ownerFoodDescriptionCtr?.text ?? "",
            price: ownerFoodPriceCtr?.text ?? "",
            type: ownerFoodTypeCtr?.text ?? "",
            image: selcectedImageFromList,
            id: selectedFoodId ?? 0,
            selectedImage: addFoodImage);

    data?.fold((failure) {
      errorUpdateFoodOwner = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      // ownerMyFoodListModel = data;
      print(data);
      wwShowToast(
        "Food updated SuccessFully",
        status: Status.success,
      );
      apiGetOwnerMyFoodList(selectedRestaurantId ?? 0);
      Get.back();
    });
    createFoddOwnerLoader = false;
    update(["add_food_myRestaurant"]);
  }

// delete the food

  void apiDeleteOwnerMyRestaurantFood() async {
    errorDeleteFoodOwner = null;
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.ownerMyRestaurantDeleteFood(
            id: selectedFoodId ?? 0);
    data?.fold((failure) {
      errorDeleteFoodOwner = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      // ownerMyFoodListModel = data;
      print(data);
      wwShowToast(
        "Food item deleted SuccessFully",
        status: Status.success,
      );
      apiGetOwnerMyFoodList(selectedRestaurantId ?? 0);
      Get.back();
      Get.back();
    });
  }

//get bookings of my Restaurant

  void apiGetBookingListOwnerMyRestaurantList() async {
    errorMyRestaurantBookingsList = null;
    myRestaurantBookingsListLoader = true;
    update(["my_restaurant_bookings_list"]);
    Either<Either<MainFailure, ErrorModel>, RestaurantBaseModel>? data =
        await _iRestaurantRepo.getOwnerMyRestaurantBookingList();

    data?.fold((failure) {
      errorMyRestaurantBookingsList = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      myRestaurantBookingsListModel = data;
      print(data);
    });
    myRestaurantBookingsListLoader = false;
    update(["my_restaurant_bookings_list"]);
  }

  void apiGetReviewListOwnerMyRestaurantList() async {
    errorMyRestaurantReviewsList = null;
    myRestaurantReviewListLoader = true;
    update(["my_restaurant_reviews_list"]);
    Either<Either<MainFailure, ErrorModel>, ReviewBaseModel>? data =
        await _iRestaurantRepo.getReviewsOfMyRestaurantList();

    data?.fold((failure) {
      errorMyRestaurantReviewsList = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      myRestaurantReviewsListModel = data;
      print(data);
    });
    myRestaurantReviewListLoader = false;
    update(["my_restaurant_reviews_list"]);
  }

  void apiacceptOrRejectBookingMyRestaurant(
      int bookingId, String acceptOrReject) async {
    errorAcceptOrRejectBooking = null;
    acceptOrRejectBookingLoader = true;
    update(['booking_accept_reject_btn']);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.bookingAcceptOrRejectMyRestaurant(
            id: bookingId, status: acceptOrReject);
    data?.fold((failure) {
      errorAcceptOrRejectBooking = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print(data);
      apiGetBookingListOwnerMyRestaurantList();

      wwShowToast(
        acceptOrReject == 'accepted' ? "Booking Accepted" : "Booking Rejected",
        status: Status.success,
      );
      Get.back();
    });
    acceptOrRejectBookingLoader = false;
    update(['booking_accept_reject_btn']);
  }

//delete  the review

  void apiDeleteMyRestaurantReview(int id) async {
    deleteMyRestaurantReviewLoader = true;
    update(['update_btn_review_delete']);
    Either<Either<MainFailure, ErrorModel>, dynamic>? data =
        await _iRestaurantRepo.deleteMyRestaurantReview(id: id);

    data?.fold((failure) {
      errorDeleteMyRestaurantReview = failure;
      failure.fold((failure) {}, (error) {
        wwShowToast(
          "Something went wrong",
          status: Status.failure,
        );
      });
    }, (data) {
      print(data);
      apiGetReviewListOwnerMyRestaurantList();
      Get.back();
      wwShowToast(
        "Review Deleted Successfully",
        status: Status.success,
      );
    });
    deleteMyRestaurantReviewLoader = false;
    update(['update_btn_review_delete']);
  }

//------------------------------------------------------------------------------------------------------------------------------------------------------//
//---------------------------------------------------------end of Restaurant ---------------------------------------------------------------------------//
//------------------------------------------------------------------------------------------------------------------------------------------------------//
}
