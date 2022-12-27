import 'package:e_commerce/shared/model/product_model.dart';
import 'package:flutter/material.dart';

class FavorireButton extends StatefulWidget {
  final ProductModel product;
  const FavorireButton({super.key, required this.product});

  @override
  State<FavorireButton> createState() => _FavorireButtonState();
}

class _FavorireButtonState extends State<FavorireButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
        constraints: const BoxConstraints(),
        onPressed: () {
          if (mounted) {
            setState(() {
              widget.product.isFavorite = !widget.product.isFavorite;
            });
          }
        },
        icon: Icon(
          !widget.product.isFavorite
              ? Icons.favorite_border_rounded
              : Icons.favorite_rounded,
          color: !widget.product.isFavorite ? Colors.grey.shade800 : Colors.red,
        ),
      ),
    );
  }
}
