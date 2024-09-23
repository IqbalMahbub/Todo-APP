import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';

void main()
{
  runApp(todoApp());
}

class todoApp extends StatelessWidget {
  const todoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todo app',
      home:HomeActivity();
    );
  }
}
