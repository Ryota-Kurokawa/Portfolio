import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class IntroductionCard extends StatelessWidget {
  final Uri xUrl = Uri.parse('https://twitter.com/ryota1582');
  final Uri zennUrl = Uri.parse('https://zenn.dev/ryota1582');
  final qiitaUrl = Uri.parse('https://qiita.com/ryota1582');
  final githubUrl = Uri.parse('https://github.com/Ryota-Kurokawa');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.8,
      child: Card(
        elevation: 4.0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.1, 0.9],
              colors: [
                Theme.of(context).colorScheme.onPrimary,
                Theme.of(context).colorScheme.tertiary,
              ],
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
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
                ),
              ),
              const SizedBox(height: 8.0),
              const Text(
                '関西学院大学工学部情報工学課程 26卒\nTech.Uni 渉外担当\nAn mobile app developer',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  height: 3,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 16.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_on),
                  SizedBox(width: 4.0),
                  Text(
                    '奈良県出身',
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(xUrl, webOnlyWindowName: '_blank');
                    },
                    child: const Text(
                      "X",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(zennUrl, webOnlyWindowName: '_blank');
                    },
                    child: const Text(
                      "Zenn",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(qiitaUrl, webOnlyWindowName: '_blank');
                    },
                    child: const Text(
                      "Qiita",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  const SizedBox(width: 32.0),
                  ElevatedButton(
                    onPressed: () {
                      launchUrl(githubUrl, webOnlyWindowName: '_blank');
                    },
                    child: const Text(
                      "GitHub",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
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
