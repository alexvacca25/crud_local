import 'package:crud_local/domain/controller/controlapuntes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ui/app.dart';

void main() {
  Get.put(ControlApuntes());
  runApp(const App());
}
