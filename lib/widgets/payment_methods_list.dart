import 'package:flutter/material.dart';
import 'package:store/widgets/payment_method_item.dart';

class PaymentMethodsList extends StatefulWidget {
  const  PaymentMethodsList({super.key});

  @override
  State<PaymentMethodsList> createState() => _PaymentMethodsListState();
}

class _PaymentMethodsListState extends State<PaymentMethodsList> {
  final List<String> paymentMethodItems =[
    'assets/images/card.svg',
    'assets/images/paypal.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: paymentMethodItems.length,
          itemBuilder: (context,index)
          {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                  onTap: (){
                    activeIndex = index;
                    setState(() {

                    });
                  },
                  child: PaymentMethodItem(isActive: activeIndex == index, image: paymentMethodItems[index])),
            );
          }),
    );
  }
}
