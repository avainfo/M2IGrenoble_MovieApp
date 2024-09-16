import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_app/utils/api_connection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var text = "coucou";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(text),
            ElevatedButton(
              onPressed: () {
                connect("90.85.230.65").then((resBody) {
                  setState(() {
                    text = jsonDecode(resBody)["city"];
                  });
                });
              },
              child: Text("Requête"),
            ),
          ],
        ),
      ),
    );
  }
}
