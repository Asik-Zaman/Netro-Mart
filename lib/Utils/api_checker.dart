import 'package:flutter/foundation.dart';
import 'package:netro_mart_official/Utils/custom_snackbar.dart';
import 'package:netro_mart_official/main.dart';
import 'package:netro_mart_official/models/api_response.dart';

class ApiChecker {
  static void checkApi(ApiResponse apiResponse) {
    if (apiResponse.error.toString() ==
        'Failed to load data - status code: 401') {
    } else {
      String? errorMessage;
      if (apiResponse.error is String) {
        // log('ASIISKKSKS--->>${apiResponse.error}');
        errorMessage = apiResponse.error.toString();
      } else {
        errorMessage = apiResponse.error.errors[0].message;
      }
      if (kDebugMode) {
        print(errorMessage);
      }
      showCustomSnackBar(errorMessage, Get.context!);
    }
  }
}
