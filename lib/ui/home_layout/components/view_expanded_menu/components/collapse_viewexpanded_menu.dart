import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/expansion_state.dart';
import '../../../../../utils/colors_app.dart';

class CollapseViewExpandedMenu extends StatefulWidget {
  final Color? borderColor;
  final Color? colorContainerIsVisibleTrue;
  final Color? colorContainerIsVisibleFalse;
  final Color? colorIconTrue;
  final Color? colorIconFalse;
  final IconData? icon;

  const CollapseViewExpandedMenu({
    super.key,
    this.borderColor = ColorsApp.negroMediano,
    this.colorContainerIsVisibleTrue = ColorsApp.grisClaro,
    this.colorContainerIsVisibleFalse = ColorsApp.negroMediano,
    this.colorIconTrue = ColorsApp.amarilloClaro,
    this.colorIconFalse = ColorsApp.grisClaro,
    this.icon = Icons.keyboard_double_arrow_left_outlined,
  });

  @override
  State<CollapseViewExpandedMenu> createState() =>
      _CollapseViewExpandedMenuState();
}

class _CollapseViewExpandedMenuState extends State<CollapseViewExpandedMenu> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    final expansionState = Provider.of<ExpansionState>(context);
    return InkWell(
      onTap: expansionState.toggleExpansion,
      child: MouseRegion(
        onHover: (value) {
          setState(() {
            isVisible = true;
          });
        },
        onExit: (event) {
          setState(() {
            isVisible = false;
          });
        },
        child: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
              border: Border.all(color: widget.borderColor!, width: 1.0),
              color: isVisible
                  ? widget.colorContainerIsVisibleTrue
                  : widget.colorContainerIsVisibleFalse,
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            widget.icon,
            color: isVisible ? widget.colorIconTrue : widget.colorIconFalse,
            size: isVisible ? 28 : 24,
          ),
        ),
      ),
    );
  }
}
