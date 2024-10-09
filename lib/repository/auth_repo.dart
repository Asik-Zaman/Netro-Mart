import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netro_mart_official/Utils/constants.dart';
import 'package:netro_mart_official/models/api_response.dart';
import 'package:netro_mart_official/models/user_login_model.dart';
import 'package:netro_mart_official/models/user_registration_post_model.dart';
import 'package:netro_mart_official/remote/dio/dio_client.dart';
import 'package:netro_mart_official/remote/exception/api_error_handler.dart';

class AuthRepo {
  final DioClient? dioClient;
  AuthRepo({
    required this.dioClient,
    // required this.sharedPreferences
  });
  Future<ApiResponse> UserRegistration(
      UserRegistrationModel userRegistrationModel) async {
    log('UserInfoData--->>>${userRegistrationModel.toJson()}');
    try {
      Response response = await dioClient!.post(
        '${AppConstants.baseUrl}${AppConstants.userRegistrationUri}',
        data: userRegistrationModel.toJson(),
      );
      log('Registration Response--->>>>>${response}');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }

  Future<ApiResponse> UserLogin(UserLoginModel userLoginModel) async {
    log('UserInfoData--->>>${userLoginModel.toJson()}');
    try {
      Response response = await dioClient!.post(
        '${AppConstants.baseUrl}${AppConstants.userLoginUri}',
        data: userLoginModel.toJson(),
      );
      log('Login Response--->>>>>${response}');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
