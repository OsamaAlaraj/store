import "package:flutter/material.dart";
import "package:testone/screens/login.dart";
import "package:testone/widget/button_widget.dart";
import "package:testone/widget/storeTextField.dart";

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late bool hidepassword1;
  late bool hidepassword2;
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _confirm_passwordcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    hidepassword1 = true;
    hidepassword2 = true;
  }

  @override
  void dispose() {
    _namecontroller.dispose();
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    _confirm_passwordcontroller.dispose();

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
              "Create an account",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "Let’s create your account.",
              style: TextStyle(color: Color(0xFF808080), fontSize: 16),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Full Name",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            StoreTextField(
              textFeildcontroller: _namecontroller,
              hintText: 'Enter your full name',
              isVisable: false,
              icon: null,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Email Address",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            StoreTextField(
              textFeildcontroller: _emailcontroller,
              hintText: 'Enter your email address',
              isVisable: false,
              icon: null,
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Password",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            StoreTextField(
              textFeildcontroller: _passwordcontroller,
              hintText: 'Enter your email address',
              isVisable: hidepassword1,
              icon: IconButton(
                icon: Icon(
                  hidepassword1 ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    hidepassword1 = !hidepassword1;
                  });
                },
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Confirm Password",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            StoreTextField(
              textFeildcontroller: _confirm_passwordcontroller,
              hintText: 'Enter your password ',
              isVisable: hidepassword2,
              icon: IconButton(
                icon: Icon(
                  hidepassword2 ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    hidepassword2 = !hidepassword2;
                  });
                },
              ),
            ),
            SizedBox(height: 50),
            ButtonWidget(
              textbutton: "Create Account",
              onTap: () {
                Navigator.pushNamed(context, "/home_screen");
              },
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Log In",
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
