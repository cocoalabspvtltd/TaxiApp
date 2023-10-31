import 'package:new_app/controller/vehicle/ridesharing.dart';
import 'package:new_app/presentation/trip/bookride.dart';
import 'package:new_app/presentation/trip/trip_create.dart';
import 'package:new_app/utils/exports.dart';

class DriverWayScreen extends StatelessWidget {
  const DriverWayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RideSharingController controller = Get.put(RideSharingController());

    return WillPopScope(
      onWillPop: () async {
        Get.to(() => const TripCreateScreen());
        return false;
      },
      child: Scaffold(
        appBar: appBars(
            text: 'Driver on the way',
            centertitle: true,
            onpressed: () => Get.to(() => const TripCreateScreen())),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (context, index) {
                final data = controller.datas[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Column(
                      children: [
                        profileTexts('Name', data.name),
                        profileTexts('From', data.from),
                        profileTexts('To', data.to),
                        icons('Distance', data.distance, '')
                      ],
                    ),
                  ),
                );
              }),
        )),
        bottomNavigationBar: const BookingRide(),
      ),
    );
  }
}
