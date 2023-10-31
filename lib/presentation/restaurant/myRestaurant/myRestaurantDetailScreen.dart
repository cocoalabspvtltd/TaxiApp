import 'package:new_app/presentation/restaurant/01_widgets/restaurant_widgets.dart';
import 'package:new_app/utils/exports.dart';

class MyRestuarantDetailScreen extends StatelessWidget {
  const MyRestuarantDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBars(text: 'Restaurant Details', centertitle: true),
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
                Text('Restuarant Name', style: s11),
                const SizedBox(height: 5),
                Text('Abc Restuarant ', style: s12),
                const SizedBox(height: 10),
                Text('Restuarant Address', style: s11),
                const SizedBox(height: 5),
                Text('Place, area, road, pincode', style: s12),
                const SizedBox(height: 10),
                // Text('Menu Summary', style: s11),
                const SizedBox(height: 5),
                Text('Dish 1', style: s12),
                Text('Dish 2', style: s12),
                Text('Dish 3', style: s12),
                Text('Dish 4', style: s12),
                const SizedBox(height: 10),
                Text('Today\'s Offer', style: s11),
                const SizedBox(height: 5),
                Text('20% off on every order ', style: s13),
                const SizedBox(height: 10),
                Text('Distance', style: s11),
                const SizedBox(height: 5),
                Text('500 m away', style: s12),
                const SizedBox(height: 20),
                Align(child: restuarantIcons()),
                const SizedBox(height: 10),
              ],
            ),
          ),
          maps(context)
        ],
      )),
    );
  }
}
