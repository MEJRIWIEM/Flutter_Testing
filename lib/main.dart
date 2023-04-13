import 'package:flutter/material.dart';
import 'package:flutter_app/UI/pages/login.page.dart';

import 'UI/pages/films.page.dart';
import 'UI/pages/home.page.dart';

void main() => runApp(myApp());

//chaque widget se met dans un fichier séparé
class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      routes: {
        "/home": (context) => homePage(),
        "/login": (context) => loginPage(),
        "/films":(context) => HomePage(),
      },
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: "/home",
    );
  }

}


