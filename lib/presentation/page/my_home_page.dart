import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/comopnent/drower.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri xUrl = Uri.parse('https://twitter.com/ryota1582');
final Uri zennUrl = Uri.parse('https://zenn.dev/ryota1582');
final Uri qiitaUrl = Uri.parse('https://qiita.com/ryota1582');
final Uri githubUrl = Uri.parse('https://github.com/Ryota-Kurokawa');

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/abstract-background-with-a-low-poly-network-communications-design_1048-13894.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const CircleAvatar(
                    radius: 120.0,
                    backgroundImage: AssetImage('images/ryota.jpg'),
                  ),
                  const SizedBox(height: 16.0),
                  const Text(
                    '黒川 良太',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 197, 197, 197),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    '関西学院大学工学部情報工学課程 26卒\nTech.Uni 渉外担当\nA mobile app developer',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 3,
                      letterSpacing: 1,
                      color: Color.fromARGB(255, 197, 197, 197),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchUrl(xUrl, webOnlyWindowName: '_blank');
                        },
                        child: const Image(
                          image: AssetImage('images/icon-x.png'),
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const SizedBox(width: 32.0),
                      GestureDetector(
                        onTap: () {
                          launchUrl(zennUrl, webOnlyWindowName: '_blank');
                        },
                        child: const Image(
                          image: AssetImage('images/logo-only-dark.png'),
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const SizedBox(width: 32.0),
                      GestureDetector(
                        onTap: () {
                          launchUrl(qiitaUrl, webOnlyWindowName: '_blank');
                        },
                        child: const Image(
                          image: AssetImage('images/3030225.webp'),
                          width: 60,
                          height: 60,
                        ),
                      ),
                      const SizedBox(width: 32.0),
                      GestureDetector(
                        onTap: () {
                          launchUrl(githubUrl, webOnlyWindowName: '_blank');
                        },
                        child: const Image(
                          image:
                              AssetImage('images/github_logo_icon_143772.png'),
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          context.go('/skill');
                        },
                        child: const Text(
                          '→skill',
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Color.fromARGB(255, 197, 197, 197),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16.0,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
