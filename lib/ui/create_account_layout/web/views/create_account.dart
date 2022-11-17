import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:finance_app/utils/padding_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import '../../../../utils/fonts_custom.dart';

class CreateAccountView extends StatefulWidget {
  
  CreateAccountView({Key? key}) : super(key: key);

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  
  List<String> ninjas = [
    'assets/ninjas_background/1.jpg',
    'assets/ninjas_background/2.jpg',
    'assets/ninjas_background/3.jpg',
    'assets/ninjas_background/4.jpg',
    'assets/ninjas_background/5.jpg',
    'assets/ninjas_background/6.jpg',
  ];
  
  GlobalKey<FormState> formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Scaffold(
      body: Form(
        key: formKey,
        child: Row(
          children: [
            /* Segun lo que vi en pinterest se pone normalemnte una foto al costado del login o el create asi que aca lo vamos a implementar */
            SizedBox(
              height: h,
              width: w * .3,
              child: CarouselSlider(
                
                options: CarouselOptions(
                  autoPlay: true,
                  autoPlayCurve: Curves.easeInOut,
                  // aspectRatio: 1,
                  // viewportFraction: 2.0
                ),
                items: List.generate(ninjas.length, (index) => Image.asset(
                  'assets/ninjas_background/${ index + 1 }.jpg',
                  fit: BoxFit.cover,
                ))
                
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  addVerticalSpace(70),
                  Text('CASAGRANDE', style: satisfy),
                  addVerticalSpace(50),
                  ContainerForm( height: .4, width: .35, ),
                  addVerticalSpace(padding2),
                  SizedBox(
                    width: w * .3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ContainerForm(height: .1, width: .08),
                        ContainerForm(height: .1, width: .08),
                        ContainerForm(height: .1, width: .08),
                      ],
                    ),
                  ),
                  addVerticalSpace(padding2),
                  Text('Ya tienes cuenta? Inicia sesion', style: TextStyle(
                    color: Colors.white 
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerForm extends StatefulWidget {
  double height;
  double width;

  ContainerForm({
    Key? key,
    required this.height,
    required this.width,
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
      // .4 y .35
      decoration: BoxDecoration(
        color: ColorsApp.colorSideMenuDark,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
        color: Colors.grey,
        width: (widget.width < .1)? 5:0 ,
      ),
      ),
      child: (widget.width < .1)? null : const BodyContainerForm(),
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
        Text('Create Account'),
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

class CustomTextFormField extends StatelessWidget {
  
  String nombredelCampo;
  Widget icon;
  
  CustomTextFormField({
    Key? key,
    required this.nombredelCampo,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.amber,
      decoration: buildDecoration(),
    );
  }

  InputDecoration buildDecoration() => InputDecoration(
    contentPadding: EdgeInsets.all(8.0),
    counterText: '1/2',
    fillColor: Colors.grey,
    hoverColor: ColorsApp.selectionContainerBorder,
    
    label: Text(nombredelCampo),
    labelStyle: const TextStyle(
      color: ColorsApp.itemSelectionSideBar
    ),
    
    // suffix: icon,
    suffixIconColor: ColorsApp.itemSelectionSideBar,
    suffixIcon: icon,
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
      borderSide: BorderSide(
        color: ColorsApp.selectionContainerBorder,
        width: 1
      )
    ),
    
  );
}
