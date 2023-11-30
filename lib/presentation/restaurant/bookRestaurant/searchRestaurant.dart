import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurantListScreen.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';
import 'package:permission_handler/permission_handler.dart';

double currentLatituderes = 0.0;
double currentLongituderes = 0.0;
int variableToUpdate = 0;

class SearchRestauarantScreen extends StatefulWidget {
  const SearchRestauarantScreen({Key? key}) : super(key: key);

  @override
  _SearchRestauarantScreenState createState() =>
      _SearchRestauarantScreenState();
}

class _SearchRestauarantScreenState extends State<SearchRestauarantScreen> {
  final ctr = Get.find<RestaurantController>();
  final hCtr = Get.find<HomeController>();
  bool switchValue = false;

  Future<void> _getCurrentLocation() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          currentLatituderes = position.latitude;
          currentLongituderes = position.longitude;
          print("co->${currentLongituderes}");
          print("co->${currentLatituderes}");
        });
      } catch (e) {
        print("Error getting current location: $e");
      }
    } else {
      print("Location permission denied");
    }
  }

  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Restaurant',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        controller: Get.find<RestaurantController>().restaurantListController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Card(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text("${currentLatituderes}"),
                      Text('Select location where you need to go', style: s6),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60, child: Text('From', style: s7)),
                          Expanded(
                            child: WWLocationSearchField(
                              st: 'Search Location',
                              controller: ctr.resLocationFromCtr,
                              futureFunction: () => hCtr.apiLocationSearch(
                                  ctr.resLocationFromCtr.text),
                              getSelectedValue: (a) async => ctr
                                      .resLocationFrom =
                                  await hCtr.apiLocationFetchLatLong(a.label),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60, child: Text('To', style: s7)),
                          Expanded(
                            child: WWLocationSearchField(
                              st: 'Search Location',
                              controller: ctr.resLocationToCtr,
                              futureFunction: () => hCtr
                                  .apiLocationSearch(ctr.resLocationToCtr.text),
                              getSelectedValue: (a) async => ctr.resLocationTo =
                                  await hCtr.apiLocationFetchLatLong(a.label),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60, child: Text('Type', style: s7)),
                          Expanded(
                            child: WWLocationSearchField(
                              st: 'Select Type',
                              controller: ctr.resTypeCtr,
                              minStringLength: 0,
                              initialList: ['veg', 'non-veg', 'veg/non-veg'],
                              showDataWhenFocus: true,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(RegExp(''))
                              ],
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Travel',
                              style: s7), // Text for the switch label
                          Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                                variableToUpdate = value ? 1 : 0;
                                bool valu = false;
                                valu = value;

                                // Add your logic here based on the switch value
                                if (value) {
                                  print("sv-?${variableToUpdate}");
                                  print("sv-?${valu}");
                                  // Switch is ON
                                  // Add logic for when the switch is ON
                                } else {
                                  print("sv-?${variableToUpdate}");
                                  // Switch is OFF
                                  // Add logic for when the switch is OFF
                                }
                              });
                            },
                            activeColor: violetcolor,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      customButton(
                        color: violetcolor,
                        height: false,
                        txt: 'Search',
                        context: context,
                        onpressed: () {
                          Get.find<RestaurantController>().restaurantModel =
                              null;
                          Get.find<RestaurantController>().apiGetRestaurants();
                        },
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Restuarants on your way', style: s11),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: RestuarantListScreen(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
