import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dataLayer/cubit/app_cubit.dart';
import '../../dataLayer/cubit/app_state.dart';
import '../helper/snakbar_error.dart';
import '../widget/cart_info.dart';
import '../widget/custom_appBar.dart';
import '../widget/mainButton.dart';
import '../widget/total_price.dart';
import 'payment_details_view.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

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
          appBar:buildAppBar(title: 'My Cart'),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Image.asset('assets/images/basket_image.png'),
                  SizedBox(height: 25),
                  OrderInfoItem(value: '\$42.97', title: 'Order Subtotal'),
                  SizedBox(height: 3),
                  OrderInfoItem(value: '\$0', title: 'Discount'),
                  SizedBox(height: 3),
                  OrderInfoItem(value: '\$8', title: 'Shipping'),
                  SizedBox(height: 20),
                  //  Divider(
                  //   color: const Color(0xFFC6C6C6),
                  //   thickness: 2,),
                  Container(
                    width: 320,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignCenter,
                          color: const Color(0xFFC6C6C6),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TotalPrice(value: '\$50.97', title: 'Total'),
                  SizedBox(height: 50),
                  MainButton(
                    width: 350,
                    hight: 73,              
                    label: 'Complete Payment',
                    function: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>
                       PaymentDetails()
                      ));
                    },
                    color: const Color(0xFF34A853),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
