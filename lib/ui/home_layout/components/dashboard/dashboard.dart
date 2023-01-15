import 'package:finance_app/utils/add_space.dart';
import 'package:flutter/material.dart';

//file addresses
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/fonts_custom.dart';
import '../../../../utils/months.dart';
import '../../../../utils/navbar/navbar_custom.dart';

class DashboardCustom extends StatelessWidget {
  const DashboardCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h,
      width: w,
      child: Scaffold(
        body: Column(
          children: const [
            NavBarCustom(),
            DashboardCustomBody(),
          ],
        ),
      ),
    );
  }
}

class DashboardCustomBody extends StatelessWidget {
  const DashboardCustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return SizedBox(
      height: h * .09,
      width: w,
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        scrollDirection: Axis.horizontal,
        itemCount: monthsOfYear.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              monthsOfYear[index],
              style: slabo,
            ),
          );
        }),
      ),
    );
  }
}
