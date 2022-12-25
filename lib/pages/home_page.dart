import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/source/products.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ProductModel> listProduct = SourceProducts.listProduct;
  // final List<ProductModel> listCart = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Commerce"),
        backgroundColor: Colors.transparent,
        titleTextStyle: MyTextStyle.title(),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Find Your Fashions",
                  style: MyTextStyle.title(),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: AspectRatio(
                  aspectRatio: 1208 / 302,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    // * Image Soruce: https://www.tokopedia.com
                    child: Image.network(
                      "https://images.tokopedia.net/img/cache/1208/NsjrJu/2022/12/14/b0266481-06a8-4318-aa92-a1a8d02c7ea1.jpg?ect=4g",
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: listProduct.length,
                  separatorBuilder: ((_, __) => const SizedBox(width: 14)),
                  itemBuilder: (context, index) =>
                      ProductCard(productModel: listProduct[index]),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Most Popular",
                  style: MyTextStyle.title(),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: listProduct.length,
                  separatorBuilder: ((_, __) => const SizedBox(width: 14)),
                  itemBuilder: (context, index) =>
                      ProductCard(productModel: listProduct[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
