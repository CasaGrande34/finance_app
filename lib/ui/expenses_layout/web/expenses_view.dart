import 'package:finance_app/datatables/expenses_datasource.dart';
import 'package:flutter/material.dart';

//file addresses
import '../../../utils/navbar/navbar_custom.dart';
import '../../home_layout/components/sidemenu/side_menu.dart';

class ExpensesView extends StatelessWidget {
  const ExpensesView({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 131, 131, 131),
      body: Row(
        children: [
          const SideMenu(),
          Expanded(
            child: Column(
              children: const [
                NavBarCustom(),
                TablaBody(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TablaBody extends StatefulWidget {
  const TablaBody({super.key});

  @override
  State<TablaBody> createState() => _TablaBodyState();
}

class _TablaBodyState extends State<TablaBody> {
  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable(columns: const [
      DataColumn(label: Text('Id')),
      DataColumn(label: Text('Date')),
      DataColumn(label: Text('Account')),
      DataColumn(label: Text('Type')),
      DataColumn(label: Text('Category')),
      DataColumn(label: Text('Money')),
    ], source: ExpensesDTS());
  }
}
