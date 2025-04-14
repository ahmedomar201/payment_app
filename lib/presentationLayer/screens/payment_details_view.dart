import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/style.dart';
import '../../dataLayer/cubit/app_cubit.dart';
import '../../dataLayer/cubit/app_state.dart';
import '../helper/snakbar_error.dart';
import '../widget/cart_info.dart';
import '../widget/custom_appBar.dart';
import '../widget/mainButton.dart';
import '../widget/payment_item.dart';
import '../widget/total_price.dart';

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
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Payment(),
                  // SizedBox(height: 25),
                  // OrderInfoItem(value: '\$42.97', title: 'Order Subtotal'),
                  // SizedBox(height: 3),
                  // OrderInfoItem(value: '\$0', title: 'Discount'),
                  // SizedBox(height: 3),
                  // OrderInfoItem(value: '\$8', title: 'Shipping'),
                  // SizedBox(height: 20),
                  // //  Divider(
                  // //   color: const Color(0xFFC6C6C6),
                  // //   thickness: 2,),
                  // Container(
                  //   width: 320,
                  //   decoration: ShapeDecoration(
                  //     shape: RoundedRectangleBorder(
                  //       side: BorderSide(
                  //         width: 2,
                  //         strokeAlign: BorderSide.strokeAlignCenter,
                  //         color: const Color(0xFFC6C6C6),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20),
                  // TotalPrice(value: '\$50.97', title: 'Total'),
                  // SizedBox(height: 50),
                  // MainButton(
                  //   width: 350,
                  //   hight: 73,
                  //   label: 'Complete Payment',
                  //   function: () {},
                  //   color: const Color(0xFF34A853),
                  // ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// ممكن دي اعنلها كا model
class Payment extends StatefulWidget {
  Payment({super.key});

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
