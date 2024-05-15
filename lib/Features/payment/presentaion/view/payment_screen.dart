import 'package:flutter/material.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/payment_body.dart';
import 'package:payment_app/core/utilies/styles.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          'My Cart',
          style: Styles.style25,
          textAlign: TextAlign.center,
        ),
      ),
      body: const PaymentBody(),
    );
  }
}
