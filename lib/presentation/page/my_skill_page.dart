import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/presentation/comopnent/drower.dart';

class MySkillPage extends StatelessWidget {
  const MySkillPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/back1.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      context.pop('/top');
                    },
                    child: const Text(
                      '←Return to Top',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              CarouselSlider(
                items: [
                  Image.asset('images/clang.png'),
                  Image.asset('images/file_type_css_icon_130661.png'),
                  Image.asset('images/Flutter.png'),
                  Image.asset('images/golang_official_logo_icon_169092.png'),
                  Image.asset('images/html.png'),
                  Image.asset('images/Rails.png'),
                  Image.asset('images/swiftui-128x128_2x.png'),
                  Image.asset(
                      'images/supabase-logo-DCC676FFE2-seeklogo.com.png'),
                  Image.asset('images/nextjs-icon-512x309-yynfidez.png'),
                  Image.asset('images/logo-logomark.png'),
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
              const SizedBox(height: 20),
              CarouselSlider(
                items: [
                  Image.asset('images/clang.png'),
                  Image.asset('images/file_type_css_icon_130661.png'),
                  Image.asset('images/Flutter.png'),
                  Image.asset('images/golang_official_logo_icon_169092.png'),
                  Image.asset('images/html.png'),
                  Image.asset('images/Rails.png'),
                  Image.asset('images/swiftui-128x128_2x.png'),
                  Image.asset(
                      'images/supabase-logo-DCC676FFE2-seeklogo.com.png'),
                  Image.asset('images/nextjs-icon-512x309-yynfidez.png'),
                  Image.asset('images/logo-logomark.png'),
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
      ),
    );
  }
}
