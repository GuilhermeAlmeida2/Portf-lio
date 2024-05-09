import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Portfólio',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
              onPressed: () {
                log('Pressed Contato');
              },
              icon: Icon(Icons.mail),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
              onPressed: () {
                log('Pressed Sobre Mim');
              },
              icon: Icon(Icons.person),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: IconButton(
              onPressed: () {
                log('Pressed Página Inicial');
              },
              icon: Icon(Icons.home),
            ),
          ),
        ],
      ),
      body: const Column(
        children: [
          Image(
            height: 500,
            image: AssetImage('assets/imt.jpg'),
          ),
        ],
      ),
    );
  }
}
