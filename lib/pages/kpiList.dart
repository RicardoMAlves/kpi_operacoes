import 'package:flutter/material.dart';
import 'package:kpioperacoes/pages/profit.dart';
import 'package:kpioperacoes/pages/dailyCash.dart';

class KPIList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(
              Icons.access_time,
              size: 50.0,
              color: Colors.red,
            ),
            title: Text(
              "Daily Cash",
              style: TextStyle(
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              "Cash até a data e projeções",
              style: TextStyle(
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DailyCash();
              }));
            },
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(
              Icons.monetization_on,
              size: 50.0,
              color: Colors.red,
            ),
            title: Text(
              "Profit",
              style: TextStyle(
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              "Rentabilidade ...",
              style: TextStyle(
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18.0),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Profit();
              }));
            },
          ),
        ),
      ],
    );
  }
}
