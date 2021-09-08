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
        backgroundColor: Color(0xFFFF5F11),
        title: Center(
          child: SizedBox(
            width: 200,
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
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('15',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Presença Registrada',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('5',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Sem Presença',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('10',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Ponto Aberto',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('5',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Ponto Fechado',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('1',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Em Férias',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const ListTile(
                        title: Text('1',
                            style:
                                TextStyle(color: Colors.black, fontSize: 22)),
                        subtitle: Text('Com Hora Extra',
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
