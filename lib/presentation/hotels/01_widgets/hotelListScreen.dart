import 'dart:developer';

import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/bookHotel/hotelDetailScreen.dart';

class HotelListScreen extends StatelessWidget {
  const HotelListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HotelController>(
      id: "hotel_list",
      builder: (controller) {
        log("controller.hotelModel?.hotels", name: "hotel_list");

        return controller.hotelListFailure != null
            ? SizedBox(
                width: Get.width,
                height: Get.height / 3,
                child: Center(child: Text("Something went wrong")),
              )
            : (controller.hotelModel?.hotels?.isEmpty ?? true)
                ? SizedBox(
                    width: Get.width,
                    height: Get.height / 3,
                    child: Center(child: Text("No Hotels available")),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.hotelModel?.hotels?.length ?? 2,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      final data = controller.hotelModel?.hotels?[index];
                      return listcards(
                        ontap: () {
                          controller.hotelDetail = null;
                          if (data?.id != null)
                            controller.getHotelDetail(hotelId: data!.id!);
                          Get.to(() => const HotelDetailScreen());
                        },
                        context: context,
                        image:
                            // data?.image ??
                            "https://images.unsplash.com/photo-1625244724120-1fd1d34d00f6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                        label: data?.hotelName ?? "",
                        label1: '₹ 1500',
                        label2: (data?.avgRating ?? "0.0") == "0.0"
                            ? null
                            : "${data?.avgRating ?? "0"} star hotel",
                        label3: "perday/night",
                      );
                    },
                  );
      },
    );
  }
}
