import 'package:flutter/material.dart';
import 'package:flutter_app/UI/widgets/connected.drawer.widget.dart';

import 'films.page.dart';

class firstPage extends StatelessWidget {
  const firstPage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: connectedDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black54),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.pinkAccent,
              Colors.purple,
            ])),
          ),
          title: Text("Films",
              style: TextStyle(color: Colors.black54, fontSize: 20)),
          backgroundColor: Colors.indigo,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30.0,
              width: 10.0,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: "  Choisissez vos films favoris ",
                      style: TextStyle(fontSize: 18, color: Colors.blueGrey)),
                  TextSpan(
                      text: (name),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink)),
                ],
              ),
            ),
            SizedBox(
              height: 30.0,
              width: 10.0,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black54),
                  padding: MaterialStateProperty.all(EdgeInsets.all(17)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 17))),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: const Text('La liste des films'),
            )
          ],
        ));
  }
}
