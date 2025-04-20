
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:payment_app/presentationLayer/screens/thank_you_view.dart';
import 'package:payment_app/presentationLayer/widget/custom_credit_card.dart';
import '../widget/custom_appBar.dart';
import '../widget/mainButton.dart';
import '../widget/paymnet_card.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
    return Scaffold(
      appBar: buildAppBar(title: 'Payment Details'),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: Payment()),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autovalidateMode: autovalidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: MainButton(
                  width: 350,
                  hight: 73,
                  label: 'pay',
                  function: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                     log('payment');
                      // Perform payment action here
                    } else {
                           Navigator.push(context, MaterialPageRoute(builder: (context) =>
                       ThankYouView()
                      ));
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  color: const Color(0xFF34A853),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
