import 'package:new_app/controller/home/home_controller.dart';
import 'package:new_app/controller/restaurant/restaurant_controller.dart';
import 'package:new_app/model/restuarant/booking/booking_restaurant_model.dart';
import 'package:new_app/presentation/hotels/01_widgets/horizontal_data_view.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_errorFailureHandler.dart';
import 'package:new_app/widgets/ww_showToast.dart';

class MyBookingsListScreen extends StatelessWidget {
  const MyBookingsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(text: "Bookings"),
        body: GetBuilder<RestaurantController>(
            id: 'my_restaurant_bookings_list',
            builder: (ctr) {
              final List<BookingRestaurantModel>? bookedList =
                  ctr.myRestaurantBookingsListModel?.bookings ?? [];
              return ctr.myRestaurantBookingsListLoader == true
                  ? Center(
                      child: CircularProgressIndicator(
                      color: violetcolor,
                    ))
                  : ctr.errorMyRestaurantBookingsList != null
                      ? WWFailureHandler(
                          failure: ctr.errorMyRestaurantBookingsList!,
                          onTap: () => ctr.apiGetBookedRestaurantList())
                      : ctr.myRestaurantBookingsListModel == null
                          ? Center(
                              child: Text("There is no data"),
                            )
                          : bookedList?.isEmpty ?? true
                              ? Center(
                                  child: Text("List is Empty"),
                                )
                              : ListView.builder(
                                  itemCount: bookedList?.length,
                                  itemBuilder: (context, index) {
                                    final data = bookedList?[index];
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 0),
                                      child: InkWell(
                                        onTap: () {
                                          if (data != null) {
                                            bookingAcceptOrRejectDialogue(
                                                bookingData: data);
                                          }
                                        },
                                        child: Card(
                                          child: ListTile(
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    vertical: 5, horizontal: 5),
                                            title: Text(
                                              "${data?.name}",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            subtitle: Text(
                                              "${data?.status}",
                                              style: TextStyle(
                                                  color:
                                                      data?.status == 'accepted'
                                                          ? Colors.green
                                                          : Colors.red),
                                            ),
                                            trailing: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${data?.date}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(height: 5),
                                                Text(
                                                  "${data?.time}",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(height: 5),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
            }));
  }
}

Future bookingAcceptOrRejectDialogue(
    {required BookingRestaurantModel bookingData}) {
  return Get.defaultDialog(
    title: "Booking",
    contentPadding: e7,
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'Date',
          text: bookingData.date?.split("-").reversed.join("-") ?? "",
        ),
        SizedBox(height: 20),
        HorizontalDataView(
          label: 'Time',
          text: bookingData.time?.split("-").reversed.join("-") ?? "",
        ),
        SizedBox(height: 20),
        GetBuilder<HomeController>(
            id: 'booking_accept_reject_btn',
            builder: (ctr) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  bookingData.status == 'rejected'
                      ? SizedBox()
                      : buttons('Reject', () {
                          if (bookingData.status == 'rejected') {
                            wwShowToast(
                              "already Rejected",
                              status: Status.success,
                            );
                            // Get.back();
                          } else {
                            Get.find<RestaurantController>()
                                .apiacceptOrRejectBookingMyRestaurant(
                                    bookingData.id ?? 0, "rejected");
                          }
                        },
                          isBusy: Get.find<RestaurantController>()
                              .acceptOrRejectBookingLoader),
                  bookingData.status == 'accepted'
                      ? SizedBox()
                      : buttons('Accept', () {
                          if (bookingData.status == 'accepted') {
                            wwShowToast(
                              "already Accepted",
                              status: Status.success,
                            );
                            // Get.back();
                          } else {
                            Get.find<RestaurantController>()
                                .apiacceptOrRejectBookingMyRestaurant(
                                    bookingData.id ?? 0, "accepted");
                          }
                        },
                          isBusy: Get.find<RestaurantController>()
                              .acceptOrRejectBookingLoader),
                ],
              );
            })
        // HorizontalDataView(
        //   label: 'No.of Guests',
        //   text: bookingData.guests?.length.toString() ?? "",
        // ),
        // SizedBox(height: 40),
      ],
    ),
  );
}
