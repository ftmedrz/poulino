import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_screen.dart';
import 'nexttt_screen.dart';

class NexttScreen extends StatelessWidget {
  const NexttScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFBEE0C7),
        body: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: width * 0.85,
                height: height * 0.65,
                decoration: const BoxDecoration(
                  color: Color(0xFFF4E04D),
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
                          SizedBox(height: height * 0.03),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.024),
                            child: Text(
                              'اووو رفیق!',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: width * 0.09,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.024),
                            child: Text(
                              'وقت تسویه‌ست!',
                              style: TextStyle(
                                fontSize: width * 0.065,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.025),
                            child: Text(
                              textAlign: TextAlign.left,
                              'یادت نره',
                              style: TextStyle(
                                fontSize: width * 0.07,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.001),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.015),
                            child: Text(
                              'قرض و قوله‌تُ',
                              style: TextStyle(
                                fontSize: width * 0.08,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.001),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.3),
                            child: Text(
                              'پرداخت کنی!',
                             // textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: width * 0.07,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),

                        ],
                      ),

                      // دکمه‌ها
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.off(() => const NextttScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF266433),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.012,
                                  horizontal: width * 0.05,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'برو بعدی',
                                style: TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.w900,),
                              ),
                            ),
                          ),
                          const SizedBox(width: 12),
                          Flexible(
                            child: OutlinedButton(
                              onPressed: () {
                                Get.off(() => const LoginScreen());
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Color(0xFF266433)),
                                foregroundColor: const Color(0xFF266433),
                                padding: EdgeInsets.symmetric(
                                  vertical: height * 0.01,
                                  horizontal: width * 0.05,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              child: Text(
                                'رد شدن',
                                style: TextStyle(fontSize: width * 0.045, fontWeight: FontWeight.w900,),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // شخصیت کارتونی پایین سمت چپ
            Positioned(
              bottom: height * 0.5,
              left: width * 0.06,
              child: SvgPicture.asset(
                'assets/images/pou3.svg',
                width: width * 0.55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
