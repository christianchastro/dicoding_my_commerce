import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/widgets/product_detail_image.dart';
import 'package:e_commerce/shared/widgets/product_detail_info.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatelessWidget {
  final ProductModel product;
  final String tag;
  const DetailProductPage(
      {super.key, required this.product, required this.tag});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ProductDetailImage(
                  product: product,
                  tag: tag,
                ),
                const SizedBox(height: 20),
                ProductDetailInfo(product: product),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
