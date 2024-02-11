import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:uniwal_app/core/widget/custom_foem_fieled.dart';
import 'package:uniwal_app/features/savings/widgets/daialog.dart';

class FormNewSaving extends StatefulWidget {
  const FormNewSaving({super.key});

  @override
  State<FormNewSaving> createState() => _FormNewSavingState();
}

class _FormNewSavingState extends State<FormNewSaving> {
  var isSelected = [false, false, false];
  var estateRooms = [
    "Top-Ups",
    "Incoming P2P Transactions",
    "Recurring Deposits"
  ];
  var isSelectedRounded = [false, false, false, false];
  var estateRoomsRoundex = [
    "Weekly",
    "Bi-Weekly",
    "Monthly",
    "Custom..",
  ];
  final dateCtl = TextEditingController();
  final amountController = TextEditingController();
  final savignMethodeController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var indexOf = 0;
  var indexOfRounded = 0;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Desired amount',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 7,
            ),
            FormFieledComponent(
              controller: amountController,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Enter value';
                }
                return null;
              },
              hint: 'ex: 80,000 DZD',
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Target Date',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 7,
            ),
            FormFieledComponent(
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Enter value';
                }
                return null;
              },
              controller: dateCtl,
              hint: 'Input text here',
              suffix: IconButton(
                  onPressed: () async {
                    DateTime date = DateTime(1900);
                    FocusScope.of(context).requestFocus(FocusNode());

                    date = (await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100)))!;

                    dateCtl.text = DateFormat.yMMMEd().format(date);
                  },
                  icon: const Icon(Icons.date_range)),
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Preferred savings method',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 7,
            ),
            FormFieledComponent(
              controller: savignMethodeController,
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'Please Enter value';
                }
                return null;
              },
              hint: 'Input text here',
            ),
            const SizedBox(
              height: 7,
            ),
            const Text(
              'Funding Source',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 7,
            ),
            Column(
              children: [
                for (var item in estateRooms)
                  RadioListTile(
                    dense: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    contentPadding: const EdgeInsets.all(0),
                    activeColor: const Color(0xFF94A3B8),
                    title: Text(item),
                    value: estateRooms.indexOf(item),
                    groupValue: indexOf,
                    onChanged: (value) {
                      setState(() {
                        indexOf = value!;
                        print(indexOf);
                      });
                    },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
              ],
            ),
            Column(
              children: [
                for (var item in estateRoomsRoundex)
                  RadioListTile(
                    dense: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    contentPadding: const EdgeInsets.only(left: 40),
                    activeColor: const Color(0xFF94A3B8),
                    title: Text(item),
                    value: estateRoomsRoundex.indexOf(item),
                    groupValue: indexOf != 2 ? null : indexOfRounded,
                    onChanged: indexOf != 2
                        ? null
                        : (int? value) {
                            setState(() {
                              indexOfRounded = value!;
                              if (indexOfRounded == 3) {
                                dialog(context);
                              }
                            });
                          },
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // if (formKey.currentState!.validate()) {}
                //  Navigate.navigateAndReplace(context, NewSaving());
              },
              child: Container(
                height: 34,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF1D4ED8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SvgPicture.asset('assets/images/arrow_right.svg'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ));
  }
}
