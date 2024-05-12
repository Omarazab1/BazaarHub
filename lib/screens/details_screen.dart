import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/models/product_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
    required this.product,
    required this.onProductAdd,
  }) : super(key: key);

  final ProductModel product;
  final VoidCallback onProductAdd;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  String _cartTag = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9, // Adjust aspect ratio as needed
              child: Container(
                width: double.infinity,
                color: const Color(0xfff8f8f8),
                child: Hero(
                  tag: widget.product.title + _cartTag,
                  child: Image.network(
                    widget.product.image,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Product Description: ${widget.product.description}',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Price: \$${widget.product.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
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
          ],
        ),
      ),
    );
  }
}
