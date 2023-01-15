import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../colors_app.dart';
//file addresses

class IconNotificationCustom extends StatelessWidget {
  const IconNotificationCustom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        SizedBox(
          height: h,
          width: w * .03,
          child: Icon(
            FontAwesomeIcons.boxArchive,
            color: ColorsApp.grisClaro,
          ),
        ),
        Positioned(top: 10, left: 1, child: _PointNotification())
      ],
    );
  }
}

class _PointNotification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 7,
      backgroundColor: ColorsApp.amarilloClaro,
      child: Text(
        '1',
        style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
      ),
    );
  }
}
