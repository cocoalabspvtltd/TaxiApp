import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:new_app/constants/constant.dart';
import 'package:new_app/constants/endpoints.dart';
import 'package:new_app/core/failure/main_failure.dart';
import 'package:new_app/core/injection/injectable.dart';
import 'package:new_app/infrastructure/authApis/auth_repository.dart';
import 'package:new_app/model/auth/login_base_model/login_base_model.dart';
import 'package:new_app/model/errors/error_model/error_model.dart';
import 'package:new_app/model/register/register_model/register_model.dart';
import 'package:new_app/services/dio_service.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepoImpl implements IAuthRepository {
  @override
  Future<Either<Either<MainFailure, ErrorModel>, LoginBaseModel>> login(
      {required String email, required String password}) async {
    return await getIt<DioServices>()
        .request(
            url: '$baseUrl/$apiLogin',
            method: 'POST',
            data: {"email": email, "password": password},
            auth: true)
        .then((res) => res.fold(
            (l) => Left(l), (r) => Right(LoginBaseModel.fromJson(r.data))));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> register(
      RegisterModel model) async {
    return await getIt<DioServices>()
        .request(
            url: '$baseUrl/$apiRegister',
            method: 'POST',
            data: model.toJson(),
            auth: true)
        .then((res) => res.fold((l) => Left(l), (r) => Right('success')));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> forgotPassword(
      {required String email}) async {
    return await getIt<DioServices>().request(
      url: '$baseUrl/$apiForgotPassword',
      method: 'POST',
      auth: false,
      data: {"email": email},
    ).then((res) => res.fold((l) => Left(l), (r) => Right(r.data['message'])));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> validateOtp(
      {required String email, required String otp}) async {
    return await getIt<DioServices>()
        .request(
          url: '$baseUrl/$apiVerifyOTP',
          method: 'POST',
          data: {"email": email, "otp": otp},
          auth: true,
        )
        .then(
            (res) => res.fold((l) => Left(l), (r) => Right(r.data['message'])));
  }

  @override
  Future<Either<Either<MainFailure, ErrorModel>, String>> resetPassword(
      {required String password, required String confirmPassword}) async {
    return await getIt<DioServices>().request(
      url: '$baseUrl/$apiResetPassword',
      method: 'POST',
      data: {"password": password, "password_confirmation": confirmPassword},
    ).then((res) => res.fold((l) => Left(l), (r) => Right(r.data['message'])));
  }
}
