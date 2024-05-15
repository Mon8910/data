import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/payment/data/repo/checkout_repo_impl.dart';
import 'package:payment_app/Features/payment/presentaion/manager/cubit/payment_cubit.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/order_items.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/payment_metoh_bottom_sheet.dart';
import 'package:payment_app/core/fixed_button.dart';
import 'package:payment_app/core/utilies/styles.dart';

class PaymentBody extends StatelessWidget {
  const PaymentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 18,
            ),
            Image.asset('assets/images/basket.png'),
            const SizedBox(
              height: 25,
            ),
            const OrderItems(
              title: 'Order Subtotal',
              price: r'42$',
              textStyle: Styles.style18,
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderItems(
              title: 'Discount',
              price: r'0$',
              textStyle: Styles.style18,
            ),
            const SizedBox(
              height: 3,
            ),
            const OrderItems(
              title: 'Shipping',
              price: r'8$',
              textStyle: Styles.style18,
            ),
            const SizedBox(
              height: 8,
            ),
            const Divider(
              thickness: 2,
              color: Color.fromARGB(255, 199, 199, 199),
            ),
            const SizedBox(
              height: 10,
            ),
            const OrderItems(
              title: 'Total',
              price: r'50.97$',
              textStyle: Styles.style24,
            ),
            const SizedBox(
              height: 16,
            ),
            FixedButton(
              title: 'Complete Payment',
              textStyle: Styles.style22,
              function: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return BlocProvider(
                        create: (context) => PaymentCubit(
                          CheckoutRepoImplm(),
                        ),
                        child: const PaymentMetodBottomSheet(),
                      );
                    });
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (context) => const PaymentDetailsScreen(),
                //   ),
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
