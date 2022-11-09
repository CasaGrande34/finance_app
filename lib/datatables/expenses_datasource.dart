import 'package:flutter/material.dart';

//dependencies

//file addresses
import '../models/expenses.dart';

class ExpensesDTS extends DataTableSource {
  
  final List<Expenses> expenses;
  ExpensesDTS(this.expenses);
  
  @override
  DataRow? getRow(int index) {
    
    return DataRow.byIndex(
      
      index: index,
      cells: [
      
        DataCell( Placeholder() ),  
        DataCell( Text('Cell #2 index:$index') ),  
        DataCell( Text('Cell #3 index:$index') ),  
        DataCell( Text('Cell #4 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
        DataCell( Text('Cell #5 index:$index') ),  
      
      ]
    );
  }

  @override
  bool get isRowCountApproximate => true;

  @override
  int get rowCount => 1000;

  @override
  int get selectedRowCount => 0;
  
  
}