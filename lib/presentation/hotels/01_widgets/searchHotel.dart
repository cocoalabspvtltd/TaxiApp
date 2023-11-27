// import 'package:intl/intl.dart';
// import 'package:new_app/controller/home/home_controller.dart';
// import 'package:new_app/controller/hotel/hote_controller.dart';
// import 'package:new_app/utils/exports.dart';
// import 'package:new_app/widgets/ww_location_search_field.dart';
//
// class SearchHotel extends StatelessWidget {
//   const SearchHotel({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final hctr = Get.find<HomeController>();
//     return GetBuilder<HotelController>(builder: (ctr) {
//       return Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const SizedBox(height: 10),
//           Text('Location where you need \naccomodation', style: s6),
//           const SizedBox(height: 10),
//
//           WWLocationSearchField(
//             st: 'Search Location',
//             controller: ctr.hotelLocationCtr,
//             futureFunction: () =>
//                 hctr.apiLocationSearch(ctr.hotelLocationCtr.text),
//             getSelectedValue: (a) async =>
//                 ctr.hotelLatLong = await hctr.apiLocationFetchLatLong(a.label),
//           ),
//
//           // WWLocationSearchField(
//           //   controller: TextEditingController(),
//           //   st: 'Search Location',
//           //   icon: Icons.search,
//           // ),
//           const SizedBox(height: 20),
//           Row(
//             children: [
//               Text('Number of days/nights', style: s6),
//               const SizedBox(width: 25),
//               Expanded(
//                   child: searchFormField(
//                 st: '01',
//               ))
//             ],
//           ),
//           const SizedBox(height: 10),
//           const Divider(color: greyColor),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               Expanded(child: Text('Budget Per day/night', style: s6)),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text('Min'),
//                     const SizedBox(height: 5),
//                     searchFormField(
//                       st: '₹ 500',
//                       controller: ctr.minBudgetCtr,
//                       keyboardType: TextInputType.number,
//                     )
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text('Max'),
//                     const SizedBox(height: 5),
//                     searchFormField(
//                       st: '₹ 1500',
//                       controller: ctr.maxBudgetCtr,
//                       keyboardType: TextInputType.number,
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 10),
//           const Divider(color: greyColor),
//           const SizedBox(height: 10),
//           Row(
//             children: [
//               Text('Check in time', style: s6),
//               const SizedBox(width: 80),
//               Expanded(
//                 child: searchFormField(
//                   st: 'Choose Date',
//                   readOnly: true,
//                   controller: ctr.datePickerCtr,
//                   onTap: () async {
//                     DateTime? date = await showDatePicker(
//                       context: context,
//                       initialDate: DateTime.now(),
//                       firstDate: DateTime.now(),
//                       lastDate: DateTime.now().add(Duration(days: 365)),
//                     );
//                     if (date != null) {
//                       ctr.datePickerCtr.text =
//                           DateFormat('dd-MM-yyyy').format(date);
//                     }
//                   },
//                 ),
//               ),
//               // const SizedBox(width: 10),
//               // Expanded(child: searchFormField(st: '00')),
//               // const SizedBox(width: 10),
//               // Expanded(child: searchFormField(st: 'AM')),
//             ],
//           ),
//           const SizedBox(height: 10),
//         ],
//       );
//     });
//   }
// }
