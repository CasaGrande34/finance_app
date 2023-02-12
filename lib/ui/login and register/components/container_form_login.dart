import 'package:finance_app/providers/auth_provider.dart';
import 'package:flutter/material.dart';
//dependencies
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
//file addresses
import '../../../../utils/add_space.dart';
import '../../../utils/styles_custom.dart';
import '../../../../utils/fonts_custom.dart';
import '../../../../utils/padding_custom.dart';
import '../../../../utils/inputs/inputs_custom.dart';
import 'package:finance_app/providers/login_form_provider.dart';

class ContainerFormLogin extends StatefulWidget {
  final String? logo;

  const ContainerFormLogin({
    Key? key,
    this.logo,
    required String title,
  }) : super(key: key);

  @override
  State<ContainerFormLogin> createState() => _ContainerFormLoginState();
}

class _ContainerFormLoginState extends State<ContainerFormLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 400,
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [Styles.negroMediano, Styles.negroOscuro],
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.purple,
          width: 1.2,
        ),
      ),
      child: const _BodyContainerFormLogin(),
    );
  }
}

class _BodyContainerFormLogin extends StatefulWidget {
  const _BodyContainerFormLogin();

  @override
  State<_BodyContainerFormLogin> createState() =>
      _BodyContainerFormLoginState();
}

class _BodyContainerFormLoginState extends State<_BodyContainerFormLogin> {
  RoundedLoadingButtonController buttonController =
      RoundedLoadingButtonController();
  bool obscureText = true;
  final GlobalKey<FormState> formLoginKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    // AUTHPROVIDER 🔥
    final authProvider = Provider.of<AuthProvider>(context);
    return ChangeNotifierProvider(
      create: (_) => LoginFormProvider(),
      child: Builder(
        builder: (context) {
          //PROVIDER🔥
          final loginFormProvider =
              Provider.of<LoginFormProvider>(context, listen: false);
          return Form(
            key: loginFormProvider.loginFormKey,
            child: Column(
              children: [
                addVerticalSpace(padding1),
                Text(
                  'Inicia sesion',
                  style: anton.copyWith(color: Colors.white, fontSize: 20),
                ),
                addVerticalSpace(padding3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding1),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    autofocus: true,
                    validator: (value) {
                      //CONDICIONES DEL VALIDADOR
                      if (!EmailValidator.validate(value ?? '')) {
                        return 'Email no valido';
                      }
                      return null;
                    },
                    onChanged: (value) => loginFormProvider.email = value,
                    decoration: CustomInputs.authInputDecoration(
                      labelText: 'Email',
                      hintText: 'Ingrese su correo',
                      icon: const Icon(
                        FontAwesomeIcons.envelope,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                addVerticalSpace(padding3),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding1),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
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
                    onChanged: (value) => loginFormProvider.password = value,
                    obscureText: obscureText,
                    decoration: CustomInputs.authInputDecoration(
                      labelText: 'Password',
                      hintText: '*********',
                      icon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          child: Icon(
                            obscureText
                                ? FontAwesomeIcons.eyeLowVision
                                : FontAwesomeIcons.eye,
                            size: 20,
                          )),
                    ),
                  ),
                ),
                const Spacer(),
                RoundedLoadingButton(
                  width: w * .14,
                  controller: loginFormProvider.buttonController,
                  height: h * .06,
                  onPressed: () {
                    final isValid = loginFormProvider.validateForm();
                    if (isValid)
                      authProvider.login(
                          loginFormProvider.email, loginFormProvider.password);
                  },
                  color: Styles.amarilloClaro,
                  successColor: Colors.purple,
                  child: const Text('Ingresar'),
                ),
                addVerticalSpace(padding2),
              ],
            ),
          );
        },
      ),
    );
  }
}
