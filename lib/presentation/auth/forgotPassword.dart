import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/presentation/auth/auth_main.dart';
import 'package:new_app/utils/exports.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AuthController>();
    return WillPopScope(
      onWillPop: () async {
        Get.to(() => const AuthMainScreen());
        return false;
      },
      child: Scaffold(
          appBar: appBars(
            text: '',
            onpressed: () => Get.to(() => const AuthMainScreen()),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                Image.asset(logo, height: 60),
                const SizedBox(height: 50),
                Text('Forgot Password !', style: s1),
                const SizedBox(height: 20),
                Text(
                    'Select one of the options given below \nto reset your password',
                    style: s6),
                const SizedBox(height: 30),
                Formfield(
                    label: 'Email Id',
                    st: 'Email Address',
                    context: context,
                    readonly: false,
                    obsure: false,
                    showIcon: false,
                    controller: controller.forgotEmailCtr,
                    ontap: () {}),
                const SizedBox(height: 20),
                const Or(),
                const SizedBox(height: 10),
                Formfield(
                    label: 'Phone Number',
                    st: 'Phone Number',
                    context: context,
                    readonly: false,
                    obsure: false,
                    showIcon: false,
                    controller: controller.forgotPhoneCtr,
                    ontap: () {}),
                const SizedBox(height: 40),
                GetBuilder<AuthController>(
                    id: 'forgotLoader',
                    builder: (_) {
                      return customButton(
                          color: violetcolor,
                          height: true,
                          context: context,
                          txt: 'Continue',
                          loading: _.forgotPasswordLoader,
                          onpressed: () => controller.apiForgotPassword());
                    }),
              ],
            ),
          )),
    );
  }
}
