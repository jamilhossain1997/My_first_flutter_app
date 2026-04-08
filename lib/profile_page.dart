import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://i.pravatar.cc/150?img=3',
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Md Jamil Hossain",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 5),

            const Text(
              "jamilhossain4792@gmail.com",
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 20),
            _buildTile(Icons.phone, "Phone", "+8801XXXXXXXXX"),
            _buildTile(Icons.location_on, "Location", "Dhaka, Bangladesh"),
            _buildTile(Icons.work, "Profession", "Software Developer"),

            const SizedBox(height: 20),

            // ✏️ Edit Button
            ElevatedButton.icon(
              onPressed: () {
                // TODO: Edit profile
              },
              icon: const Icon(Icons.edit),
              label: const Text("Edit Profile"),
            ),

            const SizedBox(height: 10),

            // 🚪 Logout Button
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {
                // TODO: Logout
              },
              icon: const Icon(Icons.logout),
              label: const Text("Logout"),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // 🔧 Reusable tile
  Widget _buildTile(IconData icon, String title, String value) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: Text(value),
    );
  }
}