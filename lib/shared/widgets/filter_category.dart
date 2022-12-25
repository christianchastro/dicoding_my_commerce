import 'package:e_commerce/shared/model/category_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  final CategoryModel category;
  final void Function(bool)? onSelected;
  const FilterCategory({
    super.key,
    required this.category,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(category.category.text),
      labelStyle: MyTextStyle.subTitle(
        color: !category.isSelected ? Colors.black : Colors.white,
      ),
      selected: category.isSelected,
      onSelected: onSelected,
      selectedColor: Colors.blueGrey.shade700,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
            color: !category.isSelected
                ? Colors.blueGrey.shade200
                : Colors.blueGrey.shade700),
      ),
      // disabledColor: Colors.blue,
    );
  }
}
