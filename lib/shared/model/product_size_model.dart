class ProductSizeModel {
  final String size;
  bool isSelected;
  ProductSizeModel({required this.size, this.isSelected = false});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is ProductSizeModel && other.size == size;
  }

  @override
  int get hashCode => size.hashCode;
}
