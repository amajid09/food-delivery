import 'package:flutter/material.dart';
import 'package:state_management/components/my_button.dart';
import 'package:state_management/components/text_field.dart';

class Registration extends StatefulWidget {
  final Function()? onTap;

  const Registration({super.key, required this.onTap});
  @override
  State<Registration> createState() => _Registration();
}

class _Registration extends State<Registration> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
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
              hintText: 'email',
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
            //confirm password
            const SizedBox(
              height: 12,
            ),
            MyTextField(
              controller: confirmPasswordController,
              obscureText: true,
              hintText: 'confirm password',
            ),
            //sign in button
            const SizedBox(
              height: 12,
            ),
            //sign in button
            MyButton(
              onTap: () {},
              text: 'Sign up',
            ),
            //Already a member? Login now
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already a member?',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    'Login now',
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
