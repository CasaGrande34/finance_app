import 'package:finance_app/utils/add_space.dart';
import 'package:flutter/material.dart';

//file addresses
import '../../../../utils/colors_app.dart';
import '../../../../utils/navbar/navbar_custom.dart';

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          NavBarCustom(),
          DashboardCustomBody(),
        ],
      ),
    );
  }
}

class DashboardCustomBody extends StatelessWidget {
  const DashboardCustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const FiladeResumenes(),
          addVerticalSpace(20),
          const GraficDashboardMenu()
        ],
      ),
    );
  }
}

class GraficDashboardMenu extends StatelessWidget {
  const GraficDashboardMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: double.infinity,
      decoration: BoxDecoration(
          color: ColorsApp.grisOscuro, borderRadius: BorderRadius.circular(15)),
    );
  }
}

class FiladeResumenes extends StatelessWidget {
  const FiladeResumenes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Resumen(),
        const Resumen(),
        const Resumen(),
        Container(
          height: 200,
          width: 450,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ColorsApp.grisOscuro),
        )
      ],
    );
  }
}

class Resumen extends StatelessWidget {
  const Resumen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: w * .16,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: ColorsApp.grisOscuro),
    );
  }
}
