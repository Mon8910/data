// ignore: file_names
class PaymentIntentTnputModel {
  final String amount;
  final String currency;

  PaymentIntentTnputModel({
    required this.amount,
    required this.currency,
  });
  toJson(){
    return {
      'amount':amount,
      'currency':currency
    };
  }
}
