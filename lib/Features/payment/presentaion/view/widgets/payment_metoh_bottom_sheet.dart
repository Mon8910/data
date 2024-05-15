import 'package:flutter/material.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/custom_button_bloc_provider.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/payment_listview.dart';

class PaymentMetodBottomSheet extends StatelessWidget {
  const PaymentMetodBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          const PaymentListView(),
          const SizedBox(
            height: 32,
          ),
          FixedButtonBlocConsummer(),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

