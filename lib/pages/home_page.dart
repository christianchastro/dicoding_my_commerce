import 'package:e_commerce/shared/enum/enum_category_product.dart';
import 'package:e_commerce/shared/model/category_model.dart';
import 'package:e_commerce/shared/model/product_model.dart';
import 'package:e_commerce/shared/source/products.dart';
import 'package:e_commerce/shared/styling/my_text_style.dart';
import 'package:e_commerce/shared/widgets/my_choice_chip.dart';
import 'package:e_commerce/shared/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ProductModel> _listProduct = SourceProducts.listProduct;
  final List<CategoryModel> _listCategory = [];
  final List<ProductModel> _listFilteredProduct = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() {
    if (mounted) {
      setState(() {
        _listCategory.addAll([
          ...EnumCategoryProduct.values.map((e) => CategoryModel(category: e)),
        ]);
        if (_listCategory
            .any((element) => element.category == EnumCategoryProduct.all)) {
          _listCategory
              .firstWhere(
                (element) => element.category == EnumCategoryProduct.all,
                orElse: () => CategoryModel(category: EnumCategoryProduct.all),
              )
              .isSelected = true;
        }
        _listFilteredProduct.addAll(_listProduct);
      });
    }
  }

  void onSelectedFilterCategory(CategoryModel category) {
    if (mounted) {
      if (!category.isSelected) {
        setState(() {
          _listCategory
              .where((element) => element.isSelected)
              .forEach((element) {
            element.isSelected = false;
          });
          category.isSelected = !category.isSelected;
          _listFilteredProduct.clear();
          if (category.category == EnumCategoryProduct.all) {
            _listFilteredProduct.addAll(_listProduct);
          } else {
            _listFilteredProduct.addAll(
              _listProduct.where(
                (element) => element.categories.any(
                  ((element) => element == category.category),
                ),
              ),
            );
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("My Commerce"),
        backgroundColor: Colors.white,
        titleTextStyle: MyTextStyle.title(color: Colors.black),
        elevation: 2,
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
              const SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _listCategory.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 10),
                  itemBuilder: (context, index) => MyChoiceChip(
                    text: _listCategory[index].category.text,
                    isSelected: _listCategory[index].isSelected,
                    onSelected: (value) {
                      onSelectedFilterCategory(_listCategory[index]);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 280,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: _listFilteredProduct.length,
                  separatorBuilder: ((_, __) => const SizedBox(width: 14)),
                  itemBuilder: (context, index) => ProductCard(
                    product: _listFilteredProduct[index],
                    tag: "find-your-fashions",
                  ),
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
                  itemCount: _listProduct.length,
                  separatorBuilder: ((_, __) => const SizedBox(width: 14)),
                  itemBuilder: (context, index) => ProductCard(
                    product: _listProduct[index],
                    tag: "most-popular",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
