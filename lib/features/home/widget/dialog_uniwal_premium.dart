import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/color.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/layouts_view.dart';

void dialogUniwallPrem(BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierDismissible: true,
      transitionDuration: const Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: const Color(0xFF101522).withOpacity(.3),
      pageBuilder: (context, _, __) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .9,
              height: MediaQuery.of(context).size.height * .38,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(26.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('assets/images/appIcon.png'),
                          width: 47,
                          height: 58,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Image(
                          image: AssetImage('assets/images/niwal.png'),
                          width: 145,
                          height: 45,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Center(
                      child: Image(
                        image: AssetImage('assets/images/prem.png'),
                        width: 200,
                        height: 35,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const DefaultTextStyle(
                      style: TextStyle(decoration: TextDecoration.none),
                      child: Text(
                        'Congratulations on your subscription! You\'re all set to enjoy the full benefits of UNIWAL!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: MyColors.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      width: double.infinity,
                      height: 34,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 8),
                      decoration: ShapeDecoration(
                        color: Color(0xFF1D4ED8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigate.navigateAndReplace(
                              context, LayoutView(index: 3));
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DefaultTextStyle(
                              style: TextStyle(decoration: TextDecoration.none),
                              child: Text(
                                'Launch Microsving Feature',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF8FAFC),
                                  fontSize: 12,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SvgPicture.asset('assets/images/arrow_right.svg'),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      });
}
