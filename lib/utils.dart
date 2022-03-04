import 'package:helloworld/page/editable_page.dart';
import 'package:helloworld/widget/tabbar_widget.dart';
import 'package:flutter/material.dart';

class Utils {
  static List<T> modelBuilder<M, T>(
          List<M> models, T Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, T>((index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}

class EditTable extends StatefulWidget {
  const EditTable({Key? key}) : super(key: key);
  @override
  _EditTableState createState() => _EditTableState();
}

class _EditTableState extends State<EditTable> {
  @override
  Widget build(BuildContext context) => TabBarWidget(
        title: 'Data Table',
        tabs: [
          const Tab(icon: Icon(Icons.edit), text: 'Editable'),
        ],
        children: [
          EditablePage(),
        ],
      );
}
