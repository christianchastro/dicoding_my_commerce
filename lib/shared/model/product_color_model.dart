import 'package:flutter/painting.dart';

class ProductColorModel {
  final String name;
  final Color color;
  bool isSelected;
  ProductColorModel({
    required this.name,
    required this.color,
    this.isSelected = false,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is ProductColorModel && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}
