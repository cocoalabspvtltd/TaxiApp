import 'package:new_app/controller/vehicle/ridesharing.dart';
import 'package:new_app/presentation/trip/driverway.dart';
import 'package:new_app/presentation/trip/my_pool_list_screen.dart';
import 'package:new_app/utils/exports.dart';

class DriverScreen extends StatelessWidget {
  const DriverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller = Get.put(RideSharingController());
    final RideSharingController controller = Get.put(RideSharingController());
    return WillPopScope(
      onWillPop: () async {
        Get.to(() => const MyPoolListScreen());
        return false;
      },
      child: Scaffold(
          appBar: appBars(
            text: 'Drivers',
            centertitle: true,
            onpressed: () => Get.to(() => const MyPoolListScreen()),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text('Select Your Driver', style: s11),
                  const SizedBox(height: 20),
                  ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.drivers.length,
                      itemBuilder: (context, index) {
                        final data = controller.drivers[index];
                        return GestureDetector(
                          onTap: () => controller.setSelectedItemIndex(index),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            color: index == controller.selectedItemIndex
                                ? yellowColor
                                : whiteColor,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 15),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                color: index ==
                                                        controller
                                                            .selectedItemIndex
                                                    ? whiteColor
                                                    : yellowColor),
                                            child: const Padding(
                                              padding: EdgeInsets.all(5.0),
                                              child: Icon(Icons.call, size: 15),
                                            ),
                                          ),
                                          const SizedBox(width: 5),
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  color: index ==
                                                          controller
                                                              .selectedItemIndex
                                                      ? whiteColor
                                                      : yellowColor),
                                              child: const Padding(
                                                  padding: EdgeInsets.all(5.0),
                                                  child: Icon(Icons.message,
                                                      size: 15))),
                                        ],
                                      )
                                    ],
                                  ),
                                  profileTexts('Name', data.name),
                                  profileTexts('Place', data.place),
                                  profileTexts('Type', data.type),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                buttons('Confirm', () => Get.to(() => const DriverWayScreen())),
              ],
            ),
          )),
    );
  }
}
