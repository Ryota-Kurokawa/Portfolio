import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/comopnent/career_card.dart';
import 'package:portfolio/presentation/comopnent/drower.dart';

class MyCareerPage extends StatelessWidget {
  const MyCareerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text(
          'My Career',
          style: TextStyle(fontSize: 24),
        ),
        backgroundColor: Colors.teal[300],
      ),
      drawer: const ManageDrawer(),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.8,
          child: CarouselSlider(
            items: const [
              SizedBox(
                height: 200,
                child: CareerSchoolCard(
                  title: "大阪教育大学附属高等学校天王寺校舎 卒業",
                  description: "高校卒業",
                  year: "2022年",
                ),
              ),
              CareerSchoolCard(
                title: "関西学院大学工学部情報工学課程 入学",
                description: "大学入学",
                year: "2022年",
              ),
              CareerTechCard(
                title: "関西ビギナーズハッカソンvol1",
                description: "3位入賞",
                year: "2023年2月",
              ),
              CareerWorkCard(
                title: "Direct出版株式会社",
                description: "エンジニアインターン",
                year: "2023年5月〜10月",
              ),
              CareerTechCard(
                title: "関西学生エンジニアカンファレンス",
                description: "運営",
                year: "2023年7月",
              ),
              CareerTechCard(
                title: "関西ビギナーズハッカソンvol2",
                description: "4位入賞",
                year: "2023年8月",
              ),
              CareerTechCard(
                title: "KC3",
                description: "登壇",
                year: "2023年9月",
              ),
              CareerTechCard(
                title: "カラビナハッカソン",
                description: "3位入賞",
                year: "2023年9月",
              ),
              CareerTechCard(
                title: "東京Flutterハッカソン",
                description: "2位入賞",
                year: "2023年10月",
              ),
              CareerWorkCard(
                title: "株式会社Re-era",
                description: "エンジニアインターン",
                year: "2023年10月~",
              ),
              CareerWorkCard(
                title: "株式会社サイバーエージェント",
                description: "CA Tech Accel",
                year: "2023年11月~2024年2月",
              )
            ],
            options: CarouselOptions(
              height: 300,
              initialPage: 0,
              autoPlay: true,
              viewportFraction: 0.3,
              enableInfiniteScroll: false,
              autoPlayInterval: const Duration(seconds: 2),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              enlargeCenterPage: true,
              scrollDirection: Axis.vertical,
            ),
          ),
        ),
      ),
    );
  }
}
