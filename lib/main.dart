import 'package:flutter/material.dart';
import 'package:portfolio/router.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: myRouter,
    );
  }
}
