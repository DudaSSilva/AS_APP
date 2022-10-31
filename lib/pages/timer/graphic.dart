import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graphic extends StatefulWidget {

  Graphic({required Key key}) : super(key: key);

  @override
  _GraphicState createState() => _GraphicState();
}

class _GraphicState extends State<Graphic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gráficos de monitoramento'),
          backgroundColor: const Color(0xFFF25E7A),
        ),
        body: SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Tempo de estudo'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_Study, String>>[
              LineSeries<_Study, String>(
                  dataSource: <_Study>[
                    _Study('Jan', 2),
                    _Study('Feb', 3),
                    _Study('Mar', 1),
                    _Study('Apr', 4),
                    _Study('May', 3),
                    _Study('Jun', 2)
                  ],
                  xValueMapper: (_Study time, _) => time.mouth,
                  yValueMapper: (_Study time, _) => time.time,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]));
  }
}

class _Study {
  _Study(this.mouth, this.time);

  final String mouth;
  final double time;
}
