import 'package:flutter/material.dart';

//file addresses
import 'package:finance_app/utils/fonts_custom.dart';
import 'package:finance_app/utils/add_space.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/colors_app.dart';
import '../../../utils/navbar/navbar_custom.dart';
import 'package:finance_app/utils/padding_custom.dart';
import '../../home_layout/components/sidemenu/side_menu.dart';
import 'package:finance_app/datatables/expenses_datasource.dart';
import 'package:finance_app/utils/buttons/custom_outline_button.dart';

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
            child: ListView(
              physics: ClampingScrollPhysics(),
              children: [
                NavBarCustom(),
                addVerticalSpace(padding4),
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
  int _rowsPerPage = PaginatedDataTable.defaultRowsPerPage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding4),
      child: PaginatedDataTable(
          header: Text(
            'Registro de operaciones',
            maxLines: 2,
            style: satisfy.copyWith(fontSize: 35, color: ColorsApp.negroOscuro),
          ),
          actions: [
            CustomOutlineButton(
              onPressed: () {},
              text: 'Crear',
              icon: FontAwesomeIcons.squarePlus,
            ),
          ],
          onRowsPerPageChanged: (value) {
            setState(() {
              _rowsPerPage = value ?? 15;
            });
          },
          rowsPerPage: _rowsPerPage,
          columns: const [
            DataColumn(label: Text('Id')),
            DataColumn(label: Text('Date')),
            DataColumn(label: Text('Category')),
            DataColumn(label: Text('Money')),
          ],
          source: ExpensesDTS()),
    );
  }
}
