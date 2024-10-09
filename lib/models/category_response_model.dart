class CategoryResponseModel {
  bool? status;
  String? message;
  int? count;
  String? imageUrlPath;
  List<Category>? data;

  CategoryResponseModel({
    this.status,
    this.message,
    this.count,
    this.imageUrlPath,
    this.data,
  });

  // Factory constructor to create a CategoryResponseModel from JSON
  factory CategoryResponseModel.fromJson(Map<String, dynamic> json) {
    return CategoryResponseModel(
      status: json['status'],
      message: json['message'],
      count: json['count'],
      imageUrlPath: json['imageUrlPath'],
      data: json['data'] != null
          ? List<Category>.from(json['data'].map((item) => Category.fromJson(item)))
          : null,
    );
  }

  // Method to convert CategoryResponseModel instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
      'count': count,
      'imageUrlPath': imageUrlPath,
      'data': data != null
          ? data!.map((category) => category.toJson()).toList()
          : null,
    };
  }
}

class Category {
  int? id;
  String? categoryName;
  String? categoryImage;
  int? status;

  Category({
    this.id,
    this.categoryName,
    this.categoryImage,
    this.status,
  });

  // Factory constructor to create a Category instance from JSON
  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      categoryName: json['category_name'],
      categoryImage: json['category_image'],
      status: json['status'],
    );
  }

  // Method to convert Category instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'category_name': categoryName,
      'category_image': categoryImage,
      'status': status,
    };
  }
}
