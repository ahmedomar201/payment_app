import 'package:flutter/material.dart';

import '../widget/custom_appBar.dart';
import '../widget/thank_you.dart';


class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Transform.translate(
        offset: Offset(0, -30),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Center(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                ThankYou(),
                Positioned(
                  bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: List.generate(
                        20,
                        (index) => Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 1.0),
                            child: Container(
                              height: 2,
                              color: const Color(0xFFB7B7B7),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  bottom: MediaQuery.sizeOf(context).height * 0.2,
                  child: CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.white,
                  ),
                ),
        
                Positioned(
                  right: -20,
                  bottom: MediaQuery.sizeOf(context).height * 0.2,
                  child: CircleAvatar(
                    // radius: 50,
                    backgroundColor: Colors.white,
                  ),
                ),
        
                Positioned(
                  top: -50,
                  left: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xFFD9D9D9),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.green,
                      child: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
