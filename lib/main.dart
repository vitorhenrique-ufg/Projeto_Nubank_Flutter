import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:projetoflutter/pages/widgets/splash/splash_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.purple[800]));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aplicativo teste nubank',
        theme: ThemeData(
            primarySwatch: Colors.purple, brightness: Brightness.dark),
        home: const SplashPage());
  }
}
