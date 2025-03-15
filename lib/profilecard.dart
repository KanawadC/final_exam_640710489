import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light; // โหมดเริ่มต้นเป็น Light Mode

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: _themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor:
            _themeMode == ThemeMode.light ? Colors.pink[50] : Colors.grey[900],
        appBar: AppBar(
          title: const Text("Profile"),
          centerTitle: true,
          backgroundColor: _themeMode == ThemeMode.light
              ? const Color.fromARGB(255, 213, 96, 224)
              : const Color.fromARGB(221, 0, 0, 0),
          actions: [
            IconButton(
              icon: Icon(
                _themeMode == ThemeMode.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: _toggleTheme, // กดแล้วเปลี่ยนธีม
            ),
          ],
        ),
        body: const Center(
          child: ProfileCard(
            name: "Kanawad Choobanna",
            position: "Student",
            email: "choobanna_k@silpakorn.edu",
            studentId: "640710489",
            university: "silpakorn university",
            tel: "0889500899",
            learn: "computer science",
            imageUrl:
                "https://ichef.bbci.co.uk/news/1024/cpsprodpb/F382/production/_123883326_852a3a31-69d7-4849-81c7-8087bf630251.jpg.webp",
          ),
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  final String name;
  final String position;
  final String email;
  final String studentId;
  final String university;
  final String imageUrl;
  final String tel;
  final String learn;

  const ProfileCard({
    super.key,
    required this.name,
    required this.position,
    required this.email,
    required this.university,
    required this.studentId,
    required this.imageUrl,
    required this.tel,
    required this.learn,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8, // เพิ่มมิติให้ Card
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 12),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              position,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Text(
              studentId,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              learn,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              university,
              style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Divider(thickness: 1, height: 20),
            _InfoRow(icon: Icons.email, text: email, iconColor: Colors.blue),
            const SizedBox(height: 10),
            _InfoRow(icon: Icons.phone, text: tel, iconColor: Colors.green),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const _InfoRow({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: iconColor),
        const SizedBox(width: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
