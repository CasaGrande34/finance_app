import 'package:finance_app/utils/fonts_custom.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import '../view_expanded_menu/view_expanded_menu.dart';
import 'container_selection.dart/container_selection.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      color: ColorsApp.negroOscuro,
      height: h,
      width: w > 700 ? 470 : 0,
      // 🔥 SIDEMENU AND VIEWEXPANDEDMENU
      child: Stack(
        children: [
          Row(children: const [_SideMenuBody(), ViewExpandedMenu()]),
          Positioned(
            top: padding2,
            right: 10,
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(5)),
              child: const Icon(
                Icons.keyboard_double_arrow_left_outlined,
                color: ColorsApp.backgroundLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SideMenuBody extends StatelessWidget {
  const _SideMenuBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h,
      width: 170,
      child: Column(
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
        addVerticalSpace(50),
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
        addVerticalSpace(50),
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
        addVerticalSpace(50),
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
        addVerticalSpace(90),
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
