import 'package:flutter/material.dart';
import 'package:my_chats/screens/chat_screen.dart';
import 'package:my_chats/screens/login_screen.dart';
import 'package:my_chats/screens/registration_screen.dart';
import 'package:my_chats/screens/welcome_screen.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LogInScreen.id: (context) => const LogInScreen(),
        RegistrationScreen.id: (context) => const RegistrationScreen(),
        ChatScreen.id: (context) => const ChatScreen(),
      },
    );
  }
}
