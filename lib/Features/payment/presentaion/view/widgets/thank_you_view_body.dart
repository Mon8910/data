import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:payment_app/core/utilies/styles.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: const Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 50 + 16),
              child: Column(
                children: [
                  const Text(
                    'Thank You ',
                    style: Styles.style25,
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    'Your transaction was successful',
                    style: Styles.style20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const RowPaymentInfo(
                    title1: 'Date',
                    title2: '01/24/2023',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const RowPaymentInfo(
                    title1: 'Time',
                    title2: '10:15 AM',
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const RowPaymentInfo(
                    title1: 'To',
                    title2: 'Sam Louis',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(
                      thickness: 2,
                      color: Color.fromARGB(255, 199, 199, 199),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const PaymentTotal(),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 70,
                    width: 320,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22, vertical: 16),
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        color: Colors.white),
                    child: Row(
                      children: [
                        Image.asset('assets/images/mastercard.png'),
                        const SizedBox(
                          width: 23,
                        ),
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Credit Card\n', style: Styles.style18),
                              TextSpan(
                                  text: 'Mastercard **78',
                                  style: Styles.style18)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          FontAwesomeIcons.barcode,
                          size: 64,
                        ),
                        Container(
                          height: 58,
                          width: 113,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1.50, color: Color(0xff34A853)),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'Paid',
                              style: Styles.style24OfButton,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height:
                        ((MediaQuery.of(context).size.height * .2 + 20) / 2) -
                            29,
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: MediaQuery.of(context).size.height * .2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
            left: 20 + 16,
            right: 20 + 16,
            bottom: MediaQuery.of(context).size.height * .2 + 20,
            child: Row(
              children: List.generate(
                  30,
                  (index) => Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          child: Container(
                            height: 1,
                            color: const Color(0xffbbbbbb),
                          ),
                        ),
                      )),
            ),
          ),
          const Positioned(
              left: 0,
              right: 0,
              top: -50,
              child: CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                radius: 50,
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xff34A853),
                  child: Icon(
                    Icons.check,
                    size: 50,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

class RowPaymentInfo extends StatelessWidget {
  const RowPaymentInfo({
    super.key,
    required this.title1,
    required this.title2,
  });
  final String title1;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title1,
            style: Styles.style18,
          ),
          Text(
            title2,
            style: Styles.style18Bold,
          )
        ],
      ),
    );
  }
}

class PaymentTotal extends StatelessWidget {
  const PaymentTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Total',
            style: Styles.style24,
          ),
          Text(
            r'$50.97',
            style: Styles.style24,
          )
        ],
      ),
    );
  }
}
