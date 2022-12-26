import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:flutter/material.dart';

class MyChoiceChip extends StatelessWidget {
  final String text;
  final bool isSelected;
  final void Function(bool)? onSelected;
  const MyChoiceChip({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(text),
      labelStyle: MyTextStyle.subTitle(
        color: !isSelected ? Colors.black : Colors.white,
      ),
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: Colors.blueGrey.shade700,
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(
            color: !isSelected
                ? Colors.blueGrey.shade200
                : Colors.blueGrey.shade700),
      ),
      // disabledColor: Colors.blue,
    );
  }
}
