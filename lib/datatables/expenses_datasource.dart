import 'package:flutter/material.dart';

import '../models/expenses.dart';

//dependencies

//file addresses

class ExpensesDTS extends DataTableSource {
  
  // List<Expenses> expenses;
  // ExpensesDTS({
  //   required this.expenses,
  // });
  
  @override
  DataRow? getRow(int index) {
    

    return DataRow.byIndex(
      index: index,
      cells: [
      
        // DataCell( Text(expenses[index].account) ),  
        DataCell( Text('account') ),  
        DataCell( Text('Cell #3 index:$index') ),  
        DataCell( Text('Cell #4 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
      
      ]
    );
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 10;

  @override
  int get selectedRowCount => 0;
  
  
}
