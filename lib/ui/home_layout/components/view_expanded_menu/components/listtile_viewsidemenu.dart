import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../../utils/add_space.dart';
import '../../../../../utils/colors_app.dart';
import '../../../../../utils/fonts_custom.dart';

class ListTileExpensesTransaction extends StatefulWidget {
  final IconData icon;
  final int dinero;
  final String chip1;
  final String? chip2;

  const ListTileExpensesTransaction({
    Key? key,
    required this.icon,
    required this.dinero,
    required this.chip1,
    this.chip2,
  }) : super(key: key);

  @override
  State<ListTileExpensesTransaction> createState() =>
      _ListTileExpensesTransactionState();
}

class _ListTileExpensesTransactionState
    extends State<ListTileExpensesTransaction> {
  bool onHover = false;
  Color colorContainerSelect = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          colorContainerSelect = ColorsApp.negroMediano;
          onHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          colorContainerSelect = Colors.transparent;
          onHover = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 400,
        ),
        color: colorContainerSelect,
        child: ListTile(
          leading: CircleAvatar(
            radius: 18,
            backgroundColor: ColorsApp.amarilloClaro,
            child: Icon(
              widget.icon,
              color: ColorsApp.negroMediano,
              size: onHover ? 18 : 14,
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 4.0),
            child: Text(
              '\$ ${widget.dinero.toString()} ',
              style: roboto.copyWith(
                fontSize: 14,
                color: ColorsApp.blanco,
                letterSpacing: 2.0,
              ),
            ),
          ),
          //🔥🔥🔥 CHIPS
          subtitle: Row(
            children: [
              Chip(
                backgroundColor:
                    onHover ? ColorsApp.blanco : ColorsApp.negroMediano,
                label: Text(
                  widget.chip1,
                  style: roboto.copyWith(
                    fontSize: 10,
                    color: onHover ? ColorsApp.negroMediano : ColorsApp.blanco,
                  ),
                ),
              ),
              addHorizontalSpace(8),
              Chip(
                backgroundColor:
                    onHover ? ColorsApp.blanco : ColorsApp.negroMediano,
                label: Text(
                  widget.chip2 ?? '',
                  style: roboto.copyWith(
                    fontSize: 10,
                    color: onHover ? ColorsApp.negroMediano : ColorsApp.blanco,
                  ),
                ),
              ),
            ],
          ),
          trailing: Icon(
            FontAwesomeIcons.chevronRight,
            size: 17,
            color: onHover ? ColorsApp.blanco : ColorsApp.negroMediano,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
