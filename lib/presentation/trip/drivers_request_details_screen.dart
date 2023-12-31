import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/model/driver/driver_request_model/driver_request_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/getdirection.dart';
import 'package:new_app/widgets/ww_mapScreen.dart';
import 'package:new_app/widgets/ww_showToast.dart';

class DriversRequestsDetailsScreen extends StatelessWidget {
  const DriversRequestsDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final driverRequest = Get.arguments;
    bool hasPool = driverRequest != null && driverRequest.pool != null;
    // bool hasPool = driverRequest.pool != null;
    return Scaffold(
      appBar: appBars(text: "Details"),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    elevation: 2,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '${driverRequest.name}',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                              Spacer(),
                              if (hasPool)
                                Text(
                                  'Pool User',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green),
                                ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Phone : ${driverRequest.phoneNo}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Source : ${driverRequest.from}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Destination :${driverRequest.to}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'Distance : ${driverRequest.distance}',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          SizedBox(height: 5),
                          if (hasPool)
                            Column(
                              children: [
                                Text("${driverRequest.pool!['user_id']}")
                              ],
                            ),
                          SizedBox(height: 5),
                              InkWell(
                                onTap: (){
                                  bookingAcceptOrRejectDialogue(
                                      requestModel:
                                      driverRequest,
                                    );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: redColor,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 5),
                                    child: Text('Update Status', style: s2),
                                  ),
                                ),
                              )
                            ],
                          ),

                      ),
                    ),
                Container(height: 700,width: 400,
                child: WWMapScreen(),)
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future bookingAcceptOrRejectDialogue(
      {required DriverRequestModel requestModel}) {
    return Get.defaultDialog(
      title: "Update ",
      contentPadding: e7,
      confirm: GetBuilder<VehicleController>(
          id: "accept_driver_request",
          builder: (ctr) {
            return SizedBox(
              width: 120.0,
              child: buttons(
                'Accept',
                    () {
                      if (requestModel.status != "accepted") {
                        Get.to(() => RouteDisplayMap(
                            from:requestModel.from.toString(),to:requestModel.to.toString()
                        ));
                        ctr.acceptOrRejectVehicleBookingFn(
                            id: requestModel.id!,
                            acceptOrRejectBooking: AcceptOrRejectBooking.accept,
                          );

                      }
                      else {
                    wwShowToast(
                      "Already in accepted status",
                      status: Status.failure,
                    );
                  }
                },
                isBusy: ctr.vehicleAcceptBookingLoader,
              ),
            );
          }),
      cancel: GetBuilder<VehicleController>(
        id: "reject_driver_request",
        builder: (ctr) {
          return SizedBox(
            width: 120.0,
            child: buttons(
              'Reject',
                  () {
                if (requestModel.status != "rejected") {
                  ctr.acceptOrRejectVehicleBookingFn(
                    id: requestModel.id!,
                    acceptOrRejectBooking: AcceptOrRejectBooking.reject,
                  );
                  Get.back();
                } else {
                  wwShowToast(
                    "Already in rejected status",
                    status: Status.failure,
                  );
                }
              },
              isBusy: ctr.vehicleRejectBookingLoader,
            ),
          );
        },
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Text("Update Driver Requests")
        ],
      ),
    );
  }
}
