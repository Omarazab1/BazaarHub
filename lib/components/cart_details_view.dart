import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/widgets/custom_button.dart';
import 'package:store/widgets/payment_methods_list.dart';

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
        const  Text(
            'Cart',
           // style: Theme.of(context).textTheme.headline6,
          ),
          ...List.generate(
            controller.cart.length,
            (index) => CartDetailsViewCard(productItem: controller.cart[index]),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      builder:(context){
                    return const PaymentMethodsBottomSheet();
                  });
                },
                child: const Text('Next - \$30'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class PaymentMethodsBottomSheet extends StatelessWidget {
  const PaymentMethodsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 16,),
          const  PaymentMethodsList(),
          const  SizedBox(height: 32,),
          CustomButton(text: 'Continue')
        ],
      ),
    );
  }
}
