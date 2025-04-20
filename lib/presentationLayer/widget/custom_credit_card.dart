import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final    AutovalidateMode autovalidateMode;
  const CustomCreditCard({super.key, required this.formKey, required this.autovalidateMode});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', cardHolderName = '', expiryDate = '', cvvCode = '';
  bool showBackView = false;
 
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          isHolderNameVisible: true,
          showBackView:
              showBackView, //true when you want to show cvv(back) view
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (carditCardModel) {
            cardNumber = carditCardModel.cardNumber;
            cardHolderName = carditCardModel.cardHolderName;
            expiryDate = carditCardModel.expiryDate;
            cvvCode = carditCardModel.cvvCode;
            showBackView = carditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey:widget.formKey,
        )
      ], 
    );
  }
}
