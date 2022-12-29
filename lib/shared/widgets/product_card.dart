import 'package:e_commerce/pages/detail_product_page.dart';
import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/product_card_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final String tag;
  const ProductCard({super.key, required this.product, required this.tag});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailProductPage(
              product: product,
              tag: tag,
            ),
          ),
        );
      },
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductCardImage(
              product: product,
              tag: tag,
            ),
            const SizedBox(height: 8),
            Text(
              product.name,
              style: MyTextStyle.subTitle(color: Colors.grey.shade600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              product.convertedPrice,
              style: MyTextStyle.regular(),
            ),
          ],
        ),
      ),
    );
  }
}
