import 'package:flutter/material.dart';

//dependencies

//file addresses

class ExpensesDTS extends DataTableSource {
  // List<Expenses> expenses;
  // ExpensesDTS({
  //   required this.expenses,
  // });

  @override
  DataRow? getRow(int index) {
    return DataRow.byIndex(index: index, cells: [
      DataCell(Text('Columna #1 index:$index'), showEditIcon: true),
      DataCell(Text('Columna #2 index:$index')),
      DataCell(Text('Columna #3 index:$index')),
      DataCell(Text('Columna #4 index:$index')),
      DataCell(Text('Columna #5 index:$index')),
      DataCell(Text('Columna #6 index:$index')),
    ]);
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 10;

  @override
  int get selectedRowCount => 0;
}
