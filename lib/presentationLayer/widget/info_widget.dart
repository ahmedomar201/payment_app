
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      // height: 85,
         padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/master_card.svg',
            width: 36,
            height: 22,
          ),
          SizedBox(
            width: 23,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Credit Card ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: 'Mastercard**78',
                  style: TextStyle(
                    color: Colors.black.withValues(alpha: 178),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}