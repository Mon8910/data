import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/payment/data/model/payment_intentinput_model.dart';
import 'package:payment_app/core/error/failure.dart';

abstract class CheckoutRepo {
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentTnputModel paymentIntentTnputModel});
}
