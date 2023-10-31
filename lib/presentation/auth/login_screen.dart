import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/presentation/auth/forgotPassword.dart';
import 'package:new_app/utils/exports.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller = context.watch<LoginController>();

    var controller = Get.find<AuthController>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Loginformfield(
            icon: const Icon(Icons.person_outline, color: violetcolor),
            st: 'Email id',
            context: context,
            readonly: false,
            obsure: false,
            showIcon: false,
            controller: controller.logEmailCtr,
            ontap: () {}),
        const SizedBox(height: 30),
        GetBuilder<AuthController>(
          id: 'logShowPassword',
          builder: (_) {
            return Loginformfield(
                icon: const Icon(Icons.lock_open_outlined, color: violetcolor),
                st: 'Password',
                context: context,
                readonly: false,
                obsure: controller.logShowPassword,
                showIcon: true,
                controller: controller.logPasswordCtr,
                ontap: () => controller.logFunShowPassword());
          },
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () => Get.to(() => const ForgotPassword()),
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('Forgot Password?', style: s4)],
            ),
          ),
        ),
        const SizedBox(height: 30),
        GetBuilder<AuthController>(
            id: 'loginPage',
            builder: (ctr) {
              return customButton(
                  color: violetcolor,
                  height: true,
                  loading: ctr.loginLoader,
                  context: context,
                  txt: 'Login Now',
                  onpressed: () => controller.apiLogin());
            }),
        const SizedBox(height: 20),
        const Or(),
        const SizedBox(height: 20),
        const SocialIconsLoginComponents()
      ],
    );
  }
}
