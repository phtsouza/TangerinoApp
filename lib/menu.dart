import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'Colaboradores.dart';

Map<String, double> dataMap = {
  "Com Presença": 15,
  "Sem Presença": 5,
};

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: SizedBox(
            width: 100,
            child: Text(
              "Funcionários",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            width: 40,
            child: TextButton(
              child: Icon(
                Icons.list_outlined,
                color: Colors.black38,
                size: 50,
              ),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Colaboradores(),
                  ),
                ),
              },
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(
          top: 40,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            Text(
              "08/09/21",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 20,
              ),
            ),
            Text(
              "Quarta-feira",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            PieChart(
              dataMap: dataMap,
              animationDuration: Duration(milliseconds: 800),
              chartLegendSpacing: 0,
              chartRadius: MediaQuery.of(context).size.width / 1.5,
              initialAngleInDegree: 0,
              ringStrokeWidth: 10,
              legendOptions: LegendOptions(
                showLegendsInRow: false,
                legendPosition: LegendPosition.right,
                showLegends: false,
                legendTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              chartValuesOptions: ChartValuesOptions(
                showChartValueBackground: false,
                showChartValues: true,
                showChartValuesInPercentage: true,
                showChartValuesOutside: false,
                decimalPlaces: 1,
              ),
            ),
            Text(
              "15 - Presença registrada",
              style: TextStyle(
                backgroundColor: Colors.red,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              "5 - Sem presença",
              style: TextStyle(
                backgroundColor: Colors.blue,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              "10 - Pontos Abertos\n5 - Pontos Fechados",
              style: TextStyle(
                backgroundColor: Colors.red,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              "20 - Colaboradores ativos",
              style: TextStyle(
                backgroundColor: Colors.orange,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
            Text(
              "1 - Em Hora Extra",
              style: TextStyle(
                backgroundColor: Colors.green,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
