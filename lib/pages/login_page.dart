import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:state_management/components/my_button.dart';
import 'package:state_management/components/text_field.dart';
import 'package:state_management/pages/home_page.dart';

class Login extends StatefulWidget {
  Login({super.key, required this.onTap});

  final Function()? onTap;

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  void login() {
    /*
      fill authentication here..
    */

    Navigator.push(context, MaterialPageRoute(builder: ((context) => const Home())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //message, app slogan
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
              controller: emailController,
              obscureText: false,
              hintText: 'Email',
            ),
            const SizedBox(
              height: 12,
            ),
            //password textfield
            MyTextField(
              controller: passwordController,
              obscureText: true,
              hintText: 'password',
            ),
            //sign in button
            const SizedBox(
              height: 12,
            ),
            MyButton(
              onTap: login,
              text: 'Sign in',
            ),
            //not a member? register now
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
