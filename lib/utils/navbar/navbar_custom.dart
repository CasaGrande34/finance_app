import 'package:flutter/material.dart';
//dependencies
import '../colors_app.dart';
import 'icon_notification_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//file addresses
import '../add_space.dart';
import '../padding_custom.dart';
import 'package:finance_app/utils/navbar/search_container.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      color: ColorsApp.grisMedio,
      width: w,
      height: h * .09,
      child: _NavBarContent(),
    );
  }
}

class _NavBarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        addHorizontalSpace(padding3),
        Icon(
          FontAwesomeIcons.bars,
          color: ColorsApp.grisOscuro,
        ),
        addHorizontalSpace(20),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: padding3),
          child: SearchContainer(),
        ),
        const Spacer(),
        const IconNotificationCustom(),
        addHorizontalSpace(padding5),
        const CircleAvatar(),
        addHorizontalSpace(padding4)
      ],
    );
  }
}
