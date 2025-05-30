import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/style.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.style18),
        Spacer(),
        Text(value, textAlign: TextAlign.center, style: Styles.style18),
      ],
    );
  }
}