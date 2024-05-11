import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xAAC5C6C8),
      appBar: AppBar(
        title: const Text(
          'Portfólio',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            onPressed: () {
              log('Pressed Contato');
            },
            icon: const Icon(Icons.mail),
            style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(Colors.white)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                log('Pressed Contato');
              },
              icon: const Icon(Icons.person),
              style: const ButtonStyle(
                  iconColor: MaterialStatePropertyAll(Colors.white)),
            ),
          ),
          IconButton(
            onPressed: () {
              log('Pressed Contato');
            },
            icon: const Icon(Icons.home),
            style: const ButtonStyle(
                iconColor: MaterialStatePropertyAll(Colors.white)),
          ),
        ],
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            height: 250,
            image: AssetImage('assets/imt.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Local que estudo:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
              Text(
                'Instituto Mauá de Tecnologia \n Ano de 2024.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              Image(
                height: 60,
                image: AssetImage('assets/imt_logo.png'),
              ),
              Text(
                'No ano de 2024, fui aprovado no \n exame para o curso de Ciência da \n Computação, o qual tenho\n frequentado desde então.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
