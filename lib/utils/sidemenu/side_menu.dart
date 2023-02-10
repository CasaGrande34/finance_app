import 'package:flutter/material.dart';

//dependencies
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../add_space.dart';
import '../styles_custom.dart';
import 'package:finance_app/utils/fonts_custom.dart';
import '../padding_custom.dart';
import 'container_selection.dart/container_selection.dart';

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
    return const _SideMenuBody();
  }
}

class _SideMenuBody extends StatefulWidget {
  const _SideMenuBody();

  @override
  State<_SideMenuBody> createState() => _SideMenuBodyState();
}

class _SideMenuBodyState extends State<_SideMenuBody> {
  @override
  Widget build(BuildContext context) {
    // bool isVisible = false;
    final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      color: Styles.negroMediano,
      height: h,
      width: 170,
      child: Column(
        children: [
          /*	------------------------------------- */
          const _SideMenuLogo(),
          addVerticalSpace(100),
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
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Container(
      // padding: EdgeInsets.all(5),
      height: 150,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(padding3),
        border: Border.all(
            color: Styles.amarilloClaro.withOpacity(0.5), width: 0.8),
      ),
      width: double.infinity,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.5,
            child: Center(
              child: Image.asset(
                'assets/background/texture_dark_sidemenu.png',
                fit: BoxFit.cover,
                width: 300,
              ),
            ),
          ),
          Positioned(
            top: 25,
            left: 37,
            child: Image.asset(
              'assets/logo/logo_echavarria.png',
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}

class _SideMenuItems extends StatefulWidget {
  const _SideMenuItems();

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
          nombredelItem: 'Resumen',
          icon: Icons.wallet,
          active: selected[0],
          touched: () {
            setState(() {
              select(0);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'Incomes',
          icon: Icons.trending_up,
          active: selected[1],
          touched: () {
            setState(() {
              select(1);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'Expenses',
          icon: Icons.trending_down,
          active: selected[2],
          touched: () {
            setState(() {
              select(2);
            });
          },
        ),
        addVerticalSpace(20),
        _SideMenuItem(
          nombredelItem: 'Configuration',
          icon: Icons.ballot_rounded,
          active: selected[3],
          touched: () {
            setState(() {
              select(3);
            });
          },
        ),
        addVerticalSpace(170),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Divider(),
        ),
        addVerticalSpace(5),
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
      {required this.touched,
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
        children: [
          SelectionBorder(
            active: widget.active,
            radius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          const Spacer(),
          CircleAvatar(
            /*	------------------------------------- */

            backgroundColor:
                widget.active ? Styles.amarilloClaro : Colors.transparent,
            child: Icon(
              widget.icon,
              color: widget.active ? Colors.black : Styles.grisOscuro,
              size: widget.active ? 24 : 17,
            ),
          ),
          addHorizontalSpace(8),
          SizedBox(
            width: 70,
            child: Text(
              widget.nombredelItem,
              style: slabo.copyWith(
                  fontSize: 17,
                  color: widget.active ? Styles.blanco : Styles.grisOscuro,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
