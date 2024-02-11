import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        AspectRatio(
          aspectRatio: 2.5 / 1.5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/EHEC_Foyer.png'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                const Color(0xFF00C508).withOpacity(.2),
                const Color(0xFF2A00FF).withOpacity(.0),
              ])),
              height: 25,
              child: const Text(
                'EHEC Foyer',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              )),
        )
      ],
    );
  }
}
