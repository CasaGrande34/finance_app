import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

//file addresses
import '../../providers/expansion_state.dart';
import 'components/collapse_viewexpanded_menu.dart';
import 'components/text_myexpenses.dart';

import '../add_space.dart';
import '../styles_custom.dart';
import '../fonts_custom.dart';
import '../padding_custom.dart';

import 'components/listtile_viewsidemenu.dart';
import 'package:finance_app/utils/view_expanded_menu/components/container_viewsidemenu.dart';

/* 
WIDGET DESHABILITADO PERO PUEDO USARLO PARA COPIARLO PARA OTRAS COSAS 🔥🔥🔥
 */

class ViewExpandedMenu extends StatelessWidget {
  const ViewExpandedMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final expansionState = Provider.of<ExpansionState>(context);
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1700),
      curve: Curves.easeInOutQuart,
      padding: const EdgeInsets.only(top: padding1),
      height: h,
      color: Styles.grisOscuro,

      width: expansionState.isExpanded
          ? expansionState.width - 300
          : expansionState.width,
      // child: const _ViewSideMenuBody(),
      child:
          expansionState.isExpanded ? Container() : const _ViewSideMenuBody(),
    );
  }
}

class _ViewSideMenuBody extends StatefulWidget {
  const _ViewSideMenuBody();

  @override
  State<_ViewSideMenuBody> createState() => _ViewSideMenuBodyState();
}

class _ViewSideMenuBodyState extends State<_ViewSideMenuBody> {
  final scale = 1.0;
  final offsetLeft = 1.0;
  final opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    // final expansionState = Provider.of<ExpansionState>(context);
    // double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        children: [
          const _BalanceMoney(),
          addVerticalSpace(5),
          _MarqueeCotization(h: h),
          addVerticalSpace(padding3),
          const _MoneyBank(),
          addVerticalSpace(padding3),
          const ContainerViewSideMenu(
            typeTransation: 'Incomes',
            dinero: 5678933,
          ),
          addVerticalSpace(padding3),
          const ContainerViewSideMenu(
            typeTransation: 'Expenses',
            dinero: 2342356,
          ),
          addVerticalSpace(padding3),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: padding2),
              child: MyExpensesText()),
          addVerticalSpace(padding3),
          const ListTileExpensesTransaction(
            icon: FontAwesomeIcons.wallet,
            dinero: -1350,
            chip1: 'Supermercado',
            chip2: 'Higiene',
          ),
          addVerticalSpace(padding3),
          const ListTileExpensesTransaction(
            icon: FontAwesomeIcons.landmark,
            dinero: -5080,
            chip1: 'Inversiones',
            chip2: 'Cedears',
          ),
          addVerticalSpace(padding3),
          const ListTileExpensesTransaction(
            icon: FontAwesomeIcons.creditCard,
            dinero: -2000,
            chip1: 'Tarjeta de credito',
          ),
        ],
      ),
    );
  }
}

class _BalanceMoney extends StatelessWidget {
  const _BalanceMoney();

  @override
  Widget build(BuildContext context) {
    final expansionState = Provider.of<ExpansionState>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding2),
      child: Transform.scale(
        scale: expansionState.isExpanded ? 0 : 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '\$ 125.678.11',
                  style: anton,
                ),
                addHorizontalSpace(25),
                const Icon(
                  FontAwesomeIcons.circleDollarToSlot,
                  color: Styles.amarilloClaro,
                ),
                const Spacer(),
                const CollapseViewExpandedMenu(
                  borderColor: Styles.negroMediano,
                ),
              ],
            ),
            Text(
              'Total del balance',
              style: slabo.copyWith(color: Styles.negroOscuro, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}

class _MarqueeCotization extends StatelessWidget {
  const _MarqueeCotization({
    required this.h,
  });

  final double h;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: h * .05,
      // child: Marquee(
      //   velocity: 20,
      //   // decelerationDuration: const Duration(milliseconds: 2000),
      //   text:
      //       ('USD/ARS - \$ 156,5 - BTC/USD - \$ 21,600 - EUR/USD - \$ 0,56'),
      //   style: const TextStyle(color: Colors.grey),
      // ),
    );
  }
}

class _MoneyBank extends StatelessWidget {
  const _MoneyBank();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                'Dinero en el banco',
                style: TextStyle(color: Styles.amarilloOscuro),
              ),
              addHorizontalSpace(6),
              const Icon(
                FontAwesomeIcons.bandcamp,
                color: Styles.amarilloClaro,
                size: 13,
              )
            ],
          ),
          // addVerticalSpace(padding4),
          Text(
            '\$22.556.34',
            style: anton.copyWith(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
