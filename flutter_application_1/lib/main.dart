import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:flutter_application_1/pages/biometric_page.dart";
import "package:flutter_application_1/pages/login_page.dart";
import 'package:google_fonts/google_fonts.dart';
import "package:flutter_application_1/pages/Admin/admin_dashboard.dart";
import "dart:ui";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      routes: {
        "/": (context) => const LoginPage(),
        "/home": (context) => const AdminDashboardPage(),
        "/login": (context) => const LoginPage(),
        "/biometric": (context) => const BiometricAuthenticationPage(),
      },
    );
  }
}
