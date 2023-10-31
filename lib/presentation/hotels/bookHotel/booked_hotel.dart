import 'package:new_app/utils/exports.dart';
import 'package:new_app/controller/hotel/hote_controller.dart';

import '../myHotels/booked_hotel_detail_screen.dart';
import '../../../widgets/ww_errorFailureHandler.dart';

class BookedHotel extends StatelessWidget {
  const BookedHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Booked Hotels', centertitle: true),
      body: GetBuilder<HotelController>(
        id: "booked_hotels",
        builder: (controller) {
          return controller.userBookedHotelLoader
              ? Center(child: CircularProgressIndicator())
              : controller.userBookedHotelFailure != null
                  ? WWFailureHandler(
                      failure: controller.userBookedHotelFailure!,
                      onTap: () => controller.getUsersHotelBookingList(),
                    )
                  : (controller.userBookedHotelList?.isEmpty ?? true)
                      ? Center(child: Text("No Bookings available"))
                      : ListView.builder(
                          shrinkWrap: true,
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(10.0),
                          itemCount: controller.userBookedHotelList?.length,
                          itemBuilder: (context, index) {
                            final data = controller.userBookedHotelList?[index];
                            return listcards(
                              ontap: () {
                                if (data != null) {
                                  Get.to(
                                    () => BookedHotelDetailsScreen(
                                        details: data),
                                  );
                                }
                              },
                              context: context,
                              image: data?.image ?? "",
                              label: data?.hotelName ?? "",
                              label1: '₹ 1500',
                              // label2: (data?.avgRating ?? "0.0") == "0.0"
                              //     ? null
                              //     : "${data?.avgRating ?? "0"} star hotel",
                              label3: "perday/night",
                            );
                          },
                        );
        },
      ),
    );
  }
}
