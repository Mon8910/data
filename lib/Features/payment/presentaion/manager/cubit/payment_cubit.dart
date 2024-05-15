import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payment_app/Features/payment/data/model/payment_intentinput_model.dart';
import 'package:payment_app/Features/payment/data/repo/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future makePayment(
      {required PaymentIntentTnputModel paymentIntentTnputModel}) async {
    emit(PaymentLoading());
    var data = await checkoutRepo.makePayment(
        paymentIntentTnputModel: paymentIntentTnputModel);
    data.fold(
      (l) => emit(PaymentFailure(errorMessage: l.errorMessage)),
      (r) => emit(
        PaymentSuccess(),
      ),
    );
  }
  @override
  void onChange(Change<PaymentState> change) {
    log(change.toString());
    super.onChange(change);
  }
}
