import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons/lucide_icons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1E85A),
      body: Column(
        children: [
          // هدر بالا با لوگو و عنوان
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Color(0xFFA4D87E),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // لوگو و عنوان
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'مدیریت دخل و خرج',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF276433),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/images/pou5.svg',
                      width: 65,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // باکس آمار
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFBEE0C7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _tapBox("پرداختی ماه"),
                      _tapBox("مانده ماه"),
                      _tapBox("دریافتی ماه"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          // دکمه‌های میانبر
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: _actionButton("مشاهده گزارش ها", LucideIcons.barChart),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _actionButton("لیست دخل و خرج", LucideIcons.list),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFFF1F6DB),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(Icons.more_horiz, color: Color(0xFF276433)),
            Icon(Icons.notifications, color: Color(0xFF276433)),
            Icon(Icons.home, color: Color(0xFF276433)),
            Icon(Icons.calendar_today, color: Color(0xFF276433)),
          ],
        ),
      ),
    );
  }

  // باکس آمار
  Widget _tapBox(String label) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFF173F2F),
          ),
        ),
        const SizedBox(height: 5),
        const Icon(Icons.circle, size: 10, color: Color(0xFF173F2F)),
      ],
    );
  }

  // دکمه‌های عملکرد
  Widget _actionButton(String text, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: BoxDecoration(
        color: const Color(0xFFA4D87E),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 18, color: const Color(0xFF173F2F)),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF173F2F),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
