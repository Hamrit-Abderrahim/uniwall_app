import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uniwal_app/core/functions/navigatore.dart';
import 'package:uniwal_app/features/home/widget/custom_list_view_item.dart';
import 'package:uniwal_app/features/home/widget/uniwall_premium.dart';
import 'package:uniwal_app/features/notification/notification.dart';
import 'package:uniwal_app/features/persistent_bottom_nav_bar/layouts_view.dart';
import 'package:uniwal_app/features/profile/profile_viea.dart';

import '../../core/functions/text_gradient.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //****** AppBar *****/
                Row(
                  children: [
                    const Expanded(
                      child: Text(
                        'Hi, Chihab.',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: () {
                          Navigate.navigateAndReplace(
                              context, LayoutView(index: 4));
                        },
                        child: SvgPicture.asset(
                          'assets/images/download.svg',
                        )),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigate.navigateTo(context, ProfileView());
                        },
                        child: SvgPicture.asset('assets/images/user.svg')),
                    const SizedBox(
                      width: 16,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigate.navigateTo(context, NotificationView());
                        },
                        child:
                            SvgPicture.asset('assets/images/notification.svg')),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                //********** Banner Text  ******/
                Center(
                    child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Your balance:\n ',
                        style: TextStyle(
                            fontSize: 33.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient),
                      ),
                      TextSpan(
                        text: '22,000 DZD',
                        style: TextStyle(
                            fontSize: 23.0,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()..shader = linearGradient),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )),
                const SizedBox(
                  height: 16,
                ),
                //******** Services near you ********/
                const Text(
                  'Services near you',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const Padding(
                            padding:
                                EdgeInsets.only(top: 10, right: 10, bottom: 16),
                            child: CustomListViewItem(),
                          )),
                ),

                //********* ----  ******/
                Container(
                  color: const Color.fromRGBO(0, 0, 0, 0),
                  height: 194,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 16, left: 16, bottom: 0, right: 16),
                        child: Container(
                          height: 163,
                          decoration: const BoxDecoration(
                              color: Color(0xFF1185EA),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(13))),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                  child: Text(
                                      'Simplify. Share. Thrive.\n Instantly transfer funds with\n friends for shared moments',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigate.navigateAndReplace(
                                        context, LayoutView(index: 1));
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: const Color(0xFF1D4ED8)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Start a P2P transaction',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          SvgPicture.asset(
                                              'assets/images/arrow_right.svg')
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Image(
                            image: AssetImage('assets/images/Girl_Edited.png')),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                //******* ***********/
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigate.navigateTo(context, UniwalPremium());
                    },
                    child: Image(
                        image:
                            AssetImage('assets/images/Savings_Ads_copy.png')),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
