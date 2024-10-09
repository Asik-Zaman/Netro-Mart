import 'package:flutter/material.dart';
import 'package:netro_mart_official/Utils/api_checker.dart';
import 'package:netro_mart_official/models/api_response.dart';
import 'package:netro_mart_official/repository/category_repo.dart';

import '../models/category_response_model.dart';

class CategoryProvider with ChangeNotifier {
  final CategoryRepo? categoryRepo;
  CategoryProvider({required this.categoryRepo});

  List<Category>? _categoryList;
  List<Category>? get categoryList => _categoryList;
  String? _categoryBaseUrl;
  String? get categoryBaseUrl => _categoryBaseUrl;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<ApiResponse> getCategoryList() async {
    ApiResponse apiResponse = await categoryRepo!.getCategory();
    if (apiResponse.response != null &&
            apiResponse.response!.statusCode == 200 ||
        apiResponse.response!.statusCode == 201) {
      _categoryList = [];
      _categoryBaseUrl = '';
      apiResponse.response!.data['data'].forEach(
          (category) => _categoryList!.add(Category.fromJson(category)));
      _categoryBaseUrl = apiResponse.response!.data['imageUrlPath'];
      notifyListeners();
    } else {
      ApiChecker.checkApi(apiResponse);
    }
    notifyListeners();
    return apiResponse;
  }
}
