import 'package:flutter/material.dart';
import 'package:portfolio/presentation/comopnent/drower.dart';
import 'package:portfolio/presentation/comopnent/introduction_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const ManageDrawer(),
      body: Center(
        child: Column(
          children: [
            IntroductionCard(),
            const SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}
