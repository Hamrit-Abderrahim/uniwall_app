import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/core/functions/text_gradient.dart';
import 'package:uniwal_app/features/wallet/wallet%20_topup.dart';

class MyWallet extends StatelessWidget {
  const MyWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to your e-wallet',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Your balance:',
                  style: TextStyle(
                      fontSize: 33.0,
                      fontWeight: FontWeight.bold,
                      foreground: Paint()..shader = linearGradient),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  '22,000 DZD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF059669),
                    fontSize: 23,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Transactions history:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    listTileItem(
                      image: 'assets/wallet/Profile Pic Placeholder.png',
                      title: 'Top-Up (YOU)',
                      subtitle: 'cdrissi_etd@esgen.edu.dz',
                      trailing: '+300 DZD',
                    ),
                    listTileItem(
                      image: 'assets/wallet/Mimouni.png',
                      title: 'Mimouni Ismail',
                      subtitle: 'cdrissi_etd@esgen.edu.dz',
                      trailing: '-250 DZD',
                      color: Colors.red,
                    ),
                    listTileItem(
                      image: 'assets/wallet/Profile Pic.png',
                      title: 'DOU Tipaza',
                      subtitle: 'Direction des oeuvres universitaires',
                      trailing: '+2000 DZD',
                    ),
                    listTileItem(
                      image: 'assets/wallet/image 5.png',
                      title: 'Sebaa Abderrahim',
                      subtitle: 'Sabderrahim_etd@hec.dz',
                      trailing: '-1200 DZD',
                      color: Colors.red,
                    ),
                    listTileItem(
                      image: 'assets/wallet/Plan de travail 1 1.png',
                      title: 'ESGEN',
                      subtitle: 'Esgen Kolea',
                      trailing: '+33 000 DZD',
                    ),
                    listTileItem(
                      image: 'assets/wallet/Bouzid.png',
                      title: 'Bouzid Lotfi',
                      subtitle: 'blotfi_etd@esgen.edu.dz',
                      trailing: '-900 DZD',
                      color: Colors.red,
                    ),
                    MaterialButton(
                      color: Color(0xFF1D4ED8),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          color: Color(0xFF1D4ED8),
                        ),
                      ),
                      onPressed: () {
                        Navigate.navigateTo(context, WalletTopup());
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
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class listTileItem extends StatelessWidget {
  const listTileItem({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.trailing,
    this.color = const Color(0xFF059669),
  });
  final String image;
  final String title;
  final String subtitle;
  final String trailing;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image(
        image: AssetImage(image),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Color(0xFF0F172A),
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Color(0xFF64748B),
          fontSize: 12,
        ),
      ),
      trailing: Text(
        trailing,
        textAlign: TextAlign.right,
        style: TextStyle(
          color: color,
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
