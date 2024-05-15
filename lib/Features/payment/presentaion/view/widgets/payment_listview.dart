import 'package:flutter/material.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/container_active.dart';

class PaymentListView extends StatefulWidget {
  const PaymentListView({super.key});

  @override
  State<PaymentListView> createState() => _PaymentListViewState();
}

class _PaymentListViewState extends State<PaymentListView> {
  final List images = const [
    'assets/images/creditcard.png',
    'assets/images/paypal.png'
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: ContainerActive(
                  isActive: activeIndex == index,
                  image: images[index],
                ),
              ),
            );
          }),
    );
  }
}
