import 'package:geolocator/geolocator.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/01_widgets/searchHotel.dart';
import 'package:new_app/presentation/hotels/01_widgets/hotelListScreen.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';
import 'package:permission_handler/permission_handler.dart';
double currentHLatituderes = 0.0;
double currentHLongituderes = 0.0;
int travelToUpdate = 0;

class AvailableHotelScreen extends StatefulWidget {
  const AvailableHotelScreen({Key? key}) : super(key: key);

  @override
  State<AvailableHotelScreen> createState() => _AvailableHotelScreenState();
}

class _AvailableHotelScreenState extends State<AvailableHotelScreen> {
  final ctr = Get.find<HotelController>();
  final hctr = Get.find<HomeController>();
  bool switchValue = false;


  Future<void> _getCurrentLocation() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        setState(() {
          currentHLatituderes = position.latitude;
          currentHLongituderes = position.longitude;
          print("co->${currentHLatituderes}");
          print("co->${currentHLongituderes}");
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
        text: 'Hotels',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Location where you need \naccomodation', style: s6),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60, child: Text('From', style: s7)),
                          Expanded(
                            child: WWLocationSearchField(
                              st: 'Search Location',
                              controller: ctr.resLocationFromCtr,
                              futureFunction: () =>
                                  hctr.apiLocationSearch(ctr.resLocationFromCtr.text),
                              getSelectedValue: (a) async => ctr.resLocationFrom =
                              await hctr.apiLocationFetchLatLong(a.label),
                            ),
                            // child: WWLocationSearchField(
                            //   st: 'Search Location',
                            //   controller: ctr.resLocationFromCtr,
                            //   futureFunction: () =>
                            //       hctr.apiLocationSearch(ctr.resLocationFromCtr.text),
                            //   getSelectedValue: (a) async =>
                            //   ctr.hotelLatLong = await hctr.apiLocationFetchLatLong(a.label),
                            // ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(width: 60, child: Text('To', style: s7)),
                          Expanded(
                            child:  WWLocationSearchField(
                              st: 'Search Location',
                              controller: ctr.resLocationToCtr,
                              futureFunction: () =>
                                  hctr.apiLocationSearch(ctr.resLocationToCtr.text),
                              getSelectedValue: (a) async => ctr.resLocationTo =
                              await hctr.apiLocationFetchLatLong(a.label),
                            ),
                            // child:  WWLocationSearchField(
                            //   st: 'Search Location',
                            //   controller: ctr.hotelLocationToCtr,
                            //   futureFunction: () =>
                            //       hctr.apiLocationSearch(ctr.hotelLocationToCtr.text),
                            //   getSelectedValue: (a) async =>
                            //   ctr.hotelLatLong = await hctr.apiLocationFetchLatLong(a.label),
                            // ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Travel', style: s7), // Text for the switch label
                          Switch(
                            value: switchValue,
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                                travelToUpdate = value ? 1 : 0;
                                bool valu = false;
                                valu = value;

                                // Add your logic here based on the switch value
                                if (value) {

                                  print("sv-?${travelToUpdate}");
                                  print("sv-?${valu}");
                                  // Switch is ON
                                  // Add logic for when the switch is ON
                                } else {
                                  print("sv-?${travelToUpdate}");
                                  // Switch is OFF
                                  // Add logic for when the switch is OFF
                                }
                              });
                            },
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
                          ctr.getHotels();
                        },
                      ),
                      const SizedBox(height: 10),
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
                  Text('Hotels on your way', style: s11),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: HotelListScreen(),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}


