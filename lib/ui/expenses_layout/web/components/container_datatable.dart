import 'package:flutter/material.dart';

//dependencies
import 'package:cloud_firestore/cloud_firestore.dart';

//file addresses
import 'custom_icon_button.dart';
import '../../../../models/expenses.dart';
import '../../../../datatables/expenses_datasource.dart';
import 'package:finance_app/ui/expenses_layout/web/components/register_expense_dialog.dart';


class ContainerDataTable extends StatefulWidget {
  
  const ContainerDataTable({
    super.key,
  });

  @override
  State<ContainerDataTable> createState() => _ContainerDataTableState();
}

class _ContainerDataTableState extends State<ContainerDataTable> {
  CollectionReference firestore = FirebaseFirestore.instance.collection('expenses');
  int _rowPerPage = PaginatedDataTable.defaultRowsPerPage;
    
  @override
  Widget build(BuildContext context) {
    
    List<Expenses> expenses = [];
    return StreamBuilder(
        stream: firestore.snapshots(),
        builder: ( context, AsyncSnapshot<QuerySnapshot> snap ) {
          
            expenses = snap.data
            // expenses = snap.data.docs.map((e) => Expenses.fromMap(e.data)).toList();
            // final DataTableSource _allExpenses = ExpensesDTS(expenses);
            
            if( snap.hasData ) {
              
                return PaginatedDataTable(
                  
                   columns: const [
                  
                  DataColumn( label: Text( 'Year' ) ),
                  DataColumn( label: Text( 'Month' ) ),
                  DataColumn( label: Text( 'Day' ) ),
                  DataColumn( label: Text( 'State' ) ),
                  DataColumn( label: Text( 'Money' ) ),
                  DataColumn( label: Text( 'Type' ) ),
                  DataColumn( label: Text( 'Account' ) ),
                  DataColumn( label: Text( 'SubAccount' ) ),
                  DataColumn( label: Text( 'Category' ) ),
                  DataColumn( label: Text( 'SubCategory' ) ),
                  DataColumn( label: Text( 'Intercategory' ) ),
                  DataColumn( label: Text( 'Form' ) ),
                  DataColumn( label: Text( 'Currency' ) ),
                  DataColumn( label: Text( 'Description' ) ),
                  
                ],
                source: _allExpenses,
                header: const Text('Precio es lo que pagas, valor es lo que recibes - Warrent Buffet'),
                onRowsPerPageChanged: (value) {
                  
                  setState(() { 
                    _rowPerPage = value ?? 10;
                  });
                },
                rowsPerPage: _rowPerPage,
                actions: [
                  
                  CustomIconButton(
                      icon: Icons.add,
                      onPressed: () {
                        
                        //!Register Expense
                        showDialog(
                                   
                            context: context, 
                            builder: (context) {    
                              return const RegisterExpenseDialog();
                            
                          });
                      },
                      text: 'Crear',
                      color: Theme.of(context).primaryColor,
                    ),
                  CustomIconButton(

                      icon: Icons.add,
                      onPressed: () {},
                      text: 'Borrar',
                      color: Theme.of(context).primaryColor,                    
                    ),
                ],
              );
            }
            else{
              return new Text('No data...');
            }
    });
  }
}    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//     return PaginatedDataTable(
//         columns: const [
          
//           DataColumn( label: Text( 'Year' ) ),
//           DataColumn( label: Text( 'Month' ) ),
//           DataColumn( label: Text( 'Day' ) ),
//           DataColumn( label: Text( 'State' ) ),
//           DataColumn( label: Text( 'Money' ) ),
//           DataColumn( label: Text( 'Type' ) ),
//           DataColumn( label: Text( 'Account' ) ),
//           DataColumn( label: Text( 'SubAccount' ) ),
//           DataColumn( label: Text( 'Category' ) ),
//           DataColumn( label: Text( 'SubCategory' ) ),
//           DataColumn( label: Text( 'Intercategory' ) ),
//           DataColumn( label: Text( 'Form' ) ),
//           DataColumn( label: Text( 'Currency' ) ),
//           DataColumn( label: Text( 'Description' ) ),
          
//         ],
        
//         source: ExpensesDTS(),
//         header: const Text('Precio es lo que pagas, valor es lo que recibes - Warrent Buffet'),
//         onRowsPerPageChanged: (value) {
          
//           setState(() { 
//             _rowPerPage = value ?? 10;
//           });
          
//         },
//         rowsPerPage: _rowPerPage,
//         actions: [
          
//           CustomIconButton(
            
            
//               icon: Icons.add,
//               onPressed: () {
                
//                 //!Register Expense
//                 showDialog(
                  
                                    
//                     context: context, 
//                     builder: (context) {
                      
//                       return const RegisterExpenseDialog();
                    
//                   });
                
//               },
//               text: 'Crear',
//               color: Theme.of(context).primaryColor,
            
//             ),
//           CustomIconButton(
            
            
//               icon: Icons.add,
//               onPressed: () {},
//               text: 'Borrar',
//               color: Theme.of(context).primaryColor,
            
//             ),
//         ],
//       );
//     }
// }

