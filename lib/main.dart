import 'dart:html';

import 'package:flutter/material.dart';
import 'package:syouki_app/themes/app_theme.dart';

void main() {
  runApp(const Foodapp());
}

class Foodapp extends StatelessWidget {
  const Foodapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Syouki',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}


