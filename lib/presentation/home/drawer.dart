import 'package:new_app/constants/decorations.dart';
import 'package:new_app/constants/icons.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/core/bindings/mainBinding.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/presentation/auth/auth_main.dart';
import 'package:new_app/presentation/restaurant/bookRestaurant/bookedRestaurantScreen.dart';
import 'package:new_app/presentation/trip/user_trip_list.dart';
import 'package:new_app/services/shared_pref.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../hotels/bookHotel/booked_hotel.dart';

Future<dynamic> DrawerScreen(BuildContext context) {
  final ctr = Get.find<AuthController>();
  return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: violetcolor,
      elevation: 10,
      shape: r1,
      context: context,
      builder: (context) => SizedBox(
            height: height(context, 0.4),
            child: DecoratedBox(
                decoration: b1,
                child: DecoratedBox(
                    decoration: b1,
                    child: Drawer(
                        child: ListView(
                      children: [
                        buildTile(
                            label:
                                'My Referral Code : ${ctr.loginUserData?.user?.referralCode ?? ctr.referralCode ?? ''}',
                            icon: referral,
                            ontap: () async {
                              await Clipboard.setData(ClipboardData(
                                      text:
                                          "${ctr.loginUserData?.user?.referralCode ?? ctr.referralCode ?? ''}"))
                                  .whenComplete(() {
                                wwShowToast(' copied ');
                                Get.back();
                              });

                              // Get.find<HomeController>().apiTripUserList();
                              // Get.to(() => UserTripListScreen());
                            }),
                        buildTile(
                            label: 'My Rides',
                            icon: cars,
                            ontap: () {
                              Get.find<HomeController>().apiTripUserList();
                              Get.to(() => UserTripListScreen());
                            }),
                        buildTile(
                          label: 'Booked Restuarant',
                          icon: restuarants,
                          ontap: () {
                            Get.find<RestaurantController>()
                                .apiGetBookedRestaurantList();
                            Get.to(() => BookedRestaurantsScreen());
                          },
                        ),
                        buildTile(
                          label: 'Booked Hotels',
                          icon: hotels,
                          ontap: () {
                            Get.find<HotelController>()
                                .getUsersHotelBookingList();
                            Get.to(() => BookedHotel());
                          },
                        ),
                        buildTile(
                            label: 'LogOut',
                            icon: logout,
                            ontap: () => logOut(context)),
                      ],
                    )))),
          ));
}

Widget buildTile(
    {required String label, required Icon icon, required Function ontap}) {
  return ListTile(
    onTap: () => ontap(),
    leading: icon,
    title: Text(label),
  );
}

Future<dynamic> logOut(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text('Exit App'),
      content: Text('Do you want to logout from the App?'),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: violetcolor),
              onPressed: () async {
                getIt<SharedPref>().reset();
                Get.put(getIt<HomeController>());
                Get.delete<VehicleController>();
                Get.delete<HotelController>();
                Get.delete<RestaurantController>();
                Get.offAll(() => const AuthMainScreen());
                await Future.delayed(const Duration(seconds: 1));
                MainBindings().dependencies();
              },
              child: Text('Yes'),
            ),
            SizedBox(width: 20),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: violetcolor),
                onPressed: () => Navigator.of(context).pop(),
                child: Text('No')),
          ],
        ),
      ],
    ),
  );
}
