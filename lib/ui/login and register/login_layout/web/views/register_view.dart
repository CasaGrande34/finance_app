import 'package:flutter/material.dart';

//dependencies

//file addresses
import '../../../../../routes/router_flutro.dart';
import '../../../../../utils/add_space.dart';
import 'package:finance_app/utils/padding_custom.dart';

import '../../../../../utils/responsive.dart';
import '../../../../../utils/styles_custom.dart';
import '../../components/bienvenida_title.dart';
import '../../components/change_view_register.dart';
import '../../components/container_form_login.dart';
import '../../components/footer_login.dart';
import '../../components/logo_item_login.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  //String que cambian la luminosidad de los iconos de la ui de login y register
  String logoGithub = 'assets/logo/logo_github.png';
  String logoPinterest = 'assets/logo/logo_pinterest.png';
  String logoGoogle = 'assets/logo/logo_google.png';

  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Styles.negroOscuro,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              // right: 150,
              right: Responsive.isDesktop(context) ? 140 : 0,
              child: const GifDineroBackground(),
            ),
            Column(
              children: [
                addVerticalSpace(70),
                const BienvenidaTitle(
                  text: 'Bienvenido',
                ),
                addVerticalSpace(50),
                //FORM CONTAINER
                TweenAnimationBuilder(
                  curve: Curves.easeOutQuart,
                  tween: Tween<double>(begin: 0.0, end: 1.0),
                  duration: const Duration(milliseconds: 500),
                  builder: (context, value, child) => Transform.scale(
                    scale: 1.0 * value,
                    child: const ContainerFormLogin(title: 'Crea una cuenta'),
                  ),
                ),
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
                                logoGithub =
                                    'assets/logo/logo_github_iluminado.png';
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                logoGithub = 'assets/logo/logo_github.png';
                              });
                            },
                            child: LogoItemLogin(
                              logo: logoGithub,
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
                                logoPinterest =
                                    'assets/logo/logo_pinterest.png';
                              });
                            },
                            child: LogoItemLogin(
                              logo: logoPinterest,
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
                                logoGoogle =
                                    'assets/logo/logo_google_iluminado.png';
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                logoGoogle = 'assets/logo/logo_google.png';
                              });
                            },
                            child: LogoItemLogin(
                              logo: logoGoogle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                addVerticalSpace(padding2),
                ChangeView(
                  route: RoutesDelegateFluro.loginR,
                  text1: 'Ya tienes cuenta?',
                  textCambio: 'Inicia sesion',
                ),
                const Spacer(),
                const FooterLogin()
              ],
            ),
          ],
        ));
  }
}

class GifDineroBackground extends StatelessWidget {
  const GifDineroBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.dstOut,
      shaderCallback: (rect) {
        return const RadialGradient(
          // begin: Alignment.centerLeft,
          // end: Alignment.centerRight,
          colors: [Colors.transparent, Styles.negroOscuro],
        ).createShader(rect);
      },
      child: Image.asset(
        'assets/background/dinero.gif',
        fit: BoxFit.contain,
        width: 500,
        // width: 650,
      ),
    );
  }
}
