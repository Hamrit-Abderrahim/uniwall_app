import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotlaWidget extends StatefulWidget {
  const TotlaWidget({
    super.key,
  });
  @override
  State<TotlaWidget> createState() => _TotlaWidgetState();
}

class _TotlaWidgetState extends State<TotlaWidget> {
  bool? isChecked;

  @override
  Widget build(BuildContext context) {
    print(isChecked);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Total:',
          style: TextStyle(
            color: Color(0xFF059669),
            fontSize: 23,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = true;
            });
          },
          child: Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: isChecked == false ? Color(0xFFF1F1F1) : Color(0xFF10B981),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isChecked == false
                    ? SvgPicture.asset('assets/images/round.svg')
                    : SvgPicture.asset(
                        'assets/images/check.svg',
                        color: Colors.white,
                      ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '600 DA / Semester',
                  style: TextStyle(
                    color: isChecked == false ? Colors.black : Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = false;
            });
          },
          child: Container(
            width: double.infinity,
            height: 60,
            padding: const EdgeInsets.all(16),
            decoration: ShapeDecoration(
              color: isChecked == true ? Color(0xFFF1F1F1) : Color(0xFF10B981),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                isChecked != null
                    ? isChecked == true
                        ? SvgPicture.asset(
                            'assets/images/round.svg',
                            color: Colors.black,
                          )
                        : SvgPicture.asset(
                            'assets/images/check.svg',
                            color: Colors.white,
                          )
                    : SvgPicture.asset(
                        'assets/images/round.svg',
                        color: Colors.black,
                      ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '990 DA / Year',
                  style: TextStyle(
                    color: isChecked == false ? Colors.white : Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
