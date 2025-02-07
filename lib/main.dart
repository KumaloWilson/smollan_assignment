import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smollan_assignment/core/constants/color_constants.dart';
import 'package:smollan_assignment/features/main_screen.dart';
import 'package:smollan_assignment/providers/feed_provider.dart';
import 'package:smollan_assignment/providers/new_post_provider.dart';
import 'package:smollan_assignment/providers/post_provider.dart';
import 'package:smollan_assignment/providers/profile_provider.dart';
import 'package:smollan_assignment/providers/search_provider.dart';
import 'package:smollan_assignment/providers/tab_provider.dart';
import 'package:smollan_assignment/providers/theme_provider.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => FeedProvider()),
        ChangeNotifierProvider(create: (_) => PostProvider()),
        ChangeNotifierProvider(create: (_) => ProfileProvider()),
        ChangeNotifierProvider(create: (_) => NewPostProvider()),
        ChangeNotifierProvider(create: (_) => SearchProvider()),
        ChangeNotifierProvider(create: (_) => TabProvider()),
      ],
      child: MyApp(),
    ),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'Instagram Clone',
          theme: Palette.lightTheme,
          darkTheme: Palette.darkTheme,
          themeMode: themeProvider.themeMode,
          home: MainScreen(),
        );
      },
    );
  }
}
