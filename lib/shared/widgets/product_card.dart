import 'package:e_commerce/pages/detail_product_page.dart';
import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/product_card_image.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  final ProductModel product;
  final String tag;
  const ProductCard({super.key, required this.product, required this.tag});

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailProductPage(
              product: widget.product,
              tag: widget.tag,
            ),
          ),
        );
        if (mounted) {
          setState(() {});
        }
      },
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ProductCardImage(
              product: widget.product,
              tag: widget.tag,
            ),
            const SizedBox(height: 8),
            Text(
              widget.product.name,
              style: MyTextStyle.subTitle(color: Colors.grey.shade600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            Text(
              widget.product.convertedPrice,
              style: MyTextStyle.regular(),
            ),
          ],
        ),
      ),
    );
  }
}
