import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:localization/Home.dart';

void main() {
  runApp(
    I18n(
      initialLocale: const Locale("en", "US"),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
