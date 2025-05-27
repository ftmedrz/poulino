import 'package:flutter/material.dart';
import 'name_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String? _phoneError;
  String? _passwordError;

  bool _isPhoneValid = false;
  bool _isPasswordValid = false;
  bool _obscurePassword = true;


  void _validateInputs() {
    String phone = _phoneController.text.trim();
    String password = _passwordController.text;

    setState(() {
      // اعتبارسنجی شماره موبایل
      if (RegExp(r'^(?:0)?9\d{9}$').hasMatch(phone)) {
        _phoneError = null;
        _isPhoneValid = true;
      } else {
        _phoneError = 'شماره موبایل معتبر نیست';
        _isPhoneValid = false;
      }

      // اعتبارسنجی رمز عبور
      if (password.length >= 6) {
        _passwordError = null;
        _isPasswordValid = true;
      } else {
        _passwordError = 'رمز عبور باید حداقل 6 کاراکتر باشد';
        _isPasswordValid = false;
      }
    });
  }

  void _onSubmit() {
    _validateInputs();

    if (_isPhoneValid && _isPasswordValid) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const NameScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFBEE0C7),
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      'ثبت نام در پولینو',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF266433),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'ثبت نام با شماره موبایل/ایمیل:',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF266433),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // شماره موبایل / ایمیل
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF90CBA0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _phoneController,
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 17, // اندازه بزرگ‌تر
                          // fontWeight: FontWeight.bold, // ضخیم (بولد)
                          color: Colors.black87, // رنگ مناسب
                        ),
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'شماره موبایل یا ایمیل',
                        ),
                      ),
                    ),
                    if (_phoneError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4, right: 12),
                        child: Text(
                          _phoneError!,
                          style: const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                    const SizedBox(height: 16),

                    // رمز عبور
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF90CBA0),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: _passwordController,
                        obscureText: _obscurePassword, // ← مخفی‌سازی رمز عبور
                        textAlign: TextAlign.right,
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رمز عبور',
                          suffixIcon: IconButton(
                            icon: Icon(
                              _obscurePassword ? Icons.visibility_off : Icons.visibility,
                              color: Colors.grey[700],
                            ),
                            onPressed: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                          ),
                        ),
                      ),
                    ),

                    if (_passwordError != null)
                      Padding(
                        padding: const EdgeInsets.only(top: 4, right: 12),
                        child: Text(
                          _passwordError!,
                          style: const TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                  ],
                ),
              ),

              // دکمه در پایین صفحه
              Positioned(
                bottom: 40,
                left: size.width * 0.1,
                right: size.width * 0.1,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: _onSubmit,
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
                      'ثبت نام',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
