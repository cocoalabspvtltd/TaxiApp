import 'package:new_app/constants/icons.dart';
import 'package:new_app/controller/auth/auth_controller.dart';
import 'package:new_app/utils/exports.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var controller = context.watch<SignUpController>();
    var controller = Get.find<AuthController>();
    // var signCtr = context.watch<LoginController>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Formfield(
            label: 'Name',
            icon: const Icon(Icons.person_outline, color: violetcolor),
            st: 'Enter full name',
            context: context,
            readonly: false,
            showIcon: false,
            controller: controller.signUpNameCtr,
            ontap: () {}),
        const SizedBox(height: 10),
        Formfield(
            label: 'Nick Name',
            icon: const Icon(Icons.person_outline, color: violetcolor),
            st: 'Enter nick name',
            context: context,
            readonly: false,
            showIcon: true,
            controller: controller.signUpNicknameCtr,
            ontap: () => null),
        const SizedBox(height: 10),
        Formfield(
            label: 'Gender',
            icon: const Icon(Icons.person_outline, color: violetcolor),
            st: 'Select Gender',
            context: context,
            readonly: false,
            showIcon: true,
            controller: controller.signUpGenderCtr,
            ontap: () => null),
        // const SizedBox(height: 10),
        // formfield(
        //     label: 'DOB',
        //     icon: const Icon(Icons.email_outlined, color: violetcolor),
        //     st: 'DD/MM/YY',
        //     context: context,
        //     readonly: false,
        //     showIcon: true,
        //     controller: controller.dob,
        //     ontap: () => null),
        const SizedBox(height: 10),
        Formfield(
            label: 'Email id',
            icon: const Icon(Icons.email_outlined, color: violetcolor),
            st: 'Enter mail id',
            context: context,
            readonly: false,
            showIcon: true,
            controller: controller.signUpEmailCtr,
            ontap: () => null),
        const SizedBox(height: 10),
        Formfield(
            label: 'Mobile No',
            icon: const Icon(Icons.phone_android_outlined, color: violetcolor),
            st: 'Enter Mobile No',
            context: context,
            readonly: false,
            inputFormaters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly
            ],
            showIcon: true,
            controller: controller.signUpMobileCtr,
            ontap: () => null),
        const SizedBox(height: 10),
        GetBuilder<AuthController>(
          id: 'signUpShowPassword',
          builder: (_) {
            return Formfield(
                label: 'Password',
                icon: const Icon(Icons.phone_android_outlined,
                    color: violetcolor),
                st: 'Enter password',
                context: context,
                readonly: false,
                obsure: controller.signUpShowPassword,
                showIcon: true,
                controller: controller.signUpPasswordCtr,
                ontap: () => controller.signUpFunShowPassword());
          },
        ),
        const SizedBox(height: 10),
        GetBuilder<AuthController>(
          id: 'signUpShowConPassword',
          builder: (_) {
            return Formfield(
                label: 'Confirm Password',
                icon: const Icon(Icons.phone_android_outlined,
                    color: violetcolor),
                st: 'Enter confirm password',
                context: context,
                readonly: false,
                obsure: controller.signUpShowConPassword,
                showIcon: true,
                controller: controller.signUpConfirmpasswordCtr,
                ontap: () => controller.signUpFunShowConPassword());
          },
        ),
        const SizedBox(height: 10),
        GetBuilder<AuthController>(
          id: 'signUpShowConPassword',
          builder: (_) {
            return Formfield(
                label: 'Referral Code',
                icon: referral,
                st: 'Enter referral code ',
                context: context,
                readonly: false,
                showIcon: true,
                controller: controller.signUpReferralCodeCtr,
                ontap: () => null);
          },
        ),
        const SizedBox(height: 10),
        const SizedBox(height: 30),
        GetBuilder<AuthController>(
            id: 'signUpPage',
            builder: (ctr) {
              return customButton(
                  color: violetcolor,
                  height: true,
                  context: context,
                  txt: 'Continue',
                  loading: ctr.signUpLoader,
                  onpressed: () => controller.apiSignUp());
            }), //controller.registerApi(signCtr)),
        const SizedBox(height: 20),
        const Or(),
        const SizedBox(height: 20),
        const SocialIconsLoginComponents()
      ],
    );
  }
}
