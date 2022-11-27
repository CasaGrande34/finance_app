import 'package:flutter/material.dart';

//dependencies
import 'package:carousel_slider/carousel_slider.dart';

//file addresses
import '../../../../../utils/add_space.dart';
import '../../../../../utils/colors_app.dart';
import '../../../../../utils/fonts_custom.dart';
import '../components/container_form_create.dart';
import 'package:finance_app/utils/padding_custom.dart';



class CreateAccountView extends StatefulWidget {
  
  const CreateAccountView({Key? key}) : super(key: key);

  @override
  State<CreateAccountView> createState() => _CreateAccountViewState();
}

class _CreateAccountViewState extends State<CreateAccountView> {
  
  //String que cambian la luminosidad de los iconos de la ui de login y register
  String logoGithub = 'assets/logo/logo_github.png';
  String logoPinterest = 'assets/logo/logo_pinterest.png';
  String logoGoogle = 'assets/logo/logo_google.png';
   
  
  //Lista de imagenes de fondos que tienen login y create view
  List<String> divisasBackground = [
    'assets/divisa_background/1.jpg',
    'assets/divisa_background/2.jpg',
    'assets/divisa_background/3.jpg',
    'assets/divisa_background/4.jpg',
    'assets/divisa_background/5.jpg',
    'assets/divisa_background/6.jpg',
  ];
  
  
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Scaffold(
      body: Row(
        children: [
          /* Segun lo que vi en pinterest se pone normalemnte una foto 
          al costado del login o el create asi que aca lo vamos a implementar */
          TweenAnimationBuilder(
            curve: Curves.decelerate,
            duration: const Duration( milliseconds: 1300 ),
            tween: Tween<double>( begin: 0.0, end: 1.0 ),
            builder: ( context, value, child ) => Transform.scale(
              scale: 1.0 * value,
              child: SizedBox(
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
                
                items: List.generate( divisasBackground.length, (index) => Image.asset(
                    'assets/divisa_background/${ index + 1 }.jpg',
                    fit: BoxFit.cover,
                    width: w * .35,
                  ),
                ),
              ),
            ),
          ),),
          Expanded(
            child: Column(
              children: [
                addVerticalSpace(70),
                TweenAnimationBuilder(
                  curve: Curves.easeInOutCirc,
                  duration: const Duration( milliseconds: 2500 ),
                  tween: Tween<double>( begin: 1.0, end: 0.0 ),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset( 900 * value , 0.0),
                    child: Text('CASAGRANDE', style: satisfy))),
                addVerticalSpace(50),
                //FORM CONTAINER
                TweenAnimationBuilder(
                  curve: Curves.easeOutQuart,
                  tween: Tween<double>( begin: 0.0, end: 1.0 ),
                  duration: const Duration( milliseconds: 1300 ),
                  builder: ( context, value, child ) => Transform.scale(
                    scale: 1.0 * value,
                    child: const ContainerFormCreateAccount( height: .45, width: .35, title: 'CREA TU CUENTA', ),
                  ),
                ),
                addVerticalSpace( padding2 ),
                SizedBox(
                  width: w * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /*	------------------------------------- */ 
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeInOutCubicEmphasized,
                        duration: const Duration(milliseconds: 1100),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _ ) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: MouseRegion(
                            onEnter: (value) {
                              setState(() {
                                logoGithub = 'assets/logo/logo_github_iluminado.png';
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                logoGithub = 'assets/logo/logo_github.png';
                              });
                            },
                            child: ContainerFormCreateAccount(
                              height: .08, 
                              width: .06, 
                              logo: logoGithub,
                              
                            ),
                          ),
                        ),
                      ),
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeInOutCubicEmphasized,
                        duration: const Duration(milliseconds: 1500),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _ ) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                logoPinterest = 'assets/logo/logo_pinterest_iluminado.png';
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                logoPinterest = 'assets/logo/logo_pinterest.png';
                              });
                            },
                            child: ContainerFormCreateAccount(
                              height: .08, 
                              width: .06, 
                              logo: logoPinterest,
                              
                            ),
                          ),
                        ),
                      ),
                      TweenAnimationBuilder<double>(
                        curve: Curves.easeInOutCubicEmphasized,
                        duration: const Duration(milliseconds: 2100),
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        builder: (context, value, _ ) => Transform.translate(
                          offset: Offset(0.0, 900 * value),
                          child: MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                logoGoogle = 'assets/logo/logo_google_iluminado.png';
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                logoGoogle = 'assets/logo/logo_google.png';
                              });
                            },

                            child: ContainerFormCreateAccount(
                              height: .08, 
                              width: .06, 
                              logo: logoGoogle,
                              
                            ),
                          ),
                        ),
                      ),  
                    ],
                  ),
                ),
                addVerticalSpace(padding2),
                TweenAnimationBuilder(
                  curve: Curves.easeOutCirc,
                  duration: const Duration(milliseconds: 2500),
                  tween: Tween<double>(begin: 1.0,end: 0),
                  builder: (context, value, child) => Transform.translate(
                    offset: Offset( 900 * value, 0 ),
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
                ),
                const Spacer(),
                SizedBox(
                  height: h * .06,
                  width: w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 600),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('Sobre nosotros', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),))),
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 800),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('Contacto', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),))),
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 1000),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('Politicas y privacidad', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),))),
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 1200),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('NewsLetter', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),))),
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 1400),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('Ayuda', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),))),
                      TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween<double>(begin: 1.0, end: 0.0),
                        duration: const Duration(milliseconds: 1700),
                        builder: (context, value, child) => Transform.translate(
                          offset: Offset( 900 * value, 0.0),
                          child: Text('Trabaja con nosotros', style: TextStyle(
                            color: ColorsApp.iconsColor1
                          ),)))
                    ],
                  ),
                )
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}



