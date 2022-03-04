import 'package:flutter/material.dart';
import 'calendar.dart';
import 'chart.dart';
import 'utils.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            child: const Text('Table'),
            style: style,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text('Table'),
                        centerTitle: true,
                      ),
                      body: EditTable());
                },
              ));
            },
          ),
          TextButton(
            style: style,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text('Chart'),
                        centerTitle: true,
                      ),
                      body: const PieChart());
                },
              ));
            },
            child: const Text('Chart'),
          ),
          TextButton(
            style: style,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(
                builder: (BuildContext context) {
                  return Scaffold(
                      appBar: AppBar(
                        title: const Text('Date'),
                        centerTitle: true,
                      ),
                      body: const Calendar());
                },
              ));
            },
            child: const Text('Date'),
          )
        ],
      ),
    );
  }
}
