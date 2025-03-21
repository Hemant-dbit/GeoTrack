import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Employees/biometric_page.dart';
import 'package:flutter_application_1/pages/Employees/geolocation_page.dart';
import 'package:flutter_application_1/pages/Employees/offsitework_page.dart';
import 'package:flutter_application_1/pages/Employees/services_page.dart';

class EmployeeDashboard extends StatelessWidget {
  const EmployeeDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Employee Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('assets/manager.png'), // Ensure this asset path is correct
          ),
        ],
      ),
      body: Column(
        children: [
          // Recent Notifications Section
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Row(
              children: [
                Icon(Icons.info, color: Colors.deepPurple),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'Verification Required: You have entered the office vicinity. Please confirm your identity within the next 5 minutes to complete your check-in process.',
                    style: TextStyle(color: Colors.black87),
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(height: 20),

          // Today's Record Section
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              children: [
                Text(
                  "Today's Record",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.schedule, color: Colors.deepPurple),
                        SizedBox(height: 5),
                        Text('9:00 AM'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.close, color: Colors.deepPurple),
                        SizedBox(height: 5),
                        Text('NA'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.location_on, color: Colors.deepPurple),
                        SizedBox(height: 5),
                        Text('OFFICE 1'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // Daily Attendance Records Section
          const Text(
            'Daily Attendance Records',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          // const SizedBox(height: 10),

          // Attendance records in GridView
          Expanded(
            child: GridView.count(
              crossAxisCount: 2, // Number of records in each row
              padding: const EdgeInsets.all(6),
              childAspectRatio: 1.25, // Aspect ratio of each box
              children: [
                ...[
                  {"date": "Aug 23, 2024", "in": "9:00 AM", "out": "5:00 PM", "location": "OFFICE 1"},
                  {"date": "Aug 22, 2024", "in": "9:15 AM", "out": "5:15 PM", "location": "OFFICE 2"},
                  {"date": "Aug 21, 2024", "in": "8:45 AM", "out": "4:45 PM", "location": "OFFICE 1"},
                  {"date": "Aug 20, 2024", "in": "9:00 AM", "out": "5:00 PM", "location": "OFFICE 2"},
                ].map((record) {
                  return Container(
                    padding: const EdgeInsets.all(16.0),
                    margin: const EdgeInsets.all(8.0), // Space between boxes
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          record["date"]!,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        Text('Check-in: ${record["in"]}'),
                        Text('Check-out: ${record["out"]}'),
                        const SizedBox(height: 5),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                            color: Colors.deepPurple[50],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            'Location: ${record["location"]}',
                            style: const TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),

          // Total Working Hours Section
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Working Hours',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text('Today: 4 Hrs'),
                Text('This Week: 36 Hrs'),
                Text('This Month: 172 Hrs'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fingerprint),
            label: 'Attendance',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Geolocation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Offsite Work',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.miscellaneous_services),
            label: 'Services',
          ),
        ],
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          switch (index) {
            case 0: // Home
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmployeeDashboard()),
              );
              break;
            case 1: // Attendance
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BiometricPage()),
              );
              break;
            case 2: // Geolocation
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const GeolocationPage()),
              );
              break;
            case 3: // Offsite Work
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const OffsiteWorkPage()),
              );
              break;
            case 4: // Services
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ServicesPage()),
              );
              break;
          }
        },
      ),
      );
  }
}


