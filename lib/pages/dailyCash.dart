import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kpioperacoes/pages/home.dart';
import 'package:kpioperacoes/pages/dailycashchart.dart';
import 'package:kpioperacoes/models/dailycashperday.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class DailyCash extends StatefulWidget {
  @override
  _DailyCashState createState() => _DailyCashState();
}

class _DailyCashState extends State<DailyCash> {

  final List<DailyCashPerDaySeries> data = [
    DailyCashPerDaySeries(
        aDay: "01",
        cashDay: 1500.00,
        barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DailyCashPerDaySeries(
      aDay: "02",
      cashDay: 1750.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DailyCashPerDaySeries(
      aDay: "03",
      cashDay: 1950.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
    DailyCashPerDaySeries(
      aDay: "04",
      cashDay: 3000.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    DailyCashPerDaySeries(
      aDay: "05",
      cashDay: 800.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    DailyCashPerDaySeries(
      aDay: "06",
      cashDay: 1800.00,
      barColor: charts.ColorUtil.fromDartColor(Colors.blue),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.3,
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Home();
              }));
            },
          ),
          title: Text(
            "Daily Cash",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Arvo",
                fontWeight: FontWeight.bold),
          ),
          actions: <Widget>[
            Icon(
              Icons.menu,
              color: Colors.white,
            )
          ],
        ),
        body: _bodyDailyCash(),
    );
  }

  Widget _bodyDailyCash() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildCardTotalCash(),
                  Divider(),
                  _buildCardGoalsCash(),
                  Divider(),
                  DailyCashChart(data: data),
                  Divider(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildCardTotalCash() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          "FIDC VI",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "Arvo",
              fontWeight: FontWeight.bold,
              fontSize: 25.0
          ),
        ),
        Text(
          "Cash BRL 8.5MM",
          style: TextStyle(
              color: Colors.grey,
              fontFamily: "Arvo",
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        )
      ],
    );
  }

  Row _buildCardGoalsCash() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Meta",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
              ),
            ),
            Text(
              "BRL 27.5MM",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            )
          ],
        ),
        SizedBox(
          width: 125.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Projetado",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0
              ),
            ),
            Text(
              "BRL 17.5MM",
              style: TextStyle(
                  color: Colors.grey,
                  fontFamily: "Arvo",
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
              ),
            )
          ],
        ),
      ],
    );
  }

}
