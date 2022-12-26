import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/my_choice_chip.dart';
import 'package:flutter/material.dart';

class ProductDetailSizes extends StatefulWidget {
  final ProductModel product;
  const ProductDetailSizes({super.key, required this.product});

  @override
  State<ProductDetailSizes> createState() => _ProductDetailSizesState();
}

class _ProductDetailSizesState extends State<ProductDetailSizes> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            text: "Size: ",
            style: MyTextStyle.subTitle(color: Colors.black),
            children: [
              if (widget.product.selectedSize != null)
                TextSpan(
                  text: widget.product.selectedSize?.size,
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
            itemCount: widget.product.listSize.length,
            separatorBuilder: (_, __) => const SizedBox(width: 10),
            itemBuilder: (context, index) => MyChoiceChip(
              text: widget.product.listSize[index].size,
              isSelected: widget.product.listSize[index].isSelected,
              onSelected: (value) {
                if (mounted) {
                  setState(() {
                    widget.product.chooseSize(widget.product.listSize[index]);
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
