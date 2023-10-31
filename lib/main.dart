//    _____   _____    _  __    ____        ______       __   ___
//   / ____| |  __ \  | |/ /   |___ \      |____  |     /_ | |__ \
//  | (___   | |  | | | ' /      __) |         / /       | |    ) |
//   \___ \  | |  | | |  <      |__ <         / /        | |   / /
//   ____) | | |__| | | . \     ___) |  _    / /     _   | |  / /_
//  |_____/  |_____/  |_|\_\   |____/  (_)  /_/     (_)  |_| |____|

//    _____   ______   _______  __   __
//   / ____| |  ____| |__   __| \ \ / /
//  | |  __  | |__       | |     \ V /
//  | | |_ | |  __|      | |      > <
//  | |__| | | |____     | |     / . \
//   \_____| |______|    |_|    /_/ \_\

import 'package:fluttertoast/fluttertoast.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/core/bindings/mainBinding.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/presentation/auth/auth_main.dart';
import 'package:new_app/presentation/home/home_screen.dart';
import 'package:new_app/services/shared_pref.dart';
import 'package:new_app/utils/exports.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependancies();
  await getIt<SharedPref>().init();
  Get.put(getIt<AuthController>());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    GetBuilder<AuthController>(
      id: "isLoggedIn",
      builder: (ctr) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialBinding: MainBindings(),
          defaultTransition: Transition.cupertino,
          builder: FToastBuilder(),
          theme: ThemeData(
            // backgroundColor: violetcolor,
            fontFamily: 'Montserrat',
          ),
          home: ctr.isLoggedIn ? HomeScreen() : const AuthMainScreen(),
        );
      },
    ),
  );
}
