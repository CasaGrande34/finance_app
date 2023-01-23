import 'package:flutter/material.dart';

//dependencies
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import 'package:finance_app/utils/fonts_custom.dart';
import '../view_expanded_menu/components/collapse_viewexpanded_menu.dart';
import '../view_expanded_menu/view_expanded_menu.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'container_selection.dart/container_selection.dart';
import 'package:finance_app/providers/expansion_state.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    super.key,
  });

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Row(
      children: const [
        _SideMenuBody(),
        ViewExpandedMenu(),
      ],
    );
  }
}

class _SideMenuBody extends StatefulWidget {
  const _SideMenuBody({
    super.key,
  });

  @override
  State<_SideMenuBody> createState() => _SideMenuBodyState();
}

class _SideMenuBodyState extends State<_SideMenuBody> {
  @override
  Widget build(BuildContext context) {
    bool isVisible = false;
    final expansionState = Provider.of<ExpansionState>(context);
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      color: ColorsApp.negroMediano,
      height: h,
      width: 170,
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              /*	------------------------------------- */
              addVerticalSpace(20),
              const _SideMenuLogo(),
              addVerticalSpace(110),
              /*	------------------------------------- */
              const _SideMenuItems()
              /*	------------------------------------- */
            ],
          ),
          Positioned(
            right: 0,
            top: 120,
            child: expansionState.isExpanded
                ? CollapseViewExpandedMenu(
                    icon: Icons.double_arrow_sharp,
                    colorContainerIsVisibleTrue: Colors.transparent,
                  )
                : SizedBox(),
          )
        ],
      ),
    );
  }
}

class _SideMenuLogo extends StatelessWidget {
  const _SideMenuLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Image.asset(
      'assets/logo/logo_casagrande.png',
      height: h * .12,
      width: w,
      fit: BoxFit.contain,
    );
  }
}

class _SideMenuItems extends StatefulWidget {
  const _SideMenuItems({super.key});

  @override
  State<_SideMenuItems> createState() => _SideMenuItemsState();
}

class _SideMenuItemsState extends State<_SideMenuItems> {
  final List<bool> selected = [
    true,
    false,
    false,
    false,
    false,
  ];

  /* 
  recibimos un numero como parametro y vamos a indicar que si el indice es diferente de este numero dado entonces 
  le indicamos a la lista selected en la posicion del indice que sea falso pero si el numero dado es igual al indice entonces el valor 
  de la lista se transforma en true y se transforma en true entonces seguimos creando logica para nuestro header
   */
  void select(int n) {
    for (int i = 0; i < selected.length; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _SideMenuItem(
          nombredelItem: 'Item 1',
          icon: FontAwesomeIcons.appStoreIos,
          active: selected[0],
          touched: () {
            setState(() {
              select(0);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'Item 2',
          icon: FontAwesomeIcons.galacticRepublic,
          active: selected[1],
          touched: () {
            setState(() {
              select(1);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'Item 3',
          icon: FontAwesomeIcons.nairaSign,
          active: selected[2],
          touched: () {
            setState(() {
              select(2);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'item 4',
          icon: FontAwesomeIcons.rankingStar,
          active: selected[3],
          touched: () {
            setState(() {
              select(3);
            });
          },
        ),
        addVerticalSpace(180),
        _SideMenuItem(
            touched: () {
              setState(() {
                select(4);
              });
            },
            active: selected[4],
            icon: Icons.logout,
            nombredelItem: 'Logout')
      ],
    );
  }
}

class _SideMenuItem extends StatefulWidget {
  final Function touched;
  final bool active;
  final IconData icon;
  final String nombredelItem;

  const _SideMenuItem(
      {super.key,
      required this.touched,
      required this.active,
      required this.icon,
      required this.nombredelItem});

  @override
  State<_SideMenuItem> createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<_SideMenuItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.touched(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectionBorder(
            active: widget.active,
            radius: const BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
          const Spacer(),
          CircleAvatar(
            /*	------------------------------------- */
            backgroundColor:
                widget.active ? ColorsApp.amarilloClaro : Colors.transparent,
            child: Icon(
              widget.icon,
              color: widget.active ? Colors.black : Colors.grey,
              size: 17,
            ),
          ),
          addHorizontalSpace(8),
          Text(
            widget.nombredelItem,
            style: slabo.copyWith(
              fontSize: 17,
            ),
          ),
          const Spacer(),
          SelectionBorder(
            active: widget.active,
            radius: const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        ],
      ),
    );
  }
}
