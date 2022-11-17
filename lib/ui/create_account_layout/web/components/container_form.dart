import 'package:flutter/material.dart';
//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//file addresses
import '../../../../utils/fonts_custom.dart';
import '../views/create_account.dart';
import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import '../../../../utils/padding_custom.dart';
import 'custom_textfield.dart';

class ContainerForm extends StatefulWidget {
  double height;
  double width;
  String? logo;

  ContainerForm({
    Key? key,
    required this.height,
    required this.width,
    this.logo,
  }) : super(key: key);

  @override
  State<ContainerForm> createState() => _ContainerFormState();
}

class _ContainerFormState extends State<ContainerForm> {
  
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Container(
      height: h * widget.height,
      width: w * widget.width,
      decoration: BoxDecoration(
        color: ColorsApp.colorSideMenuDark,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
        color: Colors.grey,
        width: (widget.width < .1)? 3:0 ,
      ),
      ),
      child: (widget.width < .1)? LogoContainerForm(logo: widget.logo,) : const BodyContainerForm(),
    );
  }
}

class BodyContainerForm extends StatelessWidget {
  const BodyContainerForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        addVerticalSpace(padding1),
        Text('Crea tu cuenta', style: antonBlack.copyWith(
          color: Colors.white,
          fontSize: 20
        )),
        addVerticalSpace(padding3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding1),
          child: CustomTextFormField(nombredelCampo: 'Name', icon: const Icon( FontAwesomeIcons.user )),
        ),
        addVerticalSpace(padding3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding1),
          child: CustomTextFormField(nombredelCampo: 'Email', icon: const  Icon( FontAwesomeIcons.envelope )),
        ),
        addVerticalSpace(padding3),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding1),
          child: CustomTextFormField(nombredelCampo: 'Password', icon: const Icon( FontAwesomeIcons.eye )),
        ),
      ],
      
    );
  }
}

class LogoContainerForm extends StatelessWidget {
  
  String? logo;
  LogoContainerForm({
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
        height: h * .05 ,
        width: w * .05 ,),
    );
  }
}

