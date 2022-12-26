import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/my_choice_color.dart';
import 'package:flutter/material.dart';

class ProductDetailColors extends StatefulWidget {
  final ProductModel product;
  const ProductDetailColors({super.key, required this.product});

  @override
  State<ProductDetailColors> createState() => _ProductDetailColorsState();
}

class _ProductDetailColorsState extends State<ProductDetailColors> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: "Color: ",
            style: MyTextStyle.subTitle(color: Colors.black),
            children: [
              if (widget.product.selectedColor != null)
                TextSpan(
                  text: widget.product.selectedColor?.name,
                  style: MyTextStyle.regular(fontSize: 14),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: widget.product.listColor.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (context, index) => MyChoiceColor(
              color: widget.product.listColor[index],
              onSelected: (value) {
                if (mounted) {
                  setState(() {
                    widget.product.chooseColor(widget.product.listColor[index]);
                  });
                }
              },
            ),
          ),
        ),
      ],
    );
  }
}
