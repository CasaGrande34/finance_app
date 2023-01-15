import 'package:flutter/material.dart';

//file addresses
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
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 131, 131, 131),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SideMenu(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [Text('Hola')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
