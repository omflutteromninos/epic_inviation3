//import 'package:epic_inviation/Authentication/otp_test.dart';
import 'dart:collection';

import 'package:epic_inviation/Authentication/reset_password_screen.dart';
import 'package:epic_inviation/InvitationScreens/invites_screen.dart';
import 'package:epic_inviation/InvitationScreens/send_invitesto_screen.dart';
import 'package:epic_inviation/SplashScreen/splash_screen.dart';
import 'package:epic_inviation/contacts/contacts_screen.dart';
import 'package:epic_inviation/spin/final_spin_screen.dart';
import 'package:epic_inviation/spin/spin.dart';
import 'package:epic_inviation/spin/spin_test.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      home: MySplashScreen(),
    );
  }
}
