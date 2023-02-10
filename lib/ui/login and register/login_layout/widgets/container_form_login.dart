import 'dart:async';

import 'package:flutter/material.dart';
//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
//file addresses
import '../../../../utils/add_space.dart';
import '../../../../utils/styles_custom.dart';
import '../../../../utils/fonts_custom.dart';
import '../../../../utils/inputs/inputs_custom.dart';
import '../../../../utils/padding_custom.dart';

class ContainerFormLogin extends StatefulWidget {
  final double height;
  final double width;
  final String? logo;

  const ContainerFormLogin({
    Key? key,
    required this.height,
    required this.width,
    this.logo,
    required String title,
  }) : super(key: key);

  @override
  State<ContainerFormLogin> createState() => _ContainerFormLoginState();
}

class _ContainerFormLoginState extends State<ContainerFormLogin> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      height: h * widget.height,
      width: w * widget.width,
      decoration: BoxDecoration(
        color: Styles.negroMediano,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.grey,
          width: (widget.width < .1) ? 3 : 0,
        ),
      ),
      child: (widget.width < .1)
          ? LogoContainerForm(
              logo: widget.logo,
            )
          : const BodyContainerForm(),
    );
  }
}

class BodyContainerForm extends StatefulWidget {
  const BodyContainerForm({
    super.key,
  });

  @override
  State<BodyContainerForm> createState() => _BodyContainerFormState();
}

class _BodyContainerFormState extends State<BodyContainerForm> {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  final GlobalKey<FormState> formLoginKey = GlobalKey();
  bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Form(
      key: formLoginKey,
      child: Column(
        children: [
          addVerticalSpace(padding1),
          Text('Inicia sesion',
              style: anton.copyWith(color: Colors.white, fontSize: 20)),
          addVerticalSpace(padding3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding1),
            child: TextFormField(
                decoration: CustomInputs.authInputDecoration(
                    labelText: 'Email',
                    hintText: 'Ingrese su correo',
                    icon: const Icon(FontAwesomeIcons.envelope))),
          ),
          addVerticalSpace(padding3),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding1),
            child: TextFormField(
              validator: (value) {
                //CONDICIONES DEL VALIDADOR
                if (value == null || value.isEmpty) {
                  return 'Ingrese su contrasenia';
                }
                if (value.length < 6) {
                  return 'La contrasenia debe ser de almenos 6 caracteres';
                }
                return null;
              },
              obscureText: true,
              decoration: CustomInputs.authInputDecoration(
                labelText: 'Password',
                hintText: '*********',
                icon: const Icon(FontAwesomeIcons.eye),
              ),
            ),
          ),
          const Spacer(),
          RoundedLoadingButton(
              width: w * .14,
              height: h * .06,
              controller: buttonController,
              onPressed: doSomething,
              color: Styles.amarilloClaro,
              successColor: Colors.purple,
              child: const Text('Ingresar')),
          addVerticalSpace(padding2),
        ],
      ),
    );
  }

  doSomething() {
    Timer(const Duration(milliseconds: 600), () {
      buttonController.success();
      Timer(const Duration(milliseconds: 500), () {
        buttonController.reset();
      });
    });
  }
}

class LogoContainerForm extends StatelessWidget {
  final String? logo;
  const LogoContainerForm({
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
