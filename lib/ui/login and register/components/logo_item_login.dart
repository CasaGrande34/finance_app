import 'package:flutter/material.dart';

class LogoItemLogin extends StatelessWidget {
  final String? logo;
  const LogoItemLogin({
    Key? key,
    this.logo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Center(
      child: Image.asset(
        logo!,
        height: h * .05,
        width: w * .05,
      ),
    );
  }
}
