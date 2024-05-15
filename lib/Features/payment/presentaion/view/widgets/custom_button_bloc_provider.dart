import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_app/Features/payment/data/model/payment_intentinput_model.dart';
import 'package:payment_app/Features/payment/presentaion/manager/cubit/payment_cubit.dart';
import 'package:payment_app/Features/payment/presentaion/view/thank_uou_view.dart';
import 'package:payment_app/core/fixed_button.dart';
import 'package:payment_app/core/utilies/styles.dart';

class FixedButtonBlocConsummer extends StatelessWidget {
  const FixedButtonBlocConsummer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PaymentCubit, PaymentState>(
      listener: (context, state) {
        if (state is PaymentSuccess) {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (ctx) => const ThankYouView()));
        }
        if (state is PaymentFailure) {
          Navigator.of(context).pop();
          SnackBar snackBar = SnackBar(content: Text(state.errorMessage));
          print(state.errorMessage);
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return FixedButton(
            isLoading: state is PaymentLoading ? true : false,
            title: 'contnuie',
            textStyle: Styles.style22,
            function: () {
              PaymentIntentTnputModel paymentIntentTnputModel =
                  PaymentIntentTnputModel(amount: '100', currency: 'USD');
              BlocProvider.of<PaymentCubit>(context).makePayment(
                  paymentIntentTnputModel: paymentIntentTnputModel);
            });
      },
    );
  }
}
