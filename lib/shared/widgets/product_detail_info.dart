import 'package:e_commerce/shared/styling/my_text_style.dart';
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
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "Size: ",
              style: MyTextStyle.subTitle(color: Colors.black),
              children: [
                if (product.selectedSize != null)
                  TextSpan(
                    text: product.selectedSize?.size,
                    style: MyTextStyle.regular(fontSize: 14),
                  ),
              ],
            ),
          ),
          // TODO: Chip Size
          const SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: "Color: ",
              style: MyTextStyle.subTitle(color: Colors.black),
              children: [
                if (product.selectedColor != null)
                  TextSpan(
                    text: product.selectedColor?.name,
                    style: MyTextStyle.regular(fontSize: 14),
                  ),
              ],
            ),
          ),
          // TODO: Chip Color
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
