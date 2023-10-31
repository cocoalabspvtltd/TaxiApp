import 'package:dartz/dartz.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/model/auth/login_base_model/login_base_model.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/register/register_model/register_model.dart';

abstract class IAuthRepository {
  Future<Either<Either<MainFailure, ErrorModel>, LoginBaseModel>> login(
      {required String email, required String password});

  Future<Either<Either<MainFailure, ErrorModel>, String>> register(
      RegisterModel model);

  Future<Either<Either<MainFailure, ErrorModel>, String>> forgotPassword(
      {required String email});

  Future<Either<Either<MainFailure, ErrorModel>, String>> validateOtp(
      {required String email, required String otp});

  Future<Either<Either<MainFailure, ErrorModel>, String>> resetPassword(
      {required String password, required String confirmPassword});
}
