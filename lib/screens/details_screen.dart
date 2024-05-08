import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/product_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen(
      {super.key, required this.product, required this.onProductAdd});

  final ProductModel product;
  final VoidCallback onProductAdd;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String _cartTag = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: ElevatedButton(
              onPressed: () {
                widget.onProductAdd();
                setState(() {
                  _cartTag = '_cartTag';
                });
                Navigator.pop(context);
              },
              child: const Text('Add To Cart'),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(children: [
        AspectRatio(
          aspectRatio: 1.37,
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xfff8f8f8),
                child: Hero(
                  tag: widget.product.title + _cartTag,
                  child: Image.network(widget.product.image),
                ),
              ),
              Positioned(
                bottom: -20,
                child: Container(),
              )
            ],
          ),
        ),
        const SizedBox(height: defaultPadding * 1.5),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Row(
            children: [
              Expanded(
                child: Text('Hokjndsv dfjsdf dssvdsj nklmilsk knkksdc dsjnjd'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
