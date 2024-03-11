import 'package:flutter/material.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_app_bar.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/features/services/widget/check_out.dart';
import 'package:uniwal_app/features/services/widget/grid_view_item.dart';
import 'package:uniwal_app/features/services/widget/model_service.dart';

class ServicesView extends StatelessWidget {
  const ServicesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        brightness: Brightness.dark,
        statusBar: Brightness.dark,
        title: 'Welcome to service',
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Choose your meal:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              child: GridView.count(
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                childAspectRatio: 1 / 1.4,
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                children: List.generate(service.length,
                    (index) => BuidGrideViewItem(data: service[index])),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Text(
            //           'Total:',
            //           style: TextStyle(
            //             color: Colors.black,
            //             fontSize: 23,
            //             fontWeight: FontWeight.w600,
            //           ),
            //         ),
            //       ),
            //       Text(
            //         '500 DZD',
            //         textAlign: TextAlign.right,
            //         style: TextStyle(
            //           color: Colors.black,
            //           fontSize: 23,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CustomButton(
                  style: Styles.style20.copyWith(color: Colors.white),
                  text: 'Checkout',
                  onTap: () {
                    Navigate.navigateTo(context, CheckOutView());
                  }),
            )
          ],
        ),
      ),
    );
  }
}
