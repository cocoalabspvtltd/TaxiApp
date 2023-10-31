import 'package:new_app/constants/decorations.dart';
import 'package:new_app/presentation/trip/trip_create.dart';
import 'package:new_app/utils/exports.dart';

class BookingRide extends StatelessWidget {
  const BookingRide({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
            borderRadius: br1,
            child: Image.asset(
              map,
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 0,
          child: Container(
            decoration: b4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: e7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('Liyakanth Sinan'),
                            Text('KL 07 A4556')
                          ]),
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text('500 m away'),
                            Text('car-car model')
                          ]),
                      const Divider(),
                    ],
                  ),
                ),
                customButton(
                    txt: 'Cancel the ride',
                    context: context,
                    height: true,
                    color: violetcolor,
                    onpressed: () => Get.to(() => const TripCreateScreen())),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
