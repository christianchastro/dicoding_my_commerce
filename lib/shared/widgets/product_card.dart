import 'package:e_commerce/pages/detail_product_page.dart';
import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/product_card_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;
  const ProductCard({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailProductPage(product: productModel),
          ),
        );
      },
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductCardImage(product: productModel),
            const SizedBox(height: 8),
            Text(
              productModel.name,
              style: MyTextStyle.subTitle(color: Colors.grey.shade600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              productModel.convertedPrice,
              style: MyTextStyle.regular(),
            ),
          ],
        ),
      ),
    );
  }
}
