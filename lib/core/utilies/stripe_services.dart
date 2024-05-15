import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_app/Features/payment/data/model/payment_intentinput_model.dart';
import 'package:payment_app/Features/payment/data/model/payment_model/payment_model.dart';
import 'package:payment_app/core/utilies/api_keys.dart';
import 'package:payment_app/core/utilies/api_services.dart';

class StripServices {
  final ApiService apiConsumer = ApiService();
  Future<PaymentModel> createdPaymentIntent(
      PaymentIntentTnputModel paymentIntentTnputModel) async {
    var response = await apiConsumer.post(
        body: paymentIntentTnputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretTokens);
      
    var p = PaymentModel.fromJson(response.data);
    return p;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
   await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentClientSecret,
          merchantDisplayName: 'Ayman'),
    );
  }

  Future displayPaymentSheet() async {
  await  Stripe.instance.presentPaymentSheet();
  }

  Future makePayment (PaymentIntentTnputModel paymentIntentTnputModel)async{
    var paymentIntentModel=await createdPaymentIntent(paymentIntentTnputModel);
    await initPaymentSheet(paymentIntentClientSecret: paymentIntentModel.clientSecret!);
    await displayPaymentSheet();
  }
   Future<PaymentModel> createCustomer(
      PaymentIntentTnputModel paymentIntentTnputModel) async {
    var response = await apiConsumer.post(
        body: paymentIntentTnputModel.toJson(),
        contentType: Headers.formUrlEncodedContentType,
        url: 'https://api.stripe.com/v1/payment_intents',
        token: ApiKeys.secretTokens);
      
    var p = PaymentModel.fromJson(response.data);
    return p;
  }
}
//https://api.stripe.com/v1/customers