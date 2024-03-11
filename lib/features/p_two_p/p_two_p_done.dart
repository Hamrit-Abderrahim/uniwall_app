import 'package:flutter/material.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/layouts_view.dart';

class PTwoPDone extends StatelessWidget {
  const PTwoPDone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'P2P Done',
          style: Styles.style17,
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [
              Color(0xFF34D399),
              Colors.white,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(32.0),
                  child: Column(
                    children: [
                      Icon(Icons.check),
                      SizedBox(
                        height: 16,
                      ),
                      Text.rich(TextSpan(children: [
                        TextSpan(
                            text: '1000 DZD ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w700)),
                        TextSpan(
                            text: 'transferred successfully to',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400))
                      ])),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        '@YassirDZ',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF249C44),
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 18),
                  text: 'Done',
                  minWidth: 86,
                  onTap: () {
                    Navigate.navigateAndReplace(
                        context,
                        const LayoutView(
                          index: 1,
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
