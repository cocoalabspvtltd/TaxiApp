import 'package:new_app/widgets/map_view_screen.dart';

import '../../../utils/exports.dart';
import '../../../model/hotel/hotel_booking_model/hotel_booking_model.dart';

class BookedHotelDetailsScreen extends StatelessWidget {
  final HotelBookingModel details;
  const BookedHotelDetailsScreen({required this.details, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(
        text: 'Details',
        centertitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Text('Hotel Name', style: s11),
                  const SizedBox(height: 5),
                  Text('${details.hotelName ?? ""}', style: s12),
                  const SizedBox(height: 10),
                  Text('Phone', style: s11),
                  const SizedBox(height: 5),
                  Text('${details.hotelPhone ?? ""}', style: s12),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text('Check-in', style: s11),
                          const SizedBox(height: 5),
                          Text(
                              '${details.checkIn?.split("-").reversed.join("-") ?? ""}',
                              style: s12),
                          const SizedBox(height: 10),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('Check-out', style: s11),
                          const SizedBox(height: 5),
                          Text(
                              '${details.checkOut?.split("-").reversed.join("-") ?? ""}',
                              style: s12),
                          const SizedBox(height: 10),
                        ],
                      ),
                      Spacer(),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ExpansionTile(
                    title: const Text('Guests'),
                    leading:
                        Icon(Icons.people_alt_outlined, color: violetcolor),
                    trailing: Icon(
                      Icons.arrow_drop_down,
                      color: violetcolor,
                    ),
                    onExpansionChanged: (value) {},
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: details.guests?.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(
                              "${details.guests?[index].name}",
                              style: s2.copyWith(color: blackColor),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                   SizedBox(height: 20),
                  MapViewWidget(latitude:details.latitude,longitude:details.longitude),
                   SizedBox(height: 10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
