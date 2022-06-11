import 'package:flutter/material.dart';

import 'core/application_strings.dart';
import 'core/application_theme.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.themeData,
      title: AppResources.appName,
      home: HomePage(title: AppResources.appName),
      debugShowCheckedModeBanner: false,
    );
  }
}
