import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'login_screen.dart';
import 'nextt_screen.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

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
                          SizedBox(height: height * 0.02),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.024),
                            child: Text(
                              'نگران حساب',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: width * 0.09,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.002),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.05),
                            child: Text(
                              ' و کتاب نباش!',
                              style: TextStyle(
                                fontSize: width * 0.09,
                                fontWeight: FontWeight.w900,
                                color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.02),
                            child: Text(
                              'تو فقط خوش بگذرون',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: width * 0.07, color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.01),
                          Padding(
                            padding: EdgeInsets.only(right: width * 0.03),

                            child: Text(
                              'من حواسم به همه چی\nهست!',
                              style: TextStyle(
                                fontSize: width * 0.07, color: const Color(0xFF266433),
                              ),
                            ),
                          ),
                        ],
                      ),

                      // دکمه‌ها
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: ElevatedButton(
                              onPressed: () {
                                Get.off(() => const NexttScreen());
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
              bottom: height * 0.45,
              left: width * 0.002,
              child: SvgPicture.asset(
                'assets/images/pou2.svg',
                width: width * 0.36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
