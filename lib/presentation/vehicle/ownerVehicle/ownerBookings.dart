import 'package:intl/intl.dart';
import 'package:new_app/controller/vehicle/vehicle_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/controller/home/home_controller.dart';

import '../../../widgets/ww_showToast.dart';
import '../../../widgets/ww_errorFailureHandler.dart';
import '../../hotels/01_widgets/horizontal_data_view.dart';
import '../../../model/driver/owner_driver_reaquest_base_model/ownerDriverRequestModel.dart';

class OwnerBookings extends StatelessWidget {
  const OwnerBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Booking List'),
      body: GetBuilder<VehicleController>(
        id: "driverOwnerBookingsLoading",
        builder: (_) {
          print("0>${_.driverOwnerBookings!.requests![0].pool!["created_at"]}");
          return _.driverOwnerBookingsLoading
              ? Center(child: CircularProgressIndicator())
              : _.driverOwnerBookingsFailure != null
                  ? WWFailureHandler(
                      failure: _.driverOwnerBookingsFailure!,
                      onTap: () => _.apiDriverOwnerBookingsList(),
                    )
                  : (_.driverOwnerBookings?.requests?.isEmpty ?? true)
                      ? Center(child: Text("No Booking available"))
                      : ListView.builder(
                          padding: EdgeInsets.all(10.0),
                          itemCount:
                              _.driverOwnerBookings?.requests?.length ?? 0,
                          itemBuilder: (context, index) => InkWell(

                            onTap: () {
                              if (_.driverOwnerBookings?.requests?[index] !=
                                  null) {
                                bookingAcceptOrRejectDialogue(
                                  ownerDriverRequestModel:
                                      _.driverOwnerBookings!.requests![index],
                                );
                              }
                            },
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0,
                                  vertical: 4.0,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${_.driverOwnerBookings!.requests![index].driverId}", //.
                                      style: s1.copyWith(color: blackColor),
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Text(
                                        //   "HH", // "Guests : ${ctr.myHotelBookingList?[index].guests?.length ?? ""}",
                                        //   style: s2.copyWith(
                                        //     color: blackColor,
                                        //     fontSize: 14.0,
                                        //   ),
                                        //   textAlign: TextAlign.start,
                                        // ),
                                        Spacer(),
                                        Text(
                                          "Status : ",
                                          style: s2.copyWith(
                                            color: blackColor,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        Text(
                                          "${_.driverOwnerBookings!.requests![index].pool!["status"] ?? ""}",
                                          style: s2.copyWith(
                                            color: _
                                                        .driverOwnerBookings!
                                                        .requests![index]
                                                        .pool!["status"] ==
                                                true
                                                ? Colors.green
                                                : _
                                                            .driverOwnerBookings!
                                                            .requests![index]
                                                .pool!["status"] ==
                                                   false
                                                    ? redColor
                                                    : blackColor,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "DateTime: ${
                                              _parseAndFormatDateTime(
                                                _.driverOwnerBookings!.requests![index].pool!["created_at"],
                                              )
                                          }",
                                          style: s2.copyWith(
                                            color: blackColor,
                                            fontSize: 14.0,
                                          ),
                                        ),

                                        // Text(
                                        //   "dummy",
                                        //   style: s2.copyWith(
                                        //     color: blackColor,
                                        //     fontSize: 14.0,
                                        //   ),
                                        // )
                                      ],
                                    ),
                                    SizedBox(height: 10.0),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
        },
      ),
    );

  }
  String _parseAndFormatDateTime(String? dateString) {
    if (dateString == null) {
      return 'N/A'; // Handle the case where the date is missing or null
    }

    try {
      final DateTime dateTime = DateTime.parse(dateString);
      return DateFormat('dd-MMMM-yyyy, kk:mm').format(dateTime);
    } catch (e) {
      return 'Invalid Date'; // Handle parsing errors
    }
  }

}

Future bookingAcceptOrRejectDialogue(
    {required OwnerDriverRequestModel ownerDriverRequestModel}) {
  return Get.defaultDialog(
    title: "Booking",
    contentPadding: e7,
    confirm: GetBuilder<VehicleController>(
        id: "accept_booking",
        builder: (ctr) {
          return SizedBox(
            width: 120.0,
            child: buttons(
              'Accept',
              () {
                if (ownerDriverRequestModel.status != "accepted") {
                  ctr.acceptOrRejectVehicleBookingFn(
                    id: ownerDriverRequestModel.id!,
                    acceptOrRejectBooking: AcceptOrRejectBooking.accept,
                  );
                } else {
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
      id: "reject_booking",
      builder: (ctr) {
        return SizedBox(
          width: 120.0,
          child: buttons(
            'Reject',
            () {
              if (ownerDriverRequestModel.status != "rejected") {
                ctr.acceptOrRejectVehicleBookingFn(
                  id: ownerDriverRequestModel.id!,
                  acceptOrRejectBooking: AcceptOrRejectBooking.reject,
                );
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
        SizedBox(height: 20),
        // HorizontalDataView(
        //   label: 'Username',
        //   text: "Jithin",
        // ),
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'DateTime',
          text:
              "${DateFormat('dd-MMMM-yyyy, kk:mm').format(ownerDriverRequestModel.pool!["created_at"]!)}",
        ),
        SizedBox(height: 40),
      ],
    ),
  );
}
