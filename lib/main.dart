import 'package:flutter/material.dart';
import 'resources/router/rout.dart';
import 'resources/style/theme.dart';

void main() {
  runApp(const MainScreen());
}

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      routes: rout,
      theme: themestyle,
    );
  }
}
