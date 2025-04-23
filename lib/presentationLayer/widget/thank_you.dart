import 'package:flutter/material.dart';
import 'package:payment_app/core/utils/style.dart';
import 'package:payment_app/presentationLayer/widget/info_widget.dart';
import 'total_price.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYou extends StatelessWidget {
  const ThankYou({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 672,
      decoration: ShapeDecoration(
        color: const Color(0xFFD9D9D9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 10),
        child: Column(
          children: [
            Text(
              'Thank you!',
              textAlign: TextAlign.center,
              style: Styles.style25,
            ),

            Text(
              'Your transaction was successful',
              textAlign: TextAlign.center,
              style: Styles.style20,
            ),
            SizedBox(height: 42),
            TotalPrice(
              value: '01/24/2023',
              title: 'Date',
              textStyle: Styles.style18,
              textStyle2: Styles.styleBold18,
            ),
            SizedBox(height: 20),
            TotalPrice(
              value: '10:15 AM',
              title: 'Time',
              textStyle: Styles.style18,
              textStyle2: Styles.styleBold18,
            ),
            SizedBox(height: 20),
            TotalPrice(
              value: 'Sam Louis',
              title: 'To',
              textStyle: Styles.style18,
              textStyle2: Styles.styleBold18,
            ),

            Divider(color: const Color(0xFFC6C6C6), thickness: 2, height: 60.0),

            TotalPrice(
              value: '\$50.97',
              title: 'Total',
              textStyle: Styles.style25,
              textStyle2: Styles.style25,
            ),

            SizedBox(height: 20),

            InfoWidget(),
            Spacer(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(FontAwesomeIcons.barcode, size: 64),
                Container(
                  width: 113,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1.50,
                        color: const Color(0xFF34A853),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'PAID',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF34A853),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * 0.2 + 20) / 4) - 29,
            ),
          ],
        ),
      ),
    );
  }
}
