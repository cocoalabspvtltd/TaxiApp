import 'package:new_app/model/restuarant/restaurant_base_model/restaurant_model.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_location_search_field.dart';
import 'package:url_launcher/url_launcher.dart';

Widget searchCards(String label, BuildContext context, Function onpressed,
    Color color, TextEditingController fromCtr, TextEditingController toCtr) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(label, style: s6),
              const SizedBox(height: 10),
              text('From', fromCtr),
              const SizedBox(height: 10),
              text('To', toCtr),
              const SizedBox(height: 10),
            ]),
          ),
          customButton(
              color: color,
              height: false,
              txt: 'Search',
              context: context,
              onpressed: () => onpressed()),
          const SizedBox(height: 30),
        ],
      ),
    ),
  );
}

Widget text(String label, TextEditingController ctr) {
  return Row(
    children: [
      SizedBox(width: 60, child: Text(label, style: s7)),
      Expanded(
          child: WWLocationSearchField(
        st: 'Search Location',
        controller: ctr,
        initialList: [],
      ))
    ],
  );
}

Widget restuarantIcons({RestaurantModel? restaurantModel}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      GestureDetector(
        onTap: () async {
          if (restaurantModel != null) {
            final Uri launchUri = Uri(
              scheme: 'tel',
              path: restaurantModel.phone ?? "",
            );
            await launchUrl(launchUri);
          }
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50), color: yellowColor),
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.call, size: 28),
          ),
        ),
      ),
      const SizedBox(width: 10),
      GestureDetector(
        onTap: () async {
          if (restaurantModel != null) {
            final Uri smsLaunchUri = Uri(
              scheme: 'sms',
              path: restaurantModel.phone ?? "",
              queryParameters: <String, String>{
                'body': Uri.encodeComponent(''),
              },
            );
            await launchUrl(smsLaunchUri);
          }
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: yellowColor),
            child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.message, size: 28))),
      ),

    ],
  );
}
