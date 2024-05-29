import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/breakpoints.dart';
import 'package:portifolio/widgets/app_bar/mobile_app_bar.dart';
import 'package:portifolio/widgets/app_bar/web_app_bar.dart';

class Portifolio extends StatelessWidget {
  const Portifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: const Color(0xAAC5C6C8),
        appBar: constraints.maxWidth > breakpointMobile
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              ),
        body: Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(),
              items: ['assets/imt.jpg', 'assets/etec.jpg'].map((imagePath) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      );
    });
  }
}
