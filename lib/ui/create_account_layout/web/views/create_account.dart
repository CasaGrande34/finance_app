import 'package:flutter/material.dart';

//dependencies
import 'package:carousel_slider/carousel_slider.dart';

//file addresses
import '../../../../utils/add_space.dart';
import '../../../../utils/colors_app.dart';
import '../../../../utils/fonts_custom.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/container_form.dart';


class CreateAccountView extends StatefulWidget {
  
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  
  //Lista de imagenes de fondos que tienen login y create view
  List<String> ninjas = [
    'assets/divisa_background/1.jpg',
    'assets/divisa_background/2.jpg',
    'assets/divisa_background/3.jpg',
    'assets/divisa_background/4.jpg',
    'assets/divisa_background/5.jpg',
    'assets/divisa_background/6.jpg',
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
            /* Segun lo que vi en pinterest se pone normalemnte una foto 
            al costado del login o el create asi que aca lo vamos a implementar */
            SizedBox(
              height: h,
              width: w * .35,
              child: CarouselSlider(
                
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlay: true,
                  autoPlayCurve: Curves.decelerate,
                ),
                
                items: List.generate(ninjas.length, (index) => Image.asset(
                  'assets/divisa_background/${ index + 1 }.jpg',
                  fit: BoxFit.cover,
                  width: w * .35,
                ))
                
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  addVerticalSpace(70),
                  TweenAnimationBuilder(
                    curve: Curves.elasticInOut,
                    duration: const Duration(milliseconds: 2000),
                    tween: Tween<double>( begin: 1.0, end: 0.0 ),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(0.0, -900 * value),
                      child: Text('CASAGRANDE', style: satisfy))),
                  addVerticalSpace(50),
                  //FORM CONTAINER
                  TweenAnimationBuilder(
                    curve: Curves.easeOutQuart,
                    tween: Tween<double>(begin: 0.0, end: 1.0),
                    duration: const Duration(milliseconds: 500),
                    builder: (context, value, child) => Transform.scale(
                      scale: 1.0 * value,
                      child: ContainerForm( height: .45, width: .35, ))),
                  addVerticalSpace(padding2),
                  SizedBox(
                    width: w * .3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        /*	------------------------------------- */ 
                        TweenAnimationBuilder<double>(
                          curve: Curves.easeOutBack,
                          duration: const Duration(milliseconds: 900),
                          tween: Tween<double>(begin: 1.0, end: 0.0),
                          builder: (context, value, _ ) => Transform.translate(
                            offset: Offset(0.0, 900 * value),
                            child: ContainerForm(
                              height: .08, 
                              width: .06, 
                              logo: 'assets/logo/logo_github.png',
                              
                              ),
                          ),),
                        TweenAnimationBuilder<double>(
                          curve: Curves.easeOutBack,
                          duration: const Duration(milliseconds: 1200),
                          tween: Tween<double>(begin: 1.0, end: 0.0),
                          builder: (context, value, _ ) => Transform.translate(
                            offset: Offset(0.0, 900 * value),
                            child: ContainerForm(
                              height: .08, 
                              width: .06, 
                              logo: 'assets/logo/logo_pinterest.png',
                              
                              ),
                          ),),
                        TweenAnimationBuilder<double>(
                          curve: Curves.easeOutBack,
                          duration: const Duration(milliseconds: 1800),
                          tween: Tween<double>(begin: 1.0, end: 0.0),
                          builder: (context, value, _ ) => Transform.translate(
                            offset: Offset(0.0, 900 * value),
                            child: ContainerForm(
                              height: .08, 
                              width: .06, 
                              logo: 'assets/logo/logo_google.png',
                              
                              ),
                          ),),
                          
                      ],
                    ),
                  ),
                  addVerticalSpace(padding2),
                  TweenAnimationBuilder(
                    curve: Curves.easeOutCirc,
                    duration: const Duration(milliseconds: 2500),
                    tween: Tween<double>(begin: 1.0,end: 0),
                    builder: (context, value, child) => Transform.translate(
                      offset: Offset(900 * value, 0),
                      child: SizedBox(
                        width: w * .3,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Ya eres parte de este show ?', style: TextStyle(
                              color: Colors.white 
                            ),),
                            addHorizontalSpace(6),
                            const Text('Inicia sesion', style: TextStyle(
                              color: ColorsApp.selectionContainerBorder,
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



