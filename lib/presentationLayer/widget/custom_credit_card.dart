import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {

      String cardNumber = '', cardHolderName = '', expiryDate = '', cvvCode = '';
    bool showBackView=false;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView:
              showBackView, //true when you want to show cvv(back) view
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
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
          formKey: formKey,
        ),
      ],
    );
  }
}
