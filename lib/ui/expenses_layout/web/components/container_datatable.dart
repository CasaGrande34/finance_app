import 'package:flutter/material.dart';

//dependencies
import 'package:cloud_firestore/cloud_firestore.dart';

//file addresses
import 'custom_icon_button.dart';
import '../../../../models/expenses.dart';
import 'package:finance_app/datatables/expenses_datasource.dart';
import 'package:finance_app/ui/expenses_layout/web/components/register_expense_dialog.dart';


class ContainerDataTable extends StatefulWidget {
  
  const ContainerDataTable({
    super.key,
  });

  @override
  State<ContainerDataTable> createState() => _ContainerDataTableState();
}

class _ContainerDataTableState extends State<ContainerDataTable> {
  
  int _rowPerPage = PaginatedDataTable.defaultRowsPerPage;
  
  Stream<QuerySnapshot> expenses = FirebaseFirestore.instance.collection('expenses').snapshots();  
  @override
  Widget build(BuildContext context) {
    
    return StreamBuilder<QuerySnapshot>(
      stream: expenses,
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        
        if(snapshot.hasError) { 
          
          return const Center(
            child: Text('Error inesperado.'),
            );
        }
        if(snapshot.connectionState == ConnectionState.waiting) {
          
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        var result = snapshot.data!.docs;
        
        return PaginatedDataTable(              
                       columns: const [
                      
                      DataColumn( label: Text( 'Name' ) ),
                      DataColumn( label: Text( 'Apellido' ) ),
                      // DataColumn( label: Text( 'Day' ) ),
                      // DataColumn( label: Text( 'State' ) ),
                      // DataColumn( label: Text( 'Money' ) ),
                      // DataColumn( label: Text( 'Type' ) ),
                      // DataColumn( label: Text( 'Account' ) ),
                      // DataColumn( label: Text( 'SubAccount' ) ),
                      // DataColumn( label: Text( 'Category' ) ),
                      // DataColumn( label: Text( 'SubCategory' ) ),
                      // DataColumn( label: Text( 'Intercategory' ) ),
                      // DataColumn( label: Text( 'Form' ) ),
                      // DataColumn( label: Text( 'Currency' ) ),
                      // DataColumn( label: Text( 'Description' ) ),
                      
                    ],
                    source: ExpensesDTS(expenses: result),
                    
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
    );
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

