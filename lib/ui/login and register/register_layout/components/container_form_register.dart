import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
//dependencies
import 'package:provider/provider.dart';
import 'package:finance_app/providers/auth_form_provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';
//file addresses
import '../../../../utils/fonts_custom.dart';
import '../../../../utils/inputs/inputs_custom.dart';
import '../../../../utils/add_space.dart';
import '../../../../utils/styles_custom.dart';
import '../../../../utils/padding_custom.dart';

class ContainerFormRegister extends StatefulWidget {
  final double height;
  final double width;
  final String? logo;
  final String? title;

  const ContainerFormRegister({
    Key? key,
    required this.height,
    required this.width,
    this.logo,
    this.title,
  }) : super(key: key);

  @override
  State<ContainerFormRegister> createState() => _ContainerFormRegisterState();
}

class _ContainerFormRegisterState extends State<ContainerFormRegister> {
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
          : BodyContainerForm(title: widget.title ?? ''),
    );
  }
}

class BodyContainerForm extends StatefulWidget {
  final String? title;
  const BodyContainerForm({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  State<BodyContainerForm> createState() => _BodyContainerFormState();
}

class _BodyContainerFormState extends State<BodyContainerForm> {
  bool isEmpty = true;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return ChangeNotifierProvider(
      create: (context) => AuthFormProvider(),
      child: Builder(builder: (context) {
        var loginFormProvider = Provider.of<AuthFormProvider>(
          context,
        );
        return Form(
          key: loginFormProvider.formKey,
          child: Column(
            children: [
              //AREA DE TEXTFIELDS
              addVerticalSpace(padding1),
              Text(widget.title!, style: montserrat),
              addVerticalSpace(padding3),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding1),
                child: TextFormField(
                  onChanged: (value) {
                    loginFormProvider.name = value;
                    isEmpty = false;
                  },
                  validator: (value) {
                    //CONDICIONES DEL VALIDADOR
                    if (value == null || value.isEmpty) {
                      return 'Ingrese su nombre';
                    }
                    if (value.length < 3) {
                      return 'Ingrese un apodo de al menos 3 caracteres';
                    }
                    return null;
                  },
                  decoration: CustomInputs.authInputDecoration(
                    labelText: 'Name',
                    hintText: 'Ingrese su apodo',
                    icon: const Icon(FontAwesomeIcons.user),
                  ),
                ),
              ),
              addVerticalSpace(padding2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding1),
                child: TextFormField(
                  onChanged: (value) {
                    loginFormProvider.email = value;
                    setState(() {
                      isEmpty = false;
                    });
                  },
                  validator: (value) {
                    //CONDICIONES DEL VALIDADOR
                    if (!EmailValidator.validate(value ?? '')) {
                      return 'Ingrese por favor un email valido';
                    }
                    return null;
                  },
                  decoration: CustomInputs.authInputDecoration(
                    labelText: 'Email',
                    hintText: 'Ingrese su correo',
                    icon: const Icon(FontAwesomeIcons.envelope),
                  ),
                ),
              ),
              addVerticalSpace(padding2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding1),
                child: TextFormField(
                  onChanged: (value) {
                    loginFormProvider.password = value;
                    isEmpty = false;
                  },
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
                  controller: loginFormProvider.buttonController,
                  onPressed: () {
                    loginFormProvider.validateForm();
                  },
                  color: Styles.amarilloClaro,
                  successColor: Colors.purple,
                  child: const Text('Ingresar')),
              addVerticalSpace(padding2),
            ],
          ),
        );
      }),
    );
  }

  doSomething() {
    AuthFormProvider form =
        Provider.of<AuthFormProvider>(context, listen: false);
    form.validateForm();
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
