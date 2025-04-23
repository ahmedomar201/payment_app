import 'package:flutter/material.dart';

import '../../core/utils/style.dart';

class TotalPrice extends StatelessWidget {
  final String? title;
  final String? value;
final TextStyle? textStyle;
final TextStyle? textStyle2;


  const TotalPrice({
    super.key,
    required this.title,
    required this.value,
     this.textStyle, this.textStyle2,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title!, textAlign: TextAlign.center, style:textStyle?? Styles.style24),
        Spacer(),
        Text(value!, textAlign: TextAlign.center, style:textStyle2?? Styles.style24),
      ],
    );
  }
}