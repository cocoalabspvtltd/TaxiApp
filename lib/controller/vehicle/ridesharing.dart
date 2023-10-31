import 'package:new_app/utils/exports.dart';

class RideSharingController extends GetxController {
  List<RideSharingModel> data = [
    RideSharingModel('username1', 'from location', 'to location', '2 km'),
    RideSharingModel('username2', 'from location', 'to location', '2 km'),
    RideSharingModel('username3', 'from location', 'to location', '2 km'),
    RideSharingModel('username4', 'from location', 'to location', '2 km'),
  ].obs;
  List<RideSharingModel> item = [
    RideSharingModel(
        'driver name 1', 'driver place', 'Car-car model', '500 km'),
    RideSharingModel('driver name 2', 'driver place', 'Car-car mode', '800 km'),
  ];
  List<DriverModel> driver = [
    DriverModel('driver place', 'driver name 1', 'Car-car model'),
    DriverModel('driver place', 'driver name 2', 'Car-car model'),
    DriverModel('driver place', 'driver name 3', 'Car-car model')
  ];
  List<RideSharingModel> get datas => data;
  List<RideSharingModel> get items => item;
  List<DriverModel> get drivers => driver;
  int _selectedItemIndex = 0;
  int get selectedItemIndex => _selectedItemIndex;
  setSelectedItemIndex(int index) {
    _selectedItemIndex = index;
  }
}
