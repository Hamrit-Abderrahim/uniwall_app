import 'package:flutter/material.dart';
import 'package:uniwal_app/core/utils/color.dart';
import 'package:uniwal_app/core/utils/styles.dart';
import 'package:uniwal_app/core/widget/custom_button.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';

void dialog(BuildContext context) {
  showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 500),
      barrierLabel: MaterialLocalizations.of(context).dialogLabel,
      barrierColor: const Color(0xFF101522).withOpacity(.3),
      pageBuilder: (context, _, __) {
        List<bool> selectedDays = List.generate(7, (index) => false);

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * .8,
              height: MediaQuery.of(context).size.height * .5,
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
                    const DefaultTextStyle(
                      style: TextStyle(decoration: TextDecoration.none),
                      child: Text(
                        'Custom recurrence',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: MyColors.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const DefaultTextStyle(
                      style: TextStyle(decoration: TextDecoration.none),
                      child: Text(
                        'Repeats every:',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MyColors.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Material(
                      child: Row(
                        children: [
                          const SizedBox(
                              width: 45,
                              child: FormFieledComponent(
                                hint: '  1',
                                enableBoderColor: Color(0xFFCBD5E1),
                              )),
                          const SizedBox(
                            width: 16,
                          ),
                          const Expanded(
                              child: FormFieledComponent(
                            enableBoderColor: Color(0xFFCBD5E1),
                            hint: 'Week',
                          )),
                          Container(
                              height: 48,
                              width: 34,
                              color: const Color(0xFFF1F5F9),
                              child: const Align(
                                  child: Icon(Icons.arrow_downward)))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const DefaultTextStyle(
                      style: TextStyle(decoration: TextDecoration.none),
                      child: Text(
                        'Repeats on::',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: MyColors.textColor),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Material(
                      child: SizedBox(
                        height: 36,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              Item(selectedDays: selectedDays, index: index),
                          itemCount: 7,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CustomButton(
                            backgroundColor: Colors.white,
                            minWidth: 55,
                            style: Styles.style16
                                .copyWith(color: const Color(0xFF1D4ED8)),
                            text: 'Cancel ',
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CustomButton(
                            minWidth: 55,
                            style: Styles.style16.copyWith(color: Colors.white),
                            text: 'Done',
                            onTap: () {
                              Navigator.pop(context, false);
                            },
                          ),
                        ],
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

class Item extends StatefulWidget {
  const Item({
    super.key,
    required this.selectedDays,
    required this.index,
  });
  final int index;
  final List<bool> selectedDays;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            widget.selectedDays[widget.index] =
                !widget.selectedDays[widget.index];
            print(widget.selectedDays);
          });
        },
        child: Container(
          height: 36,
          width: 36,
          decoration: BoxDecoration(
            border: Border.all(
                width: 1,
                color: widget.selectedDays[widget.index]
                    ? const Color(0xFF0075FF)
                    : Colors.grey),
            shape: BoxShape.circle,
            color: widget.selectedDays[widget.index]
                ? const Color(0xFF0075FF)
                : Colors.white,
          ),
          child: const Center(
              child: Text(
            'S',
            style: TextStyle(fontSize: 14, color: Color(0xFFCBD5E1)),
          )),
        ),
      ),
    );
  }
}
