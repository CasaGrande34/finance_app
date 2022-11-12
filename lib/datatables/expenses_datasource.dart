import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/expenses.dart';

//dependencies

//file addresses

class ExpensesDTS extends DataTableSource {
  
  List expenses;
  ExpensesDTS({
    required this.expenses,
  });
  
  @override
  DataRow? getRow(int index) {
    
    return DataRow.byIndex(
      
      index: index,
      cells: [
      
        DataCell( Placeholder() ),  
        DataCell( Text(expenses[index]['account']) ),  
        // DataCell( Text('Cell #3 index:$index') ),  
        // DataCell( Text('Cell #4 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
        // DataCell( Text('Cell #5 index:$index') ),  
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
  int get rowCount => 1000;

  @override
  int get selectedRowCount => expenses.length;
  
  
}
