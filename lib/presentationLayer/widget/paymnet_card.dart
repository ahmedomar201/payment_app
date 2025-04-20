import 'package:flutter/material.dart';

import 'payment_item.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final List<String> paymentImage = [
    'assets/icons/card.svg',
    'assets/icons/paypal.svg',
    // 'assets/icons/master_card.svg',
    // 'assets/icons/google_pay.svg',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        itemCount: paymentImage.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PaymentItem(
                isActive: activeIndex == index,
                image: paymentImage[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
// ممكن دي اعنلها كا model