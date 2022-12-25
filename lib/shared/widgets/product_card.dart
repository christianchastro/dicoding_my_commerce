import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final ProductModel productModel;
  const ProductCard({super.key, required this.productModel});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 1,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      widget.productModel.productImageModel.regularImageUrl,
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: FavorireButton(
                      product: widget.productModel,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            widget.productModel.name,
            style: MyTextStyle.subTitle(color: Colors.grey.shade600),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            widget.productModel.convertedPrice,
            style: MyTextStyle.regular(),
          ),
        ],
      ),
    );
  }
}
