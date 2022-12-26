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
    // return ChoiceChip(
    //   label: Text(text),
    //   labelStyle: MyTextStyle.subTitle(
    //     color: !isSelected ? Colors.black : Colors.white,
    //   ),
    //   selected: isSelected,
    //   onSelected: onSelected,
    //   selectedColor: Colors.blueGrey.shade700,
    //   backgroundColor: Colors.white,
    //   padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(12),
    //     side: BorderSide(
    //         color: !isSelected
    //             ? Colors.blueGrey.shade200
    //             : Colors.blueGrey.shade700),
    //   ),
    //   // disabledColor: Colors.blue,
    // );
  }
}
