import 'package:flutter/material.dart';
//dependencies
import '../colors_app.dart';
import 'icon_notification_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//file addresses
import '../add_space.dart';
import '../padding_custom.dart';

class NavBarCustom extends StatelessWidget {
  const NavBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      // color: ColorsApp.grisMedio,
      width: double.infinity,
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
        const Spacer(),
        const IconNotificationCustom(),
        addHorizontalSpace(padding5),
        const CircleAvatar(),
        addHorizontalSpace(padding3)
      ],
    );
  }
}
