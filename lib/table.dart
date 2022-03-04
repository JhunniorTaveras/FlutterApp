import 'package:flutter/material.dart';
import 'package:editable/editable.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  _TablePageState createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  //row data
  List rows = [
    {
      "farmacia": 'James Peter',
      "luz": '01/08/2007',
      "supermercado": 'March',
      "renta": 'beginner'
    },
    {
      "farmacia": 'Okon Etim',
      "luz": '09/07/1889',
      "supermercado": 'January',
      "renta": 'completed'
    },
    {
      "farmacia": 'Samuel Peter',
      "luz": '11/11/2002',
      "supermercado": 'April',
      "renta": 'intermediate'
    },
    {
      "farmacia": 'Udoh Ekong',
      "luz": '06/3/2020',
      "supermercado": 'July',
      "renta": 'beginner'
    },
    {
      "farmacia": 'Essien Ikpa',
      "luz": '06/3/2020',
      "supermercado": 'June',
      "renta": 'completed'
    },
  ];
//Headers or Columns
  List headers = [
    {"title": 'Farmacia', 'index': 1, 'key': 'farmacia'},
    {"title": 'Luz', 'index': 2, 'key': 'luz'},
    {"title": 'Supermercado', 'index': 3, 'key': 'supermercado'},
    {"title": 'Renta', 'index': 4, 'key': 'renta'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Editable(
        columns: headers,
        rows: rows,
        tdStyle: const TextStyle(fontSize: 20),
        columnRatio: 0.23,
        showSaveIcon: true, //set true
        borderColor: Colors.grey.shade300,
        onSubmitted: (value) {
          rows[1] = value;
        },
        onRowSaved: (value) {
          //rows = "$value";
        },
      ),
    );
  }
}
/*
class TablePage extends StatelessWidget {
  TablePage({Key? key}) : super(key: key);

  TextEditingController farmaciaController = TextEditingController();
  TextEditingController luzController = TextEditingController();
  TextEditingController supermercadoController = TextEditingController();
  TextEditingController rentaController = TextEditingController();

  String farmacia = '123';
  String luz = '123';
  String superMercado = '123';
  String renta = '123';

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: const <DataColumn>[
        DataColumn(
          label: Text(
            'Gasto',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        DataColumn(
          label: Text(
            'Monto',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
      rows: <DataRow>[
        DataRow(
          cells: <DataCell>[
            const DataCell(Text('SuperMercado')),
            DataCell(
                TextFormField(
                  initialValue: superMercado,
                  //controller: supermercadoController,
                  onFieldSubmitted: (val) {
                    superMercado = val;
                  },
                ),
                showEditIcon: true)
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(Text('Farmacia')),
            DataCell(
                TextFormField(
                  initialValue: farmacia,
                  //controller: farmaciaController,
                  onFieldSubmitted: (val) {
                    farmacia = val;
                  },
                ),
                showEditIcon: true),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(Text('Luz')),
            DataCell(
                TextFormField(
                  //controller: luzController,
                  initialValue: luz,
                  onFieldSubmitted: (val) {
                    luz = val;
                  },
                ),
                showEditIcon: true),
          ],
        ),
        DataRow(
          cells: <DataCell>[
            const DataCell(Text('Renta')),
            DataCell(
                TextFormField(
                  //controller: rentaController,
                  initialValue: renta,
                  onFieldSubmitted: (val) {
                    renta = val;
                  },
                ),
                showEditIcon: true)
          ],
        ),
      ],
    );
  }
  editValue(String value) async {
    final changeNumber = await showTextDialog(context,
        title: 'Change SuperMercado', value: superMercado);
  }
}

class TableOne extends StatelessWidget {
  const TableOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(body: TablePage()));
  }
}
*/