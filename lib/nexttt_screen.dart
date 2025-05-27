import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class NextttScreen extends StatelessWidget {
  const NextttScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFF4E04D),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width * 0.85,
                height: height * 0.65,
                decoration: const BoxDecoration(
                  color: Color(0xFFBEE0C7),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(130),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                    width * 0.06,
                    height * 0.07,
                    width * 0.06,
                    height * 0.08,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // متن‌ها
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: height * 0.06),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.024),
                            child: Text(
                              'یه نگاه به نمودار بنداز تا ببینی:',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.002),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.024),
                            child: Text(
                              'پرخرج ترین ماهت کی بوده؟',
                              style: TextStyle(
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.002),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Text(
                              ' تونستی پس‌انداز کنی؟',
                              style: TextStyle(
                                fontSize: width * 0.06,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Text(
                              '\n ',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: width * 0.06,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(right: width * 0.02),
                          //   child: Text(
                          //     'به من!',
                          //     style: TextStyle(
                          //       fontSize: width * 0.05,
                          //       fontWeight: FontWeight.w300,
                          //       color: const Color(0xFF266433),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),

                      // دکمه‌ها
                      // دکمه ورود به برنامه با بردر سبز و shadow
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: const Color(0xFF266433), // سبز تیره
                            width: 1.5,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.off(() => const LoginScreen());
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: const Color(0xFF266433),
                            elevation: 0, // چون از BoxShadow استفاده کردیم
                            padding: EdgeInsets.symmetric(
                              vertical: height * 0.012,
                              horizontal: width * 0.05,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: Text(
                            'ورود به برنامه',
                            style: TextStyle(
                              fontSize: width * 0.045,
                              fontWeight: FontWeight.w900,
                            ),

                          ),
                        ),

                      ),

                    ],
                  ),
                ),
              ),
            ),

            Positioned(
              bottom: height * 0.63,
              right: width * 0.22,
              child: SvgPicture.asset(
                'assets/images/nemodar.svg',
                width: width * 0.3,
              ),
            ),
            Positioned(
              bottom: height * 0.52,
              left: width * 0.13,
              child: SvgPicture.asset(
                'assets/images/pou4.svg',
                width: width * 0.43,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
