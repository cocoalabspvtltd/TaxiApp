import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurantListScreen.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';

class SearchRestauarantScreen extends StatelessWidget {
  const SearchRestauarantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<RestaurantController>();
    final hCtr = Get.find<HomeController>();

    return Scaffold(
        appBar: appBars(
          text: 'Restaurant',
          centertitle: true,
        ),
        body: SingleChildScrollView(
            controller:
                Get.find<RestaurantController>().restaurantListController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // searchCards('Select Location where you \nneed Food', context,
                //     () => Get.to(() => const RestuarantDetailScreen()), greyColor),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Select location where you need to go',
                                style: s6),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                    width: 60, child: Text('From', style: s7)),
                                Expanded(
                                    child: WWLocationSearchField(
                                  st: 'Search Location',
                                  controller: ctr.resLocationFromCtr,
                                  futureFunction: () => hCtr.apiLocationSearch(
                                      ctr.resLocationFromCtr.text),
                                  getSelectedValue: (a) async =>
                                      ctr.resLocationFrom = await hCtr
                                          .apiLocationFetchLatLong(a.label),
                                ))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                    width: 60, child: Text('To', style: s7)),
                                Expanded(
                                    child: WWLocationSearchField(
                                  st: 'Search Location',
                                  controller: ctr.resLocationToCtr,
                                  futureFunction: () => hCtr.apiLocationSearch(
                                      ctr.resLocationToCtr.text),
                                  getSelectedValue: (a) async =>
                                      ctr.resLocationTo = await hCtr
                                          .apiLocationFetchLatLong(a.label),
                                ))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                SizedBox(
                                    width: 60, child: Text('Type', style: s7)),
                                Expanded(
                                    child: WWLocationSearchField(
                                  st: 'Select Type',
                                  controller: ctr.resTypeCtr,
                                  minStringLength: 0,
                                  initialList: [
                                    'veg',
                                    'non-veg',
                                    'veg/non-veg'
                                  ],
                                  showDataWhenFocus: true,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.allow(
                                        RegExp(''))
                                  ],
                                ))
                              ],
                            ),
                            const SizedBox(height: 10),
                            customButton(
                                color: violetcolor,
                                height: false,
                                txt: 'Search',
                                context: context,
                                onpressed: () {
                                  Get.find<RestaurantController>()
                                      .restaurantModel = null;
                                  Get.find<RestaurantController>()
                                      .apiGetRestaurants();
                                }),
                            const SizedBox(height: 10),
                          ]),
                    ),
                  ),
                ),

                // searchCards('Select Location where you need Food', context, () {
                //   // Get.to(() => const RestuarantDetailScreen());
                //   Get.find<RestaurantController>().restaurantModel = null;
                //   Get.find<RestaurantController>().apiGetRestaurants();
                // }, violetcolor, ctr.rideCreateFromCtr, ctr.rideCreateToCtr),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Restuarants on your way', style: s11),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: greyColor),
                      //       borderRadius: BorderRadius.circular(10)),
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(5.0),
                      //     child: Row(
                      //       children: const [
                      //         Text('Filter'),
                      //         SizedBox(width: 5),
                      //         Icon(Icons.filter_1, color: greyColor, size: 15)
                      //       ],
                      //     ),
                      //   ),
                      // )
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
            )));
  }
}
