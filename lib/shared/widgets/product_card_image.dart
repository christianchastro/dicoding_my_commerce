import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductCardImage extends StatelessWidget {
  final ProductModel product;
  const ProductCardImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Hero(
        tag: product.id,
        child: AspectRatio(
          aspectRatio: 1,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.network(
                  product.productImageModel.regularImageUrl,
                ),
              ),
              Positioned(
                top: 4,
                right: 4,
                child: FavorireButton(product: product),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
