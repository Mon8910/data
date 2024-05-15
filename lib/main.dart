import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/Features/payment/presentaion/view/payment_screen.dart';
import 'package:payment_app/core/utilies/api_keys.dart';

void main() {
  Stripe.publishableKey=ApiKeys.puplishKey;
  runApp(const MyAppPayment());
}

class MyAppPayment extends StatelessWidget {
  const MyAppPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PaymentScreen(),
    );
  }
}
