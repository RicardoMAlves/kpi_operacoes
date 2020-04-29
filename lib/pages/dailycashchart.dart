import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:kpioperacoes/models/dailycashperday.dart';

class DailyCashChart extends StatelessWidget {

  final List<DailyCashPerDaySeries> data;

  DailyCashChart({@required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<DailyCashPerDaySeries, String>> series = [
      charts.Series(
          id: "DailyCash",
          data: data,
          domainFn: (DailyCashPerDaySeries series, _) => series.aDay,
          measureFn: (DailyCashPerDaySeries series, _) => series.cashDay,
          colorFn: (DailyCashPerDaySeries series, _) => series.barColor)
    ];

    return Container(
      height: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                "Daily Cash - April 2020",
                style: Theme.of(context).textTheme.body2,
              ),
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),
        ),
      ),
    );

  }

}