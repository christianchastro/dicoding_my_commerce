import 'package:e_commerce/shared/enum/enum_category_product.dart';
import 'package:e_commerce/shared/helpers/my_converter.dart';
import 'package:e_commerce/shared/model/product_color_model.dart';
import 'package:e_commerce/shared/model/product_image_model.dart';
import 'package:e_commerce/shared/model/product_size_model.dart';
import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String name;
  final ProductImageModel productImageModel;
  final int price;
  final List<EnumCategoryProduct> category;
  bool isFavorite;
  List<ProductColorModel> listColor;
  List<ProductSizeModel> listSize;
  String? description;
  ProductModel({
    required this.id,
    required this.name,
    required this.productImageModel,
    required this.price,
    required this.category,
    this.isFavorite = false,
    required this.listColor,
    required this.listSize,
    this.description,
  });

  String get convertedPrice {
    if (price > 0) {
      return MyConverter.rupiah(price);
    }
    return "";
  }

  void chooseColor(ProductColorModel color) {
    if (!color.isSelected) {
      listColor.where((element) => element.isSelected).forEach((element) {
        element.isSelected = false;
      });
      color.isSelected = true;
    }
  }

  void chooseSize(ProductSizeModel size) {
    if (!size.isSelected) {
      listSize.where((element) => element.isSelected).forEach((element) {
        element.isSelected = false;
      });
      size.isSelected = true;
    }
  }

  ProductColorModel? get selectedColor {
    if (listColor.any((element) => element.isSelected)) {
      return listColor.firstWhere(
        (element) => element.isSelected,
        orElse: (() => ProductColorModel(name: "", color: Colors.transparent)),
      );
    }
    return null;
  }

  ProductSizeModel? get selectedSize {
    if (listSize.any((element) => element.isSelected)) {
      return listSize.firstWhere(
        (element) => element.isSelected,
        orElse: () => ProductSizeModel(size: ""),
      );
    }
    return null;
  }

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
