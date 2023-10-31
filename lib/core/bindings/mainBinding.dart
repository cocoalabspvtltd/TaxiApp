import 'package:get/get.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/core/injection/injectable.dart';

import '../../controller/auth/auth_controller.dart';

class MainBindings extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AuthController>()) Get.put(getIt<AuthController>());
    Get.put(getIt<HomeController>());
    Get.put(getIt<VehicleController>());
    Get.put(getIt<HotelController>());
    Get.put(getIt<RestaurantController>());
  }
}
