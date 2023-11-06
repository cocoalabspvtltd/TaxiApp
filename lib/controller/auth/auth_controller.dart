import 'package:injectable/injectable.dart';
import 'package:new_app/controller/auth/auth_initialState.dart';
import 'package:new_app/infrastructure/authApis/auth_repository.dart';
import 'package:new_app/model/register/register_model/register_model.dart';
import 'package:new_app/presentation/auth/auth_main.dart';
import 'package:new_app/presentation/auth/otp_screen.dart';
import 'package:new_app/presentation/auth/resetPassword.dart';
import 'package:new_app/presentation/auth/userType.dart';
import 'package:new_app/presentation/home/home_screen.dart';
import 'package:new_app/services/dio_service.dart';
import 'package:new_app/utils/exports.dart';
import 'package:new_app/widgets/ww_showToast.dart';

import '../../core/injection/injectable.dart';
import '../../services/shared_pref.dart';

@Injectable()
class AuthController extends GetxController
    with
        LoginInitialState,
        SignUpInitialState,
        ForgotPassInitialState,
        ResetPassInitialState,
        OtpScreenInitialState {
  //
  final IAuthRepository iauthRepoImpl;

  AuthController(this.iauthRepoImpl);

  @override
  void onInit() async {
    String? token = await getIt<SharedPref>().getStringValue(key: "token");
    if (token != null) {
      getIt<DioServices>().options.headers["Authorization"] = "Bearer $token";
      isLogeddInFun();
    }

    referralCode =
        await getIt<SharedPref>().getStringValue(key: "referral_code");
    userName =
    await getIt<SharedPref>().getStringValue(key: "name");
    userEmail =
    await getIt<SharedPref>().getStringValue(key: "email");
    super.onInit();
  }

  @override
  void onClose() {
    logEmailCtr.clear();
    logPasswordCtr.clear();

    signUpTextClear();
  }

  void isLoginPageFun() {
    isLoginPage = !isLoginPage;
    update(['LoginPageSwitch']);
  }

  void isLogeddInFun() {
    isLoggedIn = !isLoggedIn;
    update(['isLoggedIn']);
  }

  void signUpTextClear() {
    signUpNameCtr.clear();
    signUpNicknameCtr.clear();
    signUpGenderCtr.clear();
    signUpConfirmpasswordCtr.clear();
    signUpEmailCtr.clear();
    signUpMobileCtr.clear();
    signUpPasswordCtr.clear();
    signUpConfirmpasswordCtr.clear();
  }

  void logFunShowPassword() {
    logShowPassword = !logShowPassword;
    update(['logShowPassword']);
  }

  void signUpFunShowPassword() {
    signUpShowPassword = !signUpShowPassword;
    update(['signUpShowPassword']);
  }

  void signUpFunShowConPassword() {
    signUpShowConPassword = !signUpShowConPassword;
    update(['signUpShowConPassword']);
  }

  void apiLogin() async {
    loginLoader = true;
    update(['loginPage']);
    await iauthRepoImpl
        .login(email: logEmailCtr.text, password: logPasswordCtr.text)
        .then((res) => res.fold((l) {
              l.fold((l) => loginError = l, (r) => null);
              wwShowToast("Incorrect email or password",
                  status: Status.failure);
            }, (r) {
              loginUserData = r;
              loginStatus = 'success';
              logEmailCtr.clear();
              logPasswordCtr.clear();
              Get.to(HomeScreen());
            }));
    loginLoader = false;
    update(['loginPage']);
  }

  void apiSignUp() async {
    String registerAppValidation() {
      if (signUpNameCtr.text == '') {
        return 'Name field missing';
      } else if (signUpNicknameCtr.text == '') {
        return 'Nickname field missing';
      } else if (signUpGenderCtr.text == '') {
        return 'Gender field missing';
      } else if (signUpEmailCtr.text == '') {
        return 'Email field missing';
      } else if (signUpMobileCtr.text == '') {
        return 'Mobile field missing';
      } else if (signUpPasswordCtr.text == '') {
        return 'Password field missing';
      } else if (signUpConfirmpasswordCtr.text == '') {
        return 'Confirm Password field missing';
      } else {
        if (signUpPasswordCtr.text == signUpConfirmpasswordCtr.text) {
          return 'success';
        } else {
          return 'password mismatch';
        }
      }
    }

    if (registerAppValidation() != 'success') {
      wwShowToast(registerAppValidation(), status: Status.failure);
    } else {
      signUpLoader = true;
      update(['signUpPage']);

      await iauthRepoImpl
          .register(
            RegisterModel(
              name: signUpNameCtr.text,
              email: signUpEmailCtr.text,
              nickName: signUpNicknameCtr.text,
              password: signUpPasswordCtr.text,
              passwordConfirmation: signUpConfirmpasswordCtr.text,
              phone: int.parse(signUpMobileCtr.text),
              gender: signUpGenderCtr.text,
              referralCode: signUpReferralCodeCtr.text,
            ),
          )
          .then((res) => res.fold((l) {
                l.fold((l) => signupError = l, (r) {
                  if (r.errors?.name?.first != null) {
                    wwShowToast(r.errors!.name!.first, status: Status.failure);
                  } else if (r.errors?.nickName?.first != null) {
                    wwShowToast(r.errors!.nickName!.first,
                        status: Status.failure);
                  } else if (r.errors?.email?.first != null) {
                    wwShowToast(r.errors!.email!.first, status: Status.failure);
                  } else if (r.errors?.phone?.first != null) {
                    wwShowToast(r.errors!.phone!.first, status: Status.failure);
                  } else if (r.errors?.password?.first != null) {
                    wwShowToast(r.errors!.password!.first,
                        status: Status.failure);
                  } else if (r.errors?.referralCode?.first != null) {
                    wwShowToast(r.errors!.referralCode!.first,
                        status: Status.failure);
                  } else {
                    wwShowToast('something went wrong', status: Status.failure);
                  }
                });
              }, (r) {
                signUpStatus = 'success';
                Get.to(() => UsersDetailScreen());

                signUpTextClear();
              }));

      signUpLoader = false;
      update(['signUpPage']);
    }
  }

  void apiForgotPassword() async {
    forgotPasswordLoader = true;
    update(['forgotLoader']);

    await iauthRepoImpl.forgotPassword(email: forgotEmailCtr.text).then(
        (value) => value.fold(
                (l) => l.fold(
                        (l) => wwShowToast('Something went wrong',
                            status: Status.failure), (r) {
                      if (r.errors?.email?.first != null) {
                        wwShowToast(r.errors!.email!.first,
                            status: Status.failure);
                      }
                    }), (r) {
              Get.to(() => VerificationScreen());

              wwShowToast(r, status: Status.success);
            }));

    forgotPasswordLoader = false;
    update(['forgotLoader']);
  }

  void apiVerifyOtp(String otp) async {
    if (otp.isNotEmpty && otp.length == 6) {
      otpValidateLoader = true;
      update(['otpValidateLoader']);

      await iauthRepoImpl
          .validateOtp(email: forgotEmailCtr.text, otp: otp)
          .then((value) => value.fold(
                  (l) => l.fold(
                          (l) => wwShowToast('Something went wrong',
                              status: Status.failure), (r) {
                        if (r.errors?.email?.first != null) {
                          wwShowToast(r.errors!.email!.first,
                              status: Status.failure);
                        } else if (r.errors?.otp?.first != null) {
                          wwShowToast(r.errors!.otp!.first,
                              status: Status.failure);
                        }
                      }), (r) {
                Get.off(() => ResetPasswordScreen());

                resetConPassCtr.clear();
                resetConPassCtr.clear();
                wwShowToast(r, status: Status.success);
              }));

      otpValidateLoader = false;
      update(['otpValidateLoader']);
    } else if (otp.isEmpty) {
      wwShowToast('Enter otp', status: Status.failure);
    } else {
      wwShowToast('Enter valid otp', status: Status.failure);
    }
  }

  void apiResetPassword() async {
    resetPassLoader = true;
    update(['resetPassLoader']);

    await iauthRepoImpl
        .resetPassword(
            password: resetPassCtr.text, confirmPassword: resetConPassCtr.text)
        .then((value) => value.fold(
                (l) => l.fold(
                        (l) => wwShowToast('Something went wrong',
                            status: Status.failure), (r) {
                      if (r.errors?.password?.first != null) {
                        wwShowToast(r.errors!.password!.first,
                            status: Status.failure);
                      }
                    }), (r) {
              wwShowToast('Success', status: Status.success);
              resetPassCtr.clear();
              forgotEmailCtr.clear();
              forgotPhoneCtr.clear();
              resetConPassCtr.clear();
              Get.off(() => AuthMainScreen());
            }));

    resetPassLoader = false;
    update(['resetPassLoader']);
  }
}
