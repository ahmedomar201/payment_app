import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../dataLayer/cubit/app_cubit.dart';
import '../../dataLayer/cubit/app_state.dart';
import '../helper/snakbar_error.dart';
import '../widget/custom_appBar.dart';
import '../widget/payment_item.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      listener: (BuildContext context, AppState state) {
        if (state is GetWeatherError) {
          showCustomErrorSnackbar(message: state.error, context: context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: buildAppBar(title: 'Payment Details'),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(children: [SizedBox(height: 25), Payment()]),
            ),
          ),
        );
      },
    );
  }
}

// ممكن دي اعنلها كا model
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
