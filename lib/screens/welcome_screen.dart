import 'package:flutter/material.dart';
import 'package:my_chats/constant.dart';
import 'package:my_chats/screens/login_screen.dart';
import 'package:my_chats/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 180,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              elevation: 5.0,
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, LogInScreen.id);
                },
                minWidth: 200.0,
                height: 42.0,
                child: const Text(
                  'Log In',
                  style: kbuttonTextStyle,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Material(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.circular(30.0),
              elevation: 5.0,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                },
                minWidth: 200.0,
                height: 42.0,
                child: const Text(
                  'Register',
                  style: kbuttonTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
