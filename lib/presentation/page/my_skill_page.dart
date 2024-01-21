import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/presentation/comopnent/drower.dart';

class MySkillPage extends StatelessWidget {
  const MySkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const ManageDrawer(),
      body: Center(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Card(child: Image.asset('images/C.png')),
                Card(child: Image.asset('images/css.png')),
                Card(child: Image.asset('images/Flutter.png')),
                Card(child: Image.asset('images/Go.png')),
                Card(child: Image.asset('images/html.png')),
                Card(child: Image.asset('images/Rails.png')),
                Card(child: Image.asset('images/SwiftUI.jpg')),
              ],
              options: CarouselOptions(
                height: 300,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 0.3,
                enableInfiniteScroll: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                enlargeCenterPage: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "The skill of the language & flamework I can use",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            CarouselSlider(
              items: [
                Card(child: Image.asset('images/C.png')),
                Card(child: Image.asset('images/css.png')),
                Card(child: Image.asset('images/Flutter.png')),
                Card(child: Image.asset('images/Go.png')),
                Card(child: Image.asset('images/html.png')),
                Card(child: Image.asset('images/Rails.png')),
                Card(child: Image.asset('images/SwiftUI.jpg')),
              ],
              options: CarouselOptions(
                height: 300, //高さ
                initialPage: 4, //最初に表示されるページ
                autoPlay: true, //自動でスライドしてくれるか
                viewportFraction: 0.3, //各カードの表示される範囲の割合
                enableInfiniteScroll: true, //最後のカードから最初のカードへの遷移
                autoPlayInterval: Duration(seconds: 2), //カードのインターバル
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                enlargeCenterPage: true, //選択したカードを中央に表示
                //スライドが始まって終わるまでの時間
              ),
            ),
          ],
        ),
      ),
    );
  }
}
