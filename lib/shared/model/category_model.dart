import 'package:e_commerce/shared/enum/enum_category_product.dart';

class CategoryModel {
  final EnumCategoryProduct category;
  bool isSelected;
  CategoryModel({
    required this.category,
    this.isSelected = false,
  });
}
