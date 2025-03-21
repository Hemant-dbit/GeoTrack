import 'package:flutter/material.dart';
//import 'package:flutter_application_1/pages/Admin/admin_dashboard.dart';
import 'package:flutter_application_1/pages/Employees/employee_dashboard.dart';
import 'package:flutter_application_1/pages/Admin/admin_dashboard.dart';
//import 'package:flutter_application_1/pages/Employees/employee_dashboard.dart';

class BiometricAuthenticationPage extends StatelessWidget {
  const BiometricAuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {

    void biometric() {
     // Navigate to HomePage if validation is successful
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AdminDashboardPage()),
        );
  }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: Center(
          
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 80),
              const Text(
                "LOGO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 30),
              const Text(
                "Biometric Authentication",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Use fingerprint or face scan for second factor authentication.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.fingerprint, size: 50, color: Colors.grey),
                  SizedBox(width: 20),
                  Icon(Icons.face, size: 50, color: Colors.grey),
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed:biometric,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 79, 111, 197),
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Verify",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  
}
