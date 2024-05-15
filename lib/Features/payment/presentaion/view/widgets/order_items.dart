import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({
    super.key,
    required this.title,
    required this.price,
    required this.textStyle,
  });
  final String title;
  final String price;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: textStyle,
        ),
        const Spacer(),
        Text(
          price,
          style: textStyle,
        ),
      ],
    );
  }
}
