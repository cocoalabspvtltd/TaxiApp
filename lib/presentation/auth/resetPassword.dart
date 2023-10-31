import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/utils/exports.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<AuthController>();

    return Scaffold(
        appBar: appBars(text: ''),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(logo, height: 60),
              const SizedBox(height: 40),
              Text('New Password', style: s1),
              const SizedBox(height: 50),
              Formfield(
                  label: 'Password',
                  st: 'Password',
                  context: context,
                  readonly: false,
                  // obsure: controller.showpassword,
                  showIcon: true,
                  controller: controller.resetPassCtr,
                  ontap: () => null),
              const SizedBox(height: 10),
              const SizedBox(height: 10),
              Formfield(
                  label: 'Confirm Password',
                  st: 'Confirm Password',
                  context: context,
                  readonly: false,
                  showIcon: true,
                  controller: controller.resetConPassCtr,
                  ontap: () => null),
              const SizedBox(height: 50),
              GetBuilder<AuthController>(
                  id: 'resetPassLoader',
                  builder: (_) {
                    return customButton(
                        txt: 'Continue',
                        context: context,
                        height: true,
                        loading: _.resetPassLoader,
                        color: violetcolor,
                        onpressed: () => _.apiResetPassword());
                  })
            ],
          ),
        ));
  }
}
