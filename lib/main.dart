import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'package:loggy/loggy.dart';
import 'package:news360/src/app/intializer.dart';

import 'src/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Loggy.initLoggy();
  init();
  await Firebase.initializeApp();
  await GetStorage.init();

  runApp(const App());
}
