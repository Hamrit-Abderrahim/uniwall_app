import 'package:flutter/material.dart';
import 'package:uniwal_app/core/widget/custom_app_bar.dart';
import 'package:uniwal_app/features/home/widget/dialog_uniwal_premium.dart';
import 'package:uniwal_app/features/home/widget/premium_widget.dart';
import 'package:uniwal_app/features/home/widget/total_widget.dart';

class UniwalPremium extends StatelessWidget {
  const UniwalPremium({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        colorLeadingColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('assets/images/Container.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PremiumSubscrip(),
                SizedBox(
                  height: 32,
                ),
                TotlaWidget(),
                SizedBox(
                  height: 24,
                ),
                GestureDetector(
                  onTap: () {
                    dialogUniwallPrem(context);
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 14),
                    decoration: ShapeDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(-1.00, -0.09),
                        end: Alignment(1, 0.09),
                        colors: [Color(0xFF0075FF), Color(0xFF10B981)],
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Activate UNIWAL Premium!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFF8FAFC),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
