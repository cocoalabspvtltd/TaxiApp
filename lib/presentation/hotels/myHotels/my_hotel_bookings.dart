import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../01_widgets/horizontal_data_view.dart';
import '../../../widgets/ww_errorFailureHandler.dart';
import '../../../model/hotel/hotel_booking_model/hotel_booking_model.dart';

class MyHotelBookings extends StatelessWidget {
  const MyHotelBookings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: "Bookings", centertitle: true),
      body: GetBuilder<HotelController>(
        id: "myHotelListLoader",
        builder: (ctr) {
          return ctr.myHotelBookingListLoader
              ? Center(child: CircularProgressIndicator())
              : ctr.myHotelBookingListFailure != null
                  ? WWFailureHandler(
                      failure: ctr.myHotelBookingListFailure!,
                      onTap: () => ctr.apiOwnerBookingList(),
                    )
                  : (ctr.myHotelBookingList?.isEmpty ?? true)
                      ? Center(child: Text("Data Empty"))
                      : ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.all(10.0),
                          itemCount: ctr.myHotelBookingList?.length,
                          itemBuilder: (context, index) {
                            return Card(
                              child: InkWell(
                                onTap: () {
                                  if (ctr.myHotelBookingList?[index] != null) {
                                    bookingAcceptOrRejectDialogue(
                                      bookingData:
                                          ctr.myHotelBookingList![index],
                                    );
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0,
                                    vertical: 4.0,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${ctr.myHotelBookingList?[index].room?.type ?? ""}",
                                        style: s1.copyWith(color: blackColor),
                                      ),
                                      SizedBox(height: 10.0),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Guests : ${ctr.myHotelBookingList?[index].guests?.length ?? ""}",
                                            style: s2.copyWith(
                                              color: blackColor,
                                              fontSize: 14.0,
                                            ),
                                            textAlign: TextAlign.start,
                                          ),
                                          Spacer(),
                                          Text(
                                            "Status : ",
                                            style: s2.copyWith(
                                              color: blackColor,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          Text(
                                            "${ctr.myHotelBookingList?[index].status ?? ""}",
                                            style: s2.copyWith(
                                              color: ctr
                                                          .myHotelBookingList?[
                                                              index]
                                                          .status ==
                                                      "accepted"
                                                  ? Colors.green
                                                  : ctr.myHotelBookingList?[index]
                                                              .status ==
                                                          "rejected"
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
                                            "Check-in    : ${ctr.myHotelBookingList?[index].checkIn?.split("-").toList().reversed.join("-") ?? ""}",
                                            style: s2.copyWith(
                                              color: blackColor,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          Text(
                                            "Check-out : ${ctr.myHotelBookingList?[index].checkOut?.split("-").toList().reversed.join("-") ?? ""}",
                                            style: s2.copyWith(
                                              color: blackColor,
                                              fontSize: 14.0,
                                            ),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10.0),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
        },
      ),
    );
  }
}

Future bookingAcceptOrRejectDialogue({required HotelBookingModel bookingData}) {
  return Get.defaultDialog(
    title: "Booking",
    contentPadding: e7,
    confirm: GetBuilder<HotelController>(
        id: "accept_booking",
        builder: (ctr) {
          return SizedBox(
            width: 120.0,
            child: buttons(
              'Accept',
              () {
                if (bookingData.status != "accepted") {
                  ctr.acceptOrRejectHotelBookingFn(
                    id: bookingData.id!,
                    acceptOrRejectBooking: AcceptOrRejectBooking.accept,
                  );
                } else {
                  wwShowToast(
                    "Already in accepted status",
                    status: Status.failure,
                  );
                }
              },
              isBusy: ctr.acceptBookingLoader,
            ),
          );
        }),
    cancel: GetBuilder<HotelController>(
      id: "reject_booking",
      builder: (ctr) {
        return SizedBox(
          width: 120.0,
          child: buttons(
            'Reject',
            () {
              if (bookingData.status != "rejected") {
                ctr.acceptOrRejectHotelBookingFn(
                  id: bookingData.id!,
                  acceptOrRejectBooking: AcceptOrRejectBooking.reject,
                );
              } else {
                wwShowToast(
                  "Already in rejected status",
                  status: Status.failure,
                );
              }
            },
            isBusy: ctr.rejectBookingLoader,
          ),
        );
      },
    ),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'Check In',
          text: bookingData.checkIn?.split("-").reversed.join("-") ?? "",
        ),
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'Check Out',
          text: bookingData.checkOut?.split("-").reversed.join("-") ?? "",
        ),
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'No.of Guests',
          text: bookingData.guests?.length.toString() ?? "",
        ),
        SizedBox(height: 40),
      ],
    ),
  );
}
