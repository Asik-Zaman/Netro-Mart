import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:netro_mart_official/Utils/constants.dart';
import 'package:netro_mart_official/models/api_response.dart';
import 'package:netro_mart_official/models/user_login_model.dart';
import 'package:netro_mart_official/models/user_registration_post_model.dart';
import 'package:netro_mart_official/remote/dio/dio_client.dart';
import 'package:netro_mart_official/remote/exception/api_error_handler.dart';

class CategoryRepo {
  final DioClient? dioClient;
  CategoryRepo({
    required this.dioClient,
    // required this.sharedPreferences
  });
  Future<ApiResponse> getCategory() async {
    try {
      Response response = await dioClient!.get(
        '${AppConstants.baseUrl}${AppConstants.categoryUri}',
      );
      log('Category Response--->>>>>${response}');
      return ApiResponse.withSuccess(response);
    } catch (e) {
      return ApiResponse.withError(ApiErrorHandler.getMessage(e));
    }
  }
}
