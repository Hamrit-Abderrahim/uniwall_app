import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/layouts_view.dart';

class ProcessDahabia extends StatefulWidget {
  const ProcessDahabia({super.key});

  @override
  State<ProcessDahabia> createState() => _ProcessDahabiaState();
}

class _ProcessDahabiaState extends State<ProcessDahabia> {
  double progress = 0.0;

  void loadData() async {
    for (var i = 0; i <= 100; i++) {
      await Future.delayed(Duration(milliseconds: 30));
      setState(() {
        progress = i / 100.0;
      });
    }

    Navigate.navigateAndReplace(context, LayoutView(index: 0));
  }

  @override
  void initState() {
    loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Processing..',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF173EAD),
                  fontSize: 33,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Image(image: AssetImage('assets/wallet/ccp.png')),
              Padding(
                padding: const EdgeInsets.only(left: 80, right: 80),
                child: LinearPercentIndicator(
                  width: 200.0,
                  lineHeight: 10.0,
                  percent: progress,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Color(0xFFF1F5F9),
                  progressColor: Color(0xFF1D4ED8),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
