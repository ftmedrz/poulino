import 'package:flutter/material.dart';
import 'home_screen.dart';


class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  final TextEditingController _nameController = TextEditingController();
  bool _isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {
        _isButtonEnabled = _nameController.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
  void _goToHomeScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const HomeScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFBEE0C7),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  'ساخت حساب کاربری',
                  style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF266433),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'یه اسم برای حساب کاربریت بذار:',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF266433),
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF90CBA0),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _nameController,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 17, // اندازه بزرگ‌تر
                    //  fontWeight: FontWeight.bold, // ضخیم (بولد)
                      color: Colors.black87, // رنگ مناسب
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'نام کاربری',
                    ),
                  ),

                ),
                const SizedBox(height: 8),
                const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Text(
                    'میتونی بعداً تغییرش بدی.',
                    style: TextStyle(fontSize: 13.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _isButtonEnabled
                        ? _goToHomeScreen
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4E04D),
                      foregroundColor: Colors.black,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      elevation: 2,
                    ),
                    child: const Text(
                      'بعدی',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
