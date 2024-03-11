import 'package:flutter/material.dart';

class PremiumSubscrip extends StatelessWidget {
  const PremiumSubscrip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Premium Subscription:',
          style: TextStyle(
            color: Color(0xFF059669),
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color(0xFF0075FF),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Text(
                      'MicroSavings Feature',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.check,
                  color: Color(0xFF0075FF),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Spend Insights',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
        Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.check,
                    color: Color(0xFF0075FF),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Text(
                      'Exclusive promo codes & coupons ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'Inter',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.check,
                  color: Color(0xFF0075FF),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Ads-Free',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
