import 'package:flutter/material.dart';
import 'package:store/models/product_item.dart';
import 'package:store/models/product_model.dart';

import '../../../constants.dart';

class CartDetailsViewCard extends StatelessWidget {
  const CartDetailsViewCard({
    Key? key,
    required this.productItem,
  }) : super(key: key);

  final ProductItem productItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(productItem.product!.image),
      ),
      title: Text(
        productItem.product!.title,
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      trailing: FittedBox(
        child: Row(
          children: [
            Price(amount: "20"),
            Text(
              "  x ${productItem.quantity}",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

class Price extends StatelessWidget {
  const Price({
    Key? key,
    required this.amount,
  }) : super(key: key);
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "\$",
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.w600, color: primaryColor),
        children: [
          TextSpan(
            text: amount,
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: "/kg",
            style:
                TextStyle(color: Colors.black26, fontWeight: FontWeight.normal),
          )
        ],
      ),
    );
  }
}
