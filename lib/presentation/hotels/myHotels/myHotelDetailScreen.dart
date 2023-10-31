import 'package:new_app/presentation/hotels/bookHotel/hotelDetailScreen.dart';
import 'package:new_app/presentation/restaurant/01_widgets/restaurant_widgets.dart';
import 'package:new_app/utils/exports.dart';

class MyHotelDetailScreen extends StatelessWidget {
  const MyHotelDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBars(
          text: 'Hotel Details',
          centertitle: true,
          onpressed: () => Get.back(),
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
                  Text('Abc Hotel ', style: s12),
                  const SizedBox(height: 10),
                  Text('Hotel Address', style: s11),
                  const SizedBox(height: 5),
                  Text('Place, area, road, pincode', style: s12),
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
                  const SizedBox(height: 20),
                  Align(child: restuarantIcons()),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            maps(context),
            const SizedBox(height: 20),
          ],
        )));
  }
}
