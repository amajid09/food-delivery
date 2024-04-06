import 'package:flutter/material.dart';
import 'package:state_management/pages/login_page.dart';
import 'package:state_management/pages/registration_page.dart';

class LoginOrRegister extends StatefulWidget {
  const LoginOrRegister({super.key});

  @override
  State<LoginOrRegister> createState() => _LoginOrRegisterState();
}

class _LoginOrRegisterState extends State<LoginOrRegister> {
  bool isLogin = true;

  void togglePage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLogin ? Login(onTap: togglePage) : Registration(onTap: togglePage);
  }
}
