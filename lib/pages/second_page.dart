import 'package:flutter/material.dart';
import 'package:portifolio/breakpoints.dart';
import 'package:portifolio/widgets/app_bar/mobile_app_bar.dart';
import 'package:portifolio/widgets/app_bar/web_app_bar.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

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
        body: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "Contato",
                style: TextStyle(fontSize: 37, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      );
    });
  }
}
