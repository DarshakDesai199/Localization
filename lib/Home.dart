import 'package:flutter/material.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:localization/i18n.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App".i18n),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("Hello!".i18n),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                I18n.of(context).locale = Locale("es");
              },
              child: Text('Change es')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                I18n.of(context).locale = Locale("en");
              },
              child: Text('Change en_us')),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                I18n.of(context).locale = Locale("hi");
              },
              child: Text('Change Hindi'))
        ],
      ),
    );
  }
}
