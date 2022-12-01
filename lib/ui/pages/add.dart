import 'package:crud_local/domain/controller/controlapuntes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddApunte extends StatefulWidget {
  const AddApunte({super.key});

  @override
  State<AddApunte> createState() => _AddApunteState();
}

class _AddApunteState extends State<AddApunte> {
  ControlApuntes ca = Get.find();
  TextEditingController detalle = TextEditingController();
  TextEditingController lat = TextEditingController(text: '0.0');
  TextEditingController lon = TextEditingController(text: '0.0');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Adicionar Punto Estrategico'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TextField(
              controller: detalle,
              decoration: const InputDecoration(hintText: 'Ingrese el Detalle'),
            ),
            TextField(
              controller: lon,
              readOnly: true,
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: lat,
              readOnly: true,
              textAlign: TextAlign.center,
            ),
            OutlinedButton(
                onPressed: () {
                  ca.addApuntes(detalle.text, lon.text, lat.text);
                  detalle.clear();
                },
                child: const Text('Adicionar'))
          ],
        ),
      ),
    );
  }
}
