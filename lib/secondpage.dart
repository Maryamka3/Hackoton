import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hackathon_project/homepage.dart';

class Secondpage extends StatefulWidget {
  const Secondpage({super.key});

  @override
  State<Secondpage> createState() => _SecondpageState();
}

class _SecondpageState extends State<Secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Регистрация для врачей"),
          leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextWidget(text: 'Имя'),
              TextWidget(text: 'Фамилия'),
              TextWidget(text: 'Отчество '),
              TextWidget(text: 'Паспортные даные'),
              TextWidget(text: 'Место работы '),
              TextWidget(text: 'Укажите место  работы '),
              TextWidget(text: 'Номер телефона '),
              TextWidget(text: 'Email'),
              Center(
                  child: Container(
                child: Text(
                  "Отправить",
                  style: TextStyle(height: 5),
                ),
              ))
            ],
          ),
        ));
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: text,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(color: Colors.blue),
          )),
    );
  }
}
