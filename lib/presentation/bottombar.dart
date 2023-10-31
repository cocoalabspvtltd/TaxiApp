// import 'package:flutter/material.dart';
// import 'package:new_app/presentation/home/home_screen.dart';

// class EmployerDashBoard extends StatelessWidget {
//   const EmployerDashBoard({super.key});

//   @override
//   Widget build(BuildContext context) {
//     var controller = context.watch<DashBoardController>();
//     context.read<SavedController>();
//     context.read<AppliedJobsController>();
//     return Scaffold(
//         body: Center(child: dashBoardWidget.elementAt(controller.currentinde)),
//         bottomNavigationBar: BottomNavigationBar(
//             backgroundColor: Colors.white,
//             items: <BottomNavigationBarItem>[
//               BottomNavigationBarItem(
//                   icon: SvgPicture.asset(AppAssets.message,
//                       color: controller.currentinde == 0
//                           ? ColorConstant.teal600
//                           : Colors.grey.shade400),
//                   label: ''),
//               BottomNavigationBarItem(
//                   icon: SvgPicture.asset(AppAssets.home,
//                       color: controller.currentinde == 1
//                           ? ColorConstant.teal600
//                           : Colors.grey.shade400),
//                   label: ''),
//               BottomNavigationBarItem(
//                   icon: SvgPicture.asset(AppAssets.saved,
//                       color: controller.currentinde == 2
//                           ? ColorConstant.teal600
//                           : Colors.grey.shade400),
//                   label: ''),
//             ],
//             currentIndex: controller.currentinde,
//             showSelectedLabels: true,
//             selectedItemColor: ColorConstant.teal600,
//             unselectedItemColor: ColorConstant.gray600,
//             onTap: (_) => controller.changeIndex(_)));
//   }
// }

// List<Widget> dashBoardWidget = <Widget>[
//   const HomeScreen(),
//   const Profile(),
//   const Notification(),
// ];
