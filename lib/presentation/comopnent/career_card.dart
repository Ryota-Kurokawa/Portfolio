import 'package:flutter/material.dart';

class CareerWorkCard extends StatelessWidget {
  const CareerWorkCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.year})
      : super(key: key);

  final String title;
  final String description;
  final String year;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        color: Colors.green[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        elevation: 8,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: const [0.1, 0.5, 0.7, 0.9],
              colors: [
                Colors.green[100]!,
                Colors.green[200]!,
                Colors.green[300]!,
                Colors.green[400]!,
              ],
            ),
          ),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.05,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 32),
              ),
              const SizedBox(width: 24),
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Text(
                    description,
                    style: const TextStyle(fontSize: 24),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    year,
                    style: const TextStyle(fontSize: 16),
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

class CareerSchoolCard extends StatelessWidget {
  const CareerSchoolCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.year})
      : super(key: key);

  final String title;
  final String description;
  final String year;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.blue[100]!,
                  Colors.blue[200]!,
                  Colors.blue[300]!,
                  Colors.blue[400]!,
                ],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Text(
                  title,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      year,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class CareerTechCard extends StatelessWidget {
  const CareerTechCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.year})
      : super(key: key);

  final String title;
  final String description;
  final String year;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          elevation: 8,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: const [0.1, 0.5, 0.7, 0.9],
                colors: [
                  Colors.red[100]!,
                  Colors.red[200]!,
                  Colors.red[300]!,
                  Colors.red[400]!,
                ],
              ),
            ),
            child: Row(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Text(
                  title,
                  style: const TextStyle(fontSize: 32),
                ),
                const SizedBox(width: 24),
                Column(
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      year,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
