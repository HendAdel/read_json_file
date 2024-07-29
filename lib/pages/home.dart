import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Read Json file data"),
            ElevatedButton(
              onPressed: readJsonFile,
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  fixedSize: const Size(double.maxFinite, 30),
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white),
              child: const Text(
                "Print",
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> readJsonFile() async {
    final String fileData = await rootBundle.loadString('assets/books.json');
    final stringData = await json.decode(fileData);
    print(stringData);
  }
}
