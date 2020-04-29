import 'package:flutter/material.dart';
import 'package:kpioperacoes/services/authentication.dart';
import 'package:kpioperacoes/pages/rootpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: "Return",
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(
          primarySwatch: Colors.red,
        ),
        home: new RootPage(auth: new Auth()));
  }
}
