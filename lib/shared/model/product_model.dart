import 'package:e_commerce/shared/enum/enum_category_product.dart';
import 'package:e_commerce/shared/model/product_color_model.dart';
import 'package:e_commerce/shared/model/product_image_model.dart';
import 'package:e_commerce/shared/model/product_size_model.dart';

class ProductModel {
  final int id;
  final String name;
  final ProductImageModel productImageModel;
  final int price;
  final EnumCategoryProduct category;
  bool isFavorite;
  ProductColorModel? selectedColor;
  List<ProductColorModel> listColor;
  ProductSizeModel? selectedSize;
  List<ProductSizeModel> listSize;
  ProductModel({
    required this.id,
    required this.name,
    required this.productImageModel,
    required this.price,
    required this.category,
    this.isFavorite = false,
    this.selectedColor,
    required this.listColor,
    this.selectedSize,
    required this.listSize,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is ProductModel && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
