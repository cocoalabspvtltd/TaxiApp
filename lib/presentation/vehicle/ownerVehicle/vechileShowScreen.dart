// import 'package:new_app/controller/home/home_controller.dart';
// import 'package:new_app/presentation/MyVehicle/addVehicleScreen.dart';
// import 'package:new_app/utils/exports.dart';

// class MyVehicleScreen extends StatelessWidget {
//   const MyVehicleScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = Get.find<HomeController>();

//     return Scaffold(
//         appBar: appBars(
//           text: 'My Vehicle',
//           centertitle: true,
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text('List of Vehicles', style: s11),
//                 const SizedBox(height: 20),
//                 ListView.builder(
//                     physics: const NeverScrollableScrollPhysics(),
//                     shrinkWrap: true,
//                     itemCount: controller.data.length,
//                     itemBuilder: (context, index) {
//                       final data = controller.data[index];
//                       return GestureDetector(
//                         onTap: () {},
//                         child: Card(
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 15),
//                             child: Column(
//                               children: [
//                                 profileTexts1('Register No.', data.register),
//                                 profileTexts1('Car Model', data.model),
//                                 profileTexts1('Seats', data.seats),
//                                 profileTexts1('Category', data.category),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//               ],
//             ),
//           ),
//         ),
//         bottomNavigationBar: Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.end,
//             children: [
//               buttons(
//                   'Add New Vehicle', () => Get.to(() => AddVehicleScreen())),
//             ],
//           ),
//         ));
//   }
// }

// Widget profileTexts1(String label, String text) => Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       child: Row(children: [
//         SizedBox(width: 120, child: Text(label, style: s6)),
//         Text(text, style: const TextStyle(color: greyColor, fontSize: 15)),
//       ]),
//     );
