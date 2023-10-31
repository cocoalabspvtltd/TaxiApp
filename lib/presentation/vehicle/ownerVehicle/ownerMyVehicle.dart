import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerAddVehicleScreen.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerBookings.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerDriverDetails.dart';
import 'package:new_app/presentation/vehicle/ownerVehicle/ownerVehicleReview.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';

class OwnerMyVehicleScreen extends StatelessWidget {
  const OwnerMyVehicleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final uCtr = Get.find<AuthController>();

    return Scaffold(
      appBar: appBars(
        text: 'My Vehicle',
        centertitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GetBuilder<VehicleController>(
            id: 'ownerVechileDetailsLoader',
            builder: (_) {
              return _.ownerVechileDetailsLoader
                  ? Center(child: CircularProgressIndicator())
                  : uCtr.loginUserData?.user?.isDriver == false
                      ? customButton(
                          txt: 'Add Driver',
                          height: true,
                          color: violetcolor,
                          onpressed: () => Get.to(
                              () => OwnerDriverDetailsScreen(type: 'add')))
                      : _.ownerVehicleDetailFailure != null
                          ? WWFailureHandler(
                              failure: _.ownerVehicleDetailFailure!,
                              onTap: () => _.apiVehicleDetails(),
                            )
                          : OwnerVehicleStateless(
                              ctr: _,
                            );
            }),
      ),
    );
  }
}

class OwnerVehicleStateless extends StatelessWidget {
  final VehicleController ctr;
  const OwnerVehicleStateless({
    super.key,
    required this.ctr,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Center(
              child: CircleAvatar(
                  radius: 60, backgroundImage: AssetImage(hotel1))),
          SizedBox(height: 30),
          Text('Register ${ctr.ownerVehicleDetails?.driver?.car?.regNumber}'),
          SizedBox(height: 10),
          Text('Car Model: ${ctr.ownerVehicleDetails?.driver?.car?.carModel}'),
          SizedBox(height: 10),
          Text('Category: ${ctr.ownerVehicleDetails?.driver?.car?.category}'),

          SizedBox(height: 30),

          customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Add New Vehicle',
              onpressed: () => Get.to(OwnerAddVehicleScreen())),

          SizedBox(height: 20),

          customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Driver Details',
              onpressed: () => Get.to(OwnerDriverDetailsScreen(type: 'edit'))),

          SizedBox(height: 20),

          customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Bookings',
              onpressed: () {
                ctr.apiDriverOwnerBookingsList();
                Get.to(() => OwnerBookings());
              }),

          SizedBox(height: 20),
          customButton(
              color: violetcolor,
              height: false,
              context: context,
              txt: 'Review',
              onpressed: () {
                ctr.apiDriverReviewList();
                Get.to(() => OwnerVehicleReview());
              }),

          // ProfileCards(
          //     txt: 'Add New Vehicle',
          //     context: context,
          //     onpressed: () => Get.to(() => AddVehicleScreen())),
          // ProfileCards(
          //     txt: 'Driver Details',
          //     context: context,
          //     onpressed: () => Get.to(() => DriverDetailsScreen())),
          // SizedBox(height: 20),
          // ProfileCards(
          //     txt: 'Bookings',
          //     context: context,
          //     onpressed: () => Get.to(() => BookingScreen())),
          // ProfileCards(
          //     txt: 'Review',
          //     context: context,
          //     onpressed: () => Get.to(() => ReviewScreen())),
        ],
      ),
    );
  }
}

Widget profileTexts1(String label, String text) => Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(children: [
        SizedBox(width: 120, child: Text(label, style: s6)),
        Text(text, style: const TextStyle(color: greyColor, fontSize: 15)),
      ]),
    );
