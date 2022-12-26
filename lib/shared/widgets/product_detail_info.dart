import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/product_detail_colors.dart';
import 'package:e_commerce/shared/widgets/product_detail_sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/shared/model/product_model.dart';

class ProductDetailInfo extends StatelessWidget {
  final ProductModel product;
  const ProductDetailInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.name,
            style: MyTextStyle.title(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 10),
          Text(
            product.convertedPrice,
            style: MyTextStyle.subTitle(
              fontSize: 16,
              color: Colors.blueGrey.shade700,
            ),
          ),
          if (product.listSize.isNotEmpty) ProductDetailSizes(product: product),
          if (product.listColor.isNotEmpty)
            ProductDetailColors(product: product),
          const SizedBox(height: 20),
          if (product.description != null &&
              product.description!.isNotEmpty) ...[
            Text(
              "Description",
              style: MyTextStyle.subTitle(),
            ),
            const SizedBox(height: 10),
            Text(product.descriptionDecode),
            const SizedBox(height: 20),
          ],
        ],
      ),
    );
  }
}
