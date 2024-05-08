import 'package:flutter/material.dart';
import 'package:store/constants.dart';

import '../controllers/home_controller.dart';
import 'cart_details_view_card.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Cart',
            style: Theme.of(context).textTheme.headline6,
          ),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          const SizedBox(height: defaultPadding),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Next - \$30'),
            ),
          )
        ],
      ),
    );
  }
}
