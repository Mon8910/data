import 'package:dartz/dartz.dart';
import 'package:payment_app/Features/payment/data/model/payment_intentinput_model.dart';
import 'package:payment_app/Features/payment/data/repo/checkout_repo.dart';
import 'package:payment_app/core/error/failure.dart';
import 'package:payment_app/core/utilies/stripe_services.dart';

class CheckoutRepoImplm extends CheckoutRepo {
  final StripServices stripServices = StripServices();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentTnputModel paymentIntentTnputModel}) async {
    try {
      await stripServices.makePayment(paymentIntentTnputModel);
      return right(null);
    } catch (e) {
      return left(
        ServerFailure(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
