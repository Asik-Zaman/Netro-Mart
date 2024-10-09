import 'package:flutter/material.dart';
import 'package:netro_mart_official/Utils/custom_snackbar.dart';
import 'package:netro_mart_official/main.dart';
import 'package:netro_mart_official/models/api_response.dart';
import 'package:netro_mart_official/models/user_login_model.dart';
import 'package:netro_mart_official/models/user_registration_post_model.dart';
import 'package:netro_mart_official/repository/auth_repo.dart';

class AuthProvider with ChangeNotifier {
  final AuthRepo? authRepo;
  AuthProvider({required this.authRepo});

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ApiResponse> userRegistration(
      BuildContext context, UserRegistrationModel userRegistrationModel) async {
    _isLoading = true;
    notifyListeners();
    ApiResponse apiResponse =
        await authRepo!.UserRegistration(userRegistrationModel);
    _isLoading = false;
    notifyListeners();
    if (apiResponse.response != null &&
        (apiResponse.response!.statusCode == 200 ||
            apiResponse.response!.statusCode == 201)) {
      Map map = apiResponse.response!.data;
      showCustomSnackBar(
          '${map['message']}', isError: false, isToaster: true, context);
      // String token = map["token"];
      // await authRepo!.saveUserToken(token);
      // setCurrentLanguage(
      //     Provider.of<LocalizationProvider>(Get.context!, listen: false)
      //             .getCurrentLanguage() ??
      //         'en');
    } else {
      showCustomSnackBar('', context);
    }
    notifyListeners();
    return apiResponse;
  }

  Future<ApiResponse> userLogin(
      BuildContext context, UserLoginModel userLoginModel) async {
    _isLoading = true;
    notifyListeners();
    ApiResponse apiResponse =
        await authRepo!.UserLogin(userLoginModel);
    _isLoading = false;
    notifyListeners();
    if (apiResponse.response != null &&
        (apiResponse.response!.statusCode == 200 ||
            apiResponse.response!.statusCode == 201)) {
      Map map = apiResponse.response!.data;
      showCustomSnackBar(
          '${map['message']}', isError: false, isToaster: true, context);
      // String token = map["token"];
      // await authRepo!.saveUserToken(token);
   
    } else {
      showCustomSnackBar('', context);
    }
    notifyListeners();
    return apiResponse;
  }
}
