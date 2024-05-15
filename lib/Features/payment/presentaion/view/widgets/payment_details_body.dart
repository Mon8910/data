import 'package:flutter/material.dart';
import 'package:payment_app/Features/payment/presentaion/view/thank_uou_view.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/custom_credit_card.dart';
import 'package:payment_app/Features/payment/presentaion/view/widgets/payment_listview.dart';
import 'package:payment_app/core/fixed_button.dart';
import 'package:payment_app/core/utilies/styles.dart';

class PaymentDetailsBody extends StatefulWidget {
  const PaymentDetailsBody({super.key});

  @override
  State<PaymentDetailsBody> createState() => _PaymentDetailsBodyState();
}

class _PaymentDetailsBodyState extends State<PaymentDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(
        child: PaymentListView(),
      ),
      SliverToBoxAdapter(
        child: CustomCreditCard(
          formKey: formKey,
          autovalidateMode: autovalidateMode,
        ),
      ),
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 12,
            left: 12,
            right: 12,
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: FixedButton(
              title: 'Pay',
              textStyle: Styles.style22,
              function: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ThankYouView()));
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ),
        ),
      )
    ]);
  }
}

// Column(
//         children: [PaymentListView(),
//         CustomCreditCard()],
//       )
