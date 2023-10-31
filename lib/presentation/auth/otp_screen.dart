import 'package:new_app/utils/exports.dart';
import 'package:new_app/controller/auth/auth_controller.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String _otp = '';
    return Scaffold(
        appBar: appBars(text: ''),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(logo, height: 60),
              const SizedBox(height: 50),
              Text('Verification', style: s1),
              const SizedBox(height: 20),
              const Text(
                'Enter the Verification Number',
                style: TextStyle(color: violetcolor),
              ),
              const SizedBox(height: 10),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Center(
                    child: PinCodeTextField(
                  onChanged: ((value) {
                    _otp = value;
                  }),
                  appContext: context,
                  length: 6,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    inactiveColor: violetcolor,
                    selectedColor: violetcolor,
                    activeColor: violetcolor,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    activeFillColor: whiteColor,
                  ),
                  cursorColor: violetcolor,
                  animationDuration: const Duration(milliseconds: 300),
                  keyboardType: TextInputType.number,
                  onCompleted: (v) {},
                )),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive the code? ", style: s3),
                  TextButton(
                      onPressed: () => ("OTP resend!!"),
                      child: Text("Resend", style: s6))
                ],
              ),
              const SizedBox(height: 40),
              GetBuilder<AuthController>(
                  id: 'otpValidateLoader',
                  builder: (_) {
                    return customButton(
                      color: violetcolor,
                      height: true,
                      context: context,
                      txt: 'Continue',
                      onpressed: () => _.apiVerifyOtp(_otp),
                    );
                  })
            ],
          ),
        ));
  }
}
