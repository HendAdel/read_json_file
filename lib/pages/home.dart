import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold();
    }

    Future<void> readJsonFile() async{
      final String fileData = await rootBundle.loadString('assets/books.json');
      final stringData = await json.decode(fileData);
print(stringData);
    }
}