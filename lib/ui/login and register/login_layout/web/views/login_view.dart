import 'package:finance_app/ui/login%20and%20register/login_layout/components/components.dart';
import 'package:flutter/material.dart';

//dependencies

//file addresses
import '../../../../../utils/add_space.dart';
import '../../../../../utils/colors_app.dart';
import '../../../../../utils/fonts_custom.dart';
import '../../components/container_form_login.dart';
import 'package:finance_app/utils/padding_custom.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Column(
      children: [
        addVerticalSpace(70),
        BienvenidaTitle(),
        addVerticalSpace(50),
        //FORM CONTAINER
        TweenAnimationBuilder(
            curve: Curves.easeOutQuart,
            tween: Tween<double>(begin: 0.0, end: 1.0),
            duration: const Duration(milliseconds: 500),
            builder: (context, value, child) => Transform.scale(
                scale: 1.0 * value,
                child: const ContainerFormLogin(
                    height: .45, width: .35, title: 'Inicia sesion'))),
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
                builder: (context, value, _) => Transform.translate(
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
                    child: ContainerFormLogin(
                      height: .08,
                      width: .06,
                      logo: logoGithub,
                      title: '',
                    ),
                  ),
                ),
              ),
              TweenAnimationBuilder<double>(
                curve: Curves.easeOutBack,
                duration: const Duration(milliseconds: 1200),
                tween: Tween<double>(begin: 1.0, end: 0.0),
                builder: (context, value, _) => Transform.translate(
                  offset: Offset(0.0, 900 * value),
                  child: MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        logoPinterest =
                            'assets/logo/logo_pinterest_iluminado.png';
                      });
                    },
                    onExit: (event) {
                      setState(() {
                        logoPinterest = 'assets/logo/logo_pinterest.png';
                      });
                    },
                    child: ContainerFormLogin(
                      height: .08,
                      width: .06,
                      logo: logoPinterest,
                      title: '',
                    ),
                  ),
                ),
              ),
              TweenAnimationBuilder<double>(
                curve: Curves.easeOutBack,
                duration: const Duration(milliseconds: 1800),
                tween: Tween<double>(begin: 1.0, end: 0.0),
                builder: (context, value, _) => Transform.translate(
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
                    child: ContainerFormLogin(
                      height: .08,
                      width: .06,
                      logo: logoGoogle,
                      title: '',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        addVerticalSpace(padding2),
        ChangeViewRegister(),
        const Spacer(),
        FooterLogin()
      ],
    ));
  }
}
