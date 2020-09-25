import 'package:basecode/screens/DashboardScreen.dart';
import 'package:basecode/screens/ForgotPasswordScreen.dart';
import 'package:basecode/screens/RegistrationScreen.dart';
import 'package:basecode/widgets/SecondaryButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/PrimaryButton.dart';
import '../widgets/CustomTextFormField.dart';
import '../widgets/PasswordField.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "login";
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  CustomTextFormField(
                      labelText: "Email",
                      hintText: "Enter a valid email.",
                      iconData: FontAwesomeIcons.solidEnvelope,
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PasswordField(
                      obscureText: _obscureText,
                      onTap: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      labelText: "Password",
                      hintText: "Enter your password",
                      controller: TextEditingController()),
                  SizedBox(
                    height: 20.0,
                  ),
                  PrimaryButton(
                      text: "Login",
                      iconData: FontAwesomeIcons.doorOpen,
                      onPress: () {
                        //authenticate here
                        Navigator.pushReplacementNamed(
                            context, DashboardScreen.routeName);
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  PrimaryButton(
                      text: "Sign-in with Google",
                      iconData: FontAwesomeIcons.google,
                      onPress: () {
                        //authenticate here
                        Navigator.pushReplacementNamed(
                            context, DashboardScreen.routeName);
                      }),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SecondaryButton(
                          text: "New User? Register",
                          onPress: () {
                            Navigator.pushReplacementNamed(
                                context, RegistrationScreen.routeName);
                          }),
                      SecondaryButton(
                          text: "Forgot Password?",
                          onPress: () {
                            Navigator.pushNamed(
                                context, ForgotPasswordScreen.routeName);
                          }),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
