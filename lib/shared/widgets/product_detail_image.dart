import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/widgets/favorite_button.dart';
import 'package:flutter/material.dart';

class ProductDetailImage extends StatelessWidget {
  final ProductModel product;
  const ProductDetailImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: Image.network(
            product.productImageModel.fullImageUrl,
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          right: 16,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                  color: Colors.black,
                  icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 20),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: FavorireButton(product: product),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
