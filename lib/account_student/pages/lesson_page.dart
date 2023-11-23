import 'package:flutter/material.dart';
import 'package:ikro_account_student1/account_student/pages/lesson_page2.dart';

class LessonPage extends StatelessWidget {
  const LessonPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = List<String>.generate(10, (i) => '$i');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF236681),
        title: const Text(
          'Сабак',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            for (int i = 1; i < 8; i++)
              Container(
                margin: const EdgeInsets.all(8),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: const Color(0xFF236681),
                  leading: Image.asset(
                    'assets/icons/Lesson_icon.png',
                  ),
                  title: Text(
                    "${items[i]}-модуль",
                    style: const TextStyle(color: Colors.white),
                  ),
                  subtitle: const Text(
                    'Куран алиппеси',
                    style: TextStyle(
                      color: Color(0x99EBEBF5),
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: const Icon(
                    Icons.done,
                    color: Color(0xffC7C7CC),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LessonPage2(),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}