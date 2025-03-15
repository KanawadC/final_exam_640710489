import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('โปรไฟล์ผู้ใช้'),
        backgroundColor: const Color.fromARGB(255, 38, 111, 221),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                      "https://www.kasandbox.org/programming-images/avatars/leaf-blue.png"),
                ),
                const SizedBox(height: 10),
                const Text(
                  'ชื่อผู้ใช้: John Doe',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                ),
                const Text(
                  'อีเมล: johndoe@example.com',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Row(
                  children: [
                    Icon(Icons.settings, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('การตั้งค่า'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.lock, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('เปลี่ยนรหัสผ่าน'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Icon(Icons.help, color: Colors.blue),
                    SizedBox(width: 10),
                    Text('ความเป็นส่วนตัว'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("เเก้ไขโปรไฟล์")),
                    );
                  },
                  child: const Text('เเก้ไขโปรไฟล์'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("ออกจากระบบ")),
                    );
                  },
                  child: const Text('ออกจากระบบ'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
