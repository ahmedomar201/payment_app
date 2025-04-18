import 'package:flutter/material.dart';

import '../../core/utils/style.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, textAlign: TextAlign.center, style: Styles.style24),
        Spacer(),
        Text(value, textAlign: TextAlign.center, style: Styles.style24),
      ],
    );
  }
}