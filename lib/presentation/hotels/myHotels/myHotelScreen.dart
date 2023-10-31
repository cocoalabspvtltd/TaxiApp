// import 'package:new_app/controller/home/home_controller.dart';
// import 'package:new_app/presentation/hotels/bookHotel/hotelDetailScreen.dart';
// import 'package:new_app/utils/exports.dart';

// class MyHotelScreen extends StatelessWidget {
//   const MyHotelScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // var controller = context.watch<HotelListtController>();
//     return Scaffold(
//       appBar: appBars(
//           text: 'My Hotel', centertitle: true, onpressed: () => Get.back()),
//       body: GetBuilder<HomeController>(
//         id: 'myHotelListLoader',
//         builder: (_) {
//           return _.myHotelListLoader
//               ? Center(child: CircularProgressIndicator())
//               : _.myHotelListFailure != null
//                   ? Center(child: Text('something went wrong'))
//                   : _.myHotelModel?.hotels?.isEmpty ?? true
//                       ? Center(child: Text('Empty Data'))
//                       : Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.symmetric(
//                                   horizontal: 8, vertical: 15),
//                               child: Text('List of Booked Hotels', style: s11),
//                             ),
//                             MyHotelScreenStateless(ctr: _),
//                           ],
//                         );
//         },
//       ),
//     );
//   }
// }

// class MyHotelScreenStateless extends StatelessWidget {
//   const MyHotelScreenStateless({
//     super.key,
//     required this.ctr,
//   });

//   final HomeController ctr;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         physics: const NeverScrollableScrollPhysics(),
//         shrinkWrap: true,
//         itemCount: ctr.myHotelModel?.hotels?.length ?? 0,
//         itemBuilder: (context, index) {
//           return listcards(
//             ontap: () => Get.to(() => const HotelDetailScreen()),
//             context: context,
//             image: ctr.myHotelModel?.hotels?[index].image ?? '',
//             label: ctr.myHotelModel?.hotels?[index].hotelName ?? '',
//             label1: '₹ 1500',
//             label2: ctr.myHotelModel?.hotels?[index].avgRating ?? '',
//             label3: 'perday/night',
//           );
//         });
//   }
// }
