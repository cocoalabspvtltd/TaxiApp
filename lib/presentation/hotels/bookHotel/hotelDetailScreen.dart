import 'package:new_app/controller/hotel/hote_controller.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/presentation/hotels/bookHotel/book_hotel.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurant_widgets.dart';

class HotelDetailScreen extends StatelessWidget {
  const HotelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(
          text: 'Hotel Description',
          centertitle: true,
        ),
        body: GetBuilder<HotelController>(
          id: "hotel_detail",
          builder: (ctr) {
            return ctr.hotelDetailsFailure != null
                ? Center(child: Text('something went wrong'))
                : ctr.hotelDetail == null
                    ? Center(child: CircularProgressIndicator())
                    : SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 10),
                                  Text('Hotel Name', style: s11),
                                  const SizedBox(height: 5),
                                  Text('${ctr.hotelDetail?.hotelName ?? ""}',
                                      style: s12),
                                  const SizedBox(height: 10),
                                  Text('Hotel Address', style: s11),
                                  const SizedBox(height: 5),
                                  Text('${ctr.hotelDetail?.address ?? ""}',
                                      style: s12),
                                  const SizedBox(height: 10),
                                  Text('Facilities', style: s11),
                                  const SizedBox(height: 5),
                                  Text('Facilities 1', style: s12),
                                  Text('Facilities 2', style: s12),
                                  Text('Facilities 3', style: s12),
                                  Text('Facilities 4', style: s12),
                                  const SizedBox(height: 10),
                                  Text('Budget', style: s11),
                                  const SizedBox(height: 5),
                                  name('2500'),
                                  const SizedBox(height: 10),
                                  Text('Today\'s Rate', style: s11),
                                  const SizedBox(height: 5),
                                  name('1500'),
                                  const SizedBox(height: 10),
                                  Text('Rooms', style: s11),
                                  const SizedBox(height: 10),
                                  SizedBox(
                                    height: 80.0,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: ctr.hotelDetail?.rooms?.length,
                                      itemBuilder: (context, index) {
                                        return Container(
                                          margin: const EdgeInsets.all(2),
                                          alignment: Alignment.center,
                                          height: 80.0,
                                          width: 80.0,
                                          color: Colors.red,
                                        );
                                        // Image.network(
                                        //   ctr.hotelDetail?.rooms?[index].images
                                        //           ?.first ??
                                        //       '',
                                        //   height: 40.0,
                                        //   width: 80.0,
                                        // );
                                      },
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  Align(child: restuarantIcons()),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                            maps(context),
                            const SizedBox(height: 20),
                          ],
                        ),
                      );
          },
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              buttons('Book now', () {
                final ctr = Get.find<HotelController>();
                if (ctr.hotelDetail?.rooms?.isNotEmpty ?? false) {
                  ctr.selectHotelRoom(ctr.hotelDetail?.rooms?.first);
                }
                Get.to(() => BookHotel());
              }),
            ],
          ),
        ));
  }
}

Widget name(String label) {
  return Row(
    children: [
      Text(label, style: s16),
      Text(' per day/night', style: s14),
    ],
  );
}
