import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/features/auth/login/login_view.dart';
import 'package:uniwal_app/features/onBoarding/widget/on_boarding_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  bool isLast = false;

  PageController pageController = PageController();
  void submit() {
    Navigate.navigateAndReplace(context, const LoginView());
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // navigation bar color
      statusBarIconBrightness: Brightness.dark,
      // status bar color
    ));

    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: const Color(0xFF1185EA),
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (int index) {
                  if (index == onBoarding.length - 1) {
                    setState(() {
                      isLast = true;
                    });
                  } else {
                    setState(() {
                      isLast = false;
                    });
                  }
                  print(isLast);
                },
                controller: pageController,
                itemBuilder: (context, index) =>
                    buildOnBoardingItem(onBoarding[index]),
                itemCount: onBoarding.length,
              ),
            ),
          ],
        ));
  }

  Widget buildOnBoardingItem(BoardingModel model) => Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                    top: MediaQuery.of(context).size.height * .2,
                    child: Image(
                        height: MediaQuery.of(context).size.height * .43,
                        image: AssetImage(model.image))),
                Positioned(
                  bottom: MediaQuery.of(context).size.height * .40,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: onBoarding.length,
                    axisDirection: Axis.horizontal,
                    effect: const ScrollingDotsEffect(
                      offset: 3.0,
                      spacing: 5.0,
                      radius: 10.0,
                      dotWidth: 10.0,
                      dotHeight: 10.0,
                      paintStyle: PaintingStyle.fill,
                      strokeWidth: 1.5,
                      dotColor: Color(0xFF1185EA),
                      activeDotColor: Color(0xFF00D43A),
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    width: double.infinity,
                    height: 300,
                    padding: const EdgeInsets.all(16),
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment(0.00, -3.000),
                      end: Alignment(0, 1),
                      colors: [Color(0x004F85D1), Color(0xFF1CA98B)],
                    )),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.title,
                          textAlign: TextAlign.start,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 28.0,
                              fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(model.body,
                            textAlign: TextAlign.start,
                            style: const TextStyle(
                                fontSize: 19.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 20,
                        ),
                        if (isLast == true)
                          CustomButton(
                              height: 35,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 14),
                              text: 'Get Started',
                              onTap: () {
                                if (isLast == true) {
                                  submit();
                                } else {
                                  pageController.nextPage(
                                    duration: const Duration(milliseconds: 750),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                  );
                                }
                              }),
                        const SizedBox(
                          height: 15,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      );
}
