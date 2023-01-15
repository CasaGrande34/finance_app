import 'package:flutter/material.dart';

//file addresses
import '../../../utils/colors_app.dart';
import '../../../utils/navbar/navbar_custom.dart';
import '../../../utils/fonts_custom.dart';
import '../components/container_datatable.dart';
import 'package:finance_app/utils/add_space.dart';
import 'package:finance_app/utils/padding_custom.dart';
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
              children: [NavBarCustom(), TablaBody()],
            ),
          )
        ],
      ),
    );
  }
}

class TablaBody extends StatelessWidget {
  const TablaBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsApp.negroOscuro,
      ),
      margin: EdgeInsets.all(padding4),
      height: 665,
      width: 1200,
      child: DataTable(
        columns: const [
          DataColumn(
              label: Text(
            'Fecha',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Monto',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Tipo',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Subtipo',
            style: TextStyle(color: Colors.white),
          )),
          DataColumn(
              label: Text(
            'Categoria',
            style: TextStyle(color: Colors.white),
          )),
        ],
        rows: [
          DataRow(
            cells: [
              DataCell(Text('01/01/2022')),
              DataCell(Text('\$100')),
              DataCell(Text('Depósito')),
              DataCell(Text('Depósito')),
              DataCell(Text('Depósito')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('01/02/2022')),
              DataCell(Text('\$50')),
              DataCell(Text('Retiro')),
              DataCell(Text('Retiro')),
              DataCell(Text('Retiro')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('01/03/2022')),
              DataCell(Text('\$20')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('01/03/2022')),
              DataCell(Text('\$20')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
            ],
          ),
          DataRow(
            cells: [
              DataCell(Text('01/03/2022')),
              DataCell(Text('\$20')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
              DataCell(Text('Pago')),
            ],
          ),
        ],
      ),
    );
  }
}
