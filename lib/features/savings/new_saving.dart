import 'package:flutter/material.dart';
import 'package:uniwal_app/features/savings/widgets/form_new_saving.dart';

class NewSaving extends StatelessWidget {
  const NewSaving({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(vertical: 26, horizontal: 26),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Savings Goal:',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 16,
            ),
            FormNewSaving()
          ],
        ),
      ),
    ));
  }
}
