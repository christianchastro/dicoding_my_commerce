import 'package:e_commerce/shared/model/product_color_model.dart';
import 'package:flutter/material.dart';

class MyChoiceColor extends StatelessWidget {
  final ProductColorModel color;
  final void Function(bool)? onSelected;
  const MyChoiceColor({
    super.key,
    required this.color,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onSelected != null) {
          onSelected!(!color.isSelected);
        }
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: color.color,
          border: !color.isSelected
              ? null
              : Border.all(
                  width: 4,
                  color: Colors.blueGrey,
                ),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
