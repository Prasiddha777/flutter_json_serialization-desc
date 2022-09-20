import 'package:flutter/material.dart';
import 'package:newtry/routes/myroutes.dart';
import 'package:newtry/screens/homescreen.dart';
import 'package:newtry/widgets/theme.dart';

import 'screens/todo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme,
      home: const HomeScreen(),
      initialRoute: "/todo",
      routes: {
        MyRoutes.myHome: (context) => const HomeScreen(),
        MyRoutes.myTodo: (context) => const Todo(),
        // "/home": (context) => const HomeScreen(),
      },
    );
  }
}
