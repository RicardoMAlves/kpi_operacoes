import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class DailyCashPerDaySeries{

  final String aDay;
  final double cashDay;
  final charts.Color barColor;

  DailyCashPerDaySeries({
    @required this.aDay,
    @required this.cashDay,
    @required this.barColor});

}