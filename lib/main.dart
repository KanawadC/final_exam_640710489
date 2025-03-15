import 'package:flutter/material.dart';
import 'package:final_exam_640710489/answer1.dart';

void main() {
  runApp(const MaterialApp(
    home: AnswerPortal(),
  ));
}

class AnswerPortal extends StatelessWidget {
  const AnswerPortal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My Answer'),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 204, 49),
      ),
      backgroundColor: const Color.fromARGB(255, 242, 218, 240),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfilePage()));
                },
                child: const Text('Answer 1')),
          ],
        ),
      ),
    );
  }
}
