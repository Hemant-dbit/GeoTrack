import 'package:flutter/material.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue, // Set the AppBar background color to blue
        title: const Text('Admin Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const CircleAvatar(
            child: Icon(Icons.person),
            radius: 18,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0), // Reduced overall padding
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10), // Reduced spacing

              // Recent Notifications
              const Text(
                "Recent Notifications",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14, // Reduced font size
                ),
              ),
              const SizedBox(height: 8), // Reduced spacing
              Container(
                padding: const EdgeInsets.all(8), // Reduced padding
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Posted 1 min ago",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Verification Required: You have entered the office vicinity. "
                      "Please confirm your identity within the next 5 minutes to complete your check-in process.",
                      style: TextStyle(fontSize: 12), // Reduced font size
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10), // Reduced spacing

              // Today's Record
              const Text(
                "Today's Record",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14, // Reduced font size
                ),
              ),
              const SizedBox(height: 8), // Reduced spacing
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.access_time, color: Colors.black),
                      SizedBox(width: 5),
                      Text("8:00 AM", style: TextStyle(fontSize: 12)), // Reduced font size
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.help, color: Colors.black),
                      SizedBox(width: 5),
                      Text("NA", style: TextStyle(fontSize: 12)), // Reduced font size
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.black),
                      SizedBox(width: 5),
                      Text("OFFICE 1", style: TextStyle(fontSize: 12)), // Reduced font size
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10), // Reduced spacing

              // Dashboard Buttons
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2, // Increased number of columns
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  children: const [
                    DashboardButton(
                      icon: Icons.person_add,
                      iconColor: Colors.red,
                      label: "Register Employees",
                    ),
                    DashboardButton(
                      icon: Icons.people,
                      label: "Employee List",
                      iconColor: Colors.orange,
                    ),
                    DashboardButton(
                      icon: Icons.assignment,
                      label: "Attendance Reports",
                      iconColor: Colors.grey,
                    ),
                    DashboardButton(
                      icon: Icons.approval,
                      label: "Offsite Work Approvals",
                      iconColor: Colors.blue,
                    ),
                    DashboardButton(
                      icon: Icons.settings,
                      label: "Settings",
                      iconColor: Colors.grey,
                    ),
                    DashboardButton(
                      icon: Icons.location_on,
                      label: "Create GeoFence",
                      iconColor: Colors.green,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final dynamic iconColor;

  const DashboardButton({
    super.key,
    required this.icon,
    required this.label,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3), // Reduced padding
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: iconColor), // Reduced icon size
          const SizedBox(height: 2), // Reduced spacing
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold), // Reduced font size
          ),
        ],
      ),
    );
  }
}
