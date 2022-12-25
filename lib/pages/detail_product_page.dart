import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/widgets/product_detail_image.dart';
import 'package:e_commerce/shared/widgets/product_detail_info.dart';
import 'package:flutter/material.dart';

class DetailProductPage extends StatefulWidget {
  final ProductModel product;
  const DetailProductPage({
    super.key,
    required this.product,
  });

  @override
  State<DetailProductPage> createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
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
                ProductDetailImage(product: widget.product),
                const SizedBox(height: 20),
                ProductDetailInfo(product: widget.product),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
