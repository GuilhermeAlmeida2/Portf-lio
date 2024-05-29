import 'dart:developer';

import 'package:flutter/material.dart';

class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Portfólio',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          )),
      backgroundColor: Colors.black,
      actions: [
        IconButton(
          onPressed: () {
            log('Pressed Contato');
          },
          icon: const Icon(Icons.mail),
          style: const ButtonStyle(
              iconColor: WidgetStatePropertyAll(Colors.white)),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(
                  context, '/contact'); // Assuming a contact screen exists

              log('Pressed Contato');
            },
            icon: const Icon(Icons.person),
            style: const ButtonStyle(
                iconColor: WidgetStatePropertyAll(Colors.white)),
          ),
        ),
        IconButton(
          onPressed: () {
            log('Pressed Contato');
          },
          icon: const Icon(Icons.home),
          style: const ButtonStyle(
              iconColor: WidgetStatePropertyAll(Colors.white)),
        ),
      ],
    );
  }
}
