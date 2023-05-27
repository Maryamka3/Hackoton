import 'package:flutter/material.dart';
import 'package:hackathon_project/secondpage.dart';

class Practice extends StatefulWidget {
  Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  String a = "data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/Group.png'),
            const Text(
              "Medical calendar",
              style: TextStyle(fontSize: 10, color: Colors.blue),
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  setState(
                    () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Secondpage()));
                    },
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    width: 150,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        "Регистрация",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              width: 300,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Введите строку для поиска ',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_contact_calendar_outlined),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
    );
  }
}
