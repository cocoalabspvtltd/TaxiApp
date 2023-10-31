import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_app/constants/colors.dart';
import 'package:new_app/constants/styles.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/notification.dart';
import 'package:new_app/presentation/home/drawer.dart';
import 'package:new_app/presentation/hotels/bookHotel/availableHotels.dart';
import 'package:new_app/presentation/hotels/myHotels/myHotel.dart';
import 'package:new_app/presentation/restaurant/bookRestaurant/searchRestaurant.dart';
import 'package:new_app/presentation/restaurant/myRestaurant/myRestaurant.dart';
import 'package:new_app/presentation/trip/trip_create.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerMyVehicle.dart';
import 'package:new_app/widgets/searchfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 130,
              decoration: const BoxDecoration(color: violetcolor),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: (() => DrawerScreen(context)),
                            icon: const Icon(Icons.menu, color: whiteColor)),
                        IconButton(
                          onPressed: () => Get.to(() => NotificationScreen()),
                          icon: const Icon(
                            Icons.notifications_outlined,
                            color: whiteColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  serachField(st: 'Search'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Book Online', style: s7),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      bookOnlineButton(
                          name: 'Ride',
                          icons: Icons.notifications_outlined,
                          onTap: () => Get.to(() => const TripCreateScreen())),
                      bookOnlineButton(
                          name: 'Restuarant',
                          icons: Icons.restaurant_outlined,
                          onTap: () {
                            Get.to(() => const SearchRestauarantScreen());
                            Get.find<RestaurantController>().restaurantModel =
                                null;
                          }),
                      bookOnlineButton(
                        name: 'Hotel',
                        icons: Icons.holiday_village_outlined,
                        onTap: () {
                          Get.find<HomeController>();
                          Get.to(() => const AvailableHotelScreen());
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(color: blackColor, thickness: 1),
                  const SizedBox(height: 15),
                  Text('Explore', style: s7),
                  const SizedBox(height: 10),

                  exploreCards(() {
                    Get.find<RestaurantController>()
                        .apiGetOwnerMyRestaurantDetails();
                    Get.to(() => MyRestuarantScreen());
                  }, Icons.restaurant_outlined, 'My Restaurant'),
                  exploreCards(() {
                    Get.to(() => OwnerMyVehicleScreen());
                    Get.find<VehicleController>().apiVehicleDetails();
                  }, Icons.car_crash_outlined, 'My Vehicle'),

                  exploreCards(
                    () {
                      Get.find<HotelController>().fetchMyHotel();
                      Get.to(() => MyHotelScreen());
                      // Get.find<HomeController>().apiGetMyHotel();
                    },
                    Icons.holiday_village_outlined,
                    'My Hotel',
                  )
                  // exploreCards(
                  //     () => null, Icons.holiday_village_outlined, 'My Hotel')
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Expanded bookOnlineButton({
    required String name,
    required IconData icons,
    required Function() onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: yellowColor,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                children: [
                  Icon(icons, size: 50, color: violetcolor),
                  Text(name, style: s4)
                ],
              )),
        ),
      ),
    );
  }
}

Widget exploreCards(Function ontap, IconData icon, String label) {
  return InkWell(
    onTap: () => ontap(),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: ListTile(
            leading: Container(
                decoration: BoxDecoration(
                    color: greyColor, borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(icon, size: 40, color: blackColor),
                )),
            title: Text(label, style: s10),
            trailing: Container(
              decoration: BoxDecoration(
                  color: violetcolor, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text('View', style: s2),
              ),
            )),
      ),
    ),
  );
}
