import 'package:flutter/material.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/auth/login_base_model/login_base_model.dart';

mixin LoginInitialState {
  bool isLoginPage = true;
  bool isLoggedIn = false;
  MainFailure? loginError;
  String loginStatus = '';
  bool loginLoader = false;
  bool logShowPassword = false;
  LoginBaseModel? loginUserData;

  TextEditingController logEmailCtr = TextEditingController();
  TextEditingController logPasswordCtr = TextEditingController();

  String? referralCode;
  String? userName;
  String? userEmail;
}

mixin SignUpInitialState {
  bool hotelShowCheckBox = true;
  bool vehicleShowCheckBox = true;
  bool restaurantShowCheckBox = true;

  bool hotelApiCall = false;
  bool restaurantApiCall = false;
  bool vehicleApiCall = false;

  bool? signUpvehicleError;
  bool? signUpHotelError;
  bool? signUpRestaurantError;
  bool signUpTravellerError = false;
  bool userTypeLoader = false;

  MainFailure? signupError;
  String signUpStatus = '';
  bool signUpLoader = false;
  bool signUpShowPassword = false;
  bool signUpShowConPassword = false;

  TextEditingController signUpNameCtr = TextEditingController();
  TextEditingController signUpNicknameCtr = TextEditingController();
  TextEditingController signUpGenderCtr = TextEditingController();
  TextEditingController signUpEmailCtr = TextEditingController();
  TextEditingController signUpMobileCtr = TextEditingController();
  TextEditingController signUpPasswordCtr = TextEditingController();
  TextEditingController signUpConfirmpasswordCtr = TextEditingController();
  TextEditingController signUpReferralCodeCtr = TextEditingController();
}

mixin ForgotPassInitialState {
  bool forgotPasswordLoader = false;
  TextEditingController forgotEmailCtr = TextEditingController();
  TextEditingController forgotPhoneCtr = TextEditingController();
}

mixin ResetPassInitialState {
  bool resetPassLoader = false;
  TextEditingController resetPassCtr = TextEditingController();
  TextEditingController resetConPassCtr = TextEditingController();
}

mixin OtpScreenInitialState {
  bool otpValidateLoader = false;
  // TextEditingController
}
