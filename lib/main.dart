import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/features/home/views/home_page.dart';
import 'package:smollan_assignment/features/main_screen.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: Palette.lightTheme,
      darkTheme: Palette.darkTheme,
      themeMode: ThemeMode.system,
      home: MainScreen()
    );
  }
}

