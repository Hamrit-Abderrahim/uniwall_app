import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';
import 'package:uniwal_app/features/wallet/widget/process_cib.dart';
import 'package:uniwal_app/features/wallet/widget/process_dahabia.dart';
import 'package:uniwal_app/features/wallet/widget/process_yassir.dart';

class WalletTopup extends StatefulWidget {
  const WalletTopup({super.key});

  @override
  State<WalletTopup> createState() => _WalletTopupState();
}

class _WalletTopupState extends State<WalletTopup> {
  var controolerText = TextEditingController();
  onKeyboardTap(String value) {
    setState(() {
      controolerText.text = controolerText.text + value;
    });
  }

  var isSelectedRounded = [false, false, false];
  var estateRoomsRoundex = [
    "YASSIR PAY",
    "EDAHABIYA",
    "CIB",
  ];
  var indexOf = 0;
  var indexOfRounded = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/images/arrow_left.svg',
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/download.svg',
              color: Color(0xFF059669),
              height: 30,
              width: 30,
            ),
            Text(
              'Top up',
              style: TextStyle(
                color: Color(0xFF059669),
                fontSize: 33,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Amount:',
                style: Styles.style22,
              ),
              SizedBox(
                height: 24,
              ),
              FormFieledComponent(
                controller: controolerText,
                hint: 'Enter your Amount here (1000 DA)',
                type: TextInputType.none,
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                decoration: ShapeDecoration(
                    color: Color(0xFF10B981),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF1D4ED8)),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(16)),
                    )),
                child: NumericKeyboard(
                    onKeyboardTap: onKeyboardTap,
                    textColor: Color(0xFF1D4ED8),
                    rightButtonFn: () {
                      setState(() {
                        if (controolerText.text.length > 0) {
                          controolerText.text = controolerText.text
                              .substring(0, controolerText.text.length - 1);
                        }
                      });
                    },
                    rightIcon: Icon(
                      Icons.backspace,
                      color: Color(0xFF1D4ED8),
                    ),
                    leftButtonFn: () {
                      print('left button clicked');
                    },
                    leftIcon: Icon(
                      Icons.check,
                      color: Color(0xFF1D4ED8),
                    ),
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'Top-up Method:',
                style: Styles.style22,
              ),
              SizedBox(
                height: 10,
              ),
              for (var item in estateRoomsRoundex)
                SizedBox(
                  height: 30,
                  child: RadioListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    activeColor: const Color(0xFF94A3B8),
                    title: Text(item),
                    value: estateRoomsRoundex.indexOf(item),
                    groupValue: indexOf,
                    onChanged: (value) {
                      setState(() {
                        indexOf = value!;
                        print(indexOf);
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                color: Color(0xFF1D4ED8),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: Color(0xFF1D4ED8),
                  ),
// No text styles in this selection
                ),
                onPressed: () {
                  if (indexOf == 0) {
                    Navigate.navigateAndReplace(context, ProcessYassir());
                  }
                  if (indexOf == 1) {
                    Navigate.navigateAndReplace(context, ProcessDahabia());
                  }
                  if (indexOf == 2) {
                    Navigate.navigateAndReplace(context, ProcessCib());
                  }
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/download.svg',
                      color: Colors.white,
                    ),
                    Text(
                      'Top up',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
