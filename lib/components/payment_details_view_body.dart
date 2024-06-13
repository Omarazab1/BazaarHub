import 'package:flutter/material.dart';
import 'package:store/widgets/payment_methods_list.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PaymentMethodsList(),
      ],
    );
  }
}
