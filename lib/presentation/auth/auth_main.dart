import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/presentation/auth/login_screen.dart';
import 'package:new_app/presentation/auth/signup_screen.dart';
import 'package:new_app/presentation/auth/widgets/auth_widgets.dart';
import 'package:new_app/utils/exports.dart';

class AuthMainScreen extends StatelessWidget {
  const AuthMainScreen({super.key});
  static Future<void> back({bool? animated}) async {
    await SystemChannels.platform
        .invokeMethod<void>('SystemNavigator.pop', animated);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        back();
        return false;
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: GetBuilder<AuthController>(
            id: 'LoginPageSwitch',
            builder: (ctr) {
              return Column(
                children: [
                  SizedBox(height: height(context, 0.1)),
                  Image.asset(logo, height: 120, width: 120),
                  const SizedBox(height: 10),
                  Text(ctr.isLoginPage ? 'Welcome back,' : 'Register Now',
                      style: s1),
                  const SizedBox(height: 20),
                  ColoredBox(
                      color: whiteColor,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            tab("LogIn", ctr.isLoginPage,
                                () => ctr.isLoginPageFun()),
                            tab("Register", !ctr.isLoginPage,
                                () => ctr.isLoginPageFun()),
                          ])),
                  const SizedBox(height: 30),
                  SizedBox(
                      child: ctr.isLoginPage
                          ? const LoginScreen()
                          : const SignUpScreen())
                ],
              );
            }),
      )),
    );
  }
}
