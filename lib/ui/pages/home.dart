import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestion de Puntos Geograficos'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/adicionar');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
