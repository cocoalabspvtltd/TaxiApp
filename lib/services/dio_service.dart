import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart' as g;
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/constants/constant.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/core/bindings/mainBinding.dart';
import 'package:new_app/services/shared_pref.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';

import '../presentation/auth/auth_main.dart';

@LazySingleton()
class DioServices {
  BaseOptions options = BaseOptions(
    baseUrl: baseUrl,
    followRedirects: false,
    contentType: "application/json",
    headers: {"accept": "application/json"},
    validateStatus: (status) {
      return status! < 500;
    },

    connectTimeout: const Duration(seconds: 5), // 60 seconds
  );

  final dioInstance = Dio();

  Future<Either<Either<MainFailure, ErrorModel>, Response>> request(
      {required String url,
      required String method,
      dynamic data,
      bool auth = false}) async {
    dioInstance.options = options;
    dioInstance.options.method = method;
    try {
      final response = await dioInstance.request(
        url,
        data: data,
      );

      if (auth && response.data["token"] != null) {
        dioInstance.options.headers["Authorization"] =
            "Bearer ${response.data["token"]}";

        getIt<SharedPref>().setStringValue(
          key: "token",
          value: response.data["token"],
        );

        getIt<SharedPref>().setStringValue(
          key: "referral_code",
          value: response.data["user"]["referral_code"],
        );

        log("${dioInstance.options.headers}", name: "Token");
      }
      debugPrint(
          '******************************* $method *******************************');
      debugPrint("");
      log('${response.realUri}');
      debugPrint('${response.statusCode}');

      debugPrint('$response');
      debugPrint("");
      debugPrint(
          '******************************* $method *******************************');

      if (response.statusCode == 200 || response.statusCode == 201) {
        return auth ? Right(response) : Right(response);
      } else if (response.statusCode == 401) {
        getIt<SharedPref>().reset();
        g.Get.put(getIt<HomeController>());
        g.Get.delete<VehicleController>();
        g.Get.delete<HotelController>();
        g.Get.delete<RestaurantController>();
        g.Get.offAll(() => const AuthMainScreen());
        await Future.delayed(const Duration(seconds: 1));
        MainBindings().dependencies();
        g.Get.offAll(() => const AuthMainScreen());
        return Left(Right(ErrorModel.fromJson(response.data)));
      } else {
        return Left(Right(ErrorModel.fromJson(response.data)));
      }
    } on DioError catch (e) {
      debugPrint('error full');
      debugPrint('$e');
      if (e.type == DioErrorType.connectionError) {
        debugPrint('catched');
        return const Left(Left(MainFailure.networkFailure()));
      }
      if (e.type == DioErrorType.connectionTimeout) {
        debugPrint('check your connection');
        return const Left(Left(MainFailure.timeout()));
      }

      // if (e.type == DioErrorType.receiveTimeout) {
      //   debugPrint('unable to connect to the server');
      //   return const Left(MainFailure.serverFailure());
      // }

      if (e.type == DioErrorType.unknown) {
        debugPrint('Something went wrong');
        return const Left(Left(MainFailure.serverFailure()));
      }
      debugPrint('$e');
      return const Left(Left(MainFailure.serverFailure()));

      // return APIErrorResponse(statusCode: 500, message: 'Server Not Found.');
    }
  }
}
