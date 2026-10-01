import 'package:flutter/material.dart';
import 'package:testone/screens/register_screen.dart';
import 'package:testone/widget/button_widget.dart';
import 'package:testone/widget/textfield_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  late bool cc;

  void initState() {
    super.initState();
    cc = true;
    emailcontroller.text = "";
  }

  @override
  void dispose() {
    emailcontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 59, bottom: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login to your account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "It’s great to see you again.",
              style: TextStyle(color: Color(0xFF808080), fontSize: 16),
            ),
            SizedBox(height: 30),
            Text("Email", style: TextStyle(color: Colors.black, fontSize: 16)),
            SizedBox(height: 4),
            CustomTextField(
              textFeildcontroller: emailcontroller,
              hintText: 'Enter your email address',
              isVisable: false,
              icon: null,
            ),
            SizedBox(height: 16),
            Text(
              "Password",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 4),
            CustomTextField(
              textFeildcontroller: passwordcontroller,
              hintText: 'Enter your password',
              isVisable: cc,
              icon: IconButton(
                icon: Icon(cc ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    cc = !cc;
                  });
                },
              ),
            ),
            SizedBox(height: 55),
            CustomButton(
              textbutton: "Sign In",
              onTap: () {
                Navigator.pushNamed(context, '/home_screen');
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account? ",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()),
                    );
                  },
                  child: Text(
                    "Join",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
