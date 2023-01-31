import 'package:finance_app/utils/gradients_custom.dart';
import 'package:flutter/material.dart';

//dependencies
import 'package:syncfusion_flutter_charts/charts.dart';

//file addresses
import '../../../models/model_example1.dart';

class GraficViewSideMenu extends StatefulWidget {
  const GraficViewSideMenu({Key? key}) : super(key: key);

  @override
  State<GraficViewSideMenu> createState() => _GraficViewSideMenuState();
}

class _GraficViewSideMenuState extends State<GraficViewSideMenu> {
  late List<ExampleGraficData> _chartData;
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    _chartData = getChartData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h * .2,
      width: w,
      child: SfCircularChart(
        borderWidth: 2.0,
        palette: gradientGrafic,
        tooltipBehavior: _tooltipBehavior,
        // title: ChartTitle(
        //   text: 'Grafico de categorias'
        // ),
        legend: Legend(
            isVisible: true,
            isResponsive: true,
            overflowMode: LegendItemOverflowMode.scroll),
        series: <CircularSeries>[
          DoughnutSeries<ExampleGraficData, String>(
            dataSource: _chartData,
            xValueMapper: (ExampleGraficData data, _) => data.category,
            yValueMapper: (ExampleGraficData data, _) => data.transation,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
            explode: true,
            enableTooltip: true,
          ),
        ],
      ),
    );
  }
}
