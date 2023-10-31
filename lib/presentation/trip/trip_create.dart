import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/presentation/home/home_screen.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';
import 'package:new_app/widgets/ww_mapScreen.dart';

class TripCreateScreen extends StatelessWidget {
  const TripCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ctr = Get.find<HomeController>();

    return WillPopScope(
      onWillPop: () async {
        Get.offAll(() => HomeScreen());
        return false;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: appBars(
            text: 'Ride',
            centertitle: true,
            onpressed: () => Get.to(() => const HomeScreen()),
          ),
          body: Stack(fit: StackFit.loose, children: [
            WWMapScreen(),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
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
                                  controller: ctr.rideCreateFromCtr,
                                  futureFunction: () => ctr.apiLocationSearch(
                                      ctr.rideCreateFromCtr.text),
                                  getSelectedValue: (a) async =>
                                      ctr.rideCreateForm = await ctr
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
                                  controller: ctr.rideCreateToCtr,
                                  futureFunction: () => ctr.apiLocationSearch(
                                      ctr.rideCreateToCtr.text),
                                  getSelectedValue: (a) async =>
                                      ctr.rideCreateTo = await ctr
                                          .apiLocationFetchLatLong(a.label),
                                ))
                              ],
                            ),
                            const SizedBox(height: 10),
                            // Row(
                            //   children: [
                            //     SizedBox(
                            //         width: 60, child: Text('Date', style: s7)),
                            //     Expanded(
                            //       child: searchFormField(
                            //         st: 'Choose Date',
                            //         readOnly: true,
                            //         controller: ctr.rideCreateDate,
                            //         onTap: () async {
                            //           DateTime? date = await showDatePicker(
                            //             context: context,
                            //             initialDate: DateTime.now(),
                            //             firstDate: DateTime.now(),
                            //             lastDate: DateTime.now()
                            //                 .add(Duration(days: 365)),
                            //           );
                            //           if (date != null) {
                            //             ctr.rideCreateDate.text =
                            //                 DateFormat('yyyy-MM-dd').format(date);
                            //           }
                            //         },
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            const SizedBox(height: 10),
                          ]),
                    ),
                    customButton(
                        color: violetcolor,
                        height: false,
                        txt: 'Search',
                        context: context,
                        onpressed: () async {
                          if (ctr.rideCreateForm != null) {
                            ctr.mapController?.animateCamera(
                                CameraUpdate.newLatLngZoom(
                                    LatLng(ctr.rideCreateForm!.latitude,
                                        ctr.rideCreateForm!.longitude),
                                    12));
                          }
                        }),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),

            // searchCards('Select location where you need to go', context,
            //     () => null, violetcolor, ctr.rideFromCtr, ctr.rideToCtr),
            GetBuilder<HomeController>(
                id: 'tripCreateLoader',
                builder: (_) {
                  return Positioned(
                    bottom: 30,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: customButton(
                          txt: 'Create Trip',
                          height: true,
                          color: violetcolor,
                          onpressed: () => _.apiTripCreate(),
                          loading: _.tripCreateLoader),
                    ),
                  );
                }),
          ])),
    );
  }
}
