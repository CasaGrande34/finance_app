import 'package:flutter/material.dart';

//file addresses
import '../../../../utils/styles_custom.dart';
import 'package:finance_app/utils/add_space.dart';
import '../../../../utils/navbar/navbar_custom.dart';

class DashBoardHome extends StatelessWidget {
  const DashBoardHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        const NavBarCustom(),
        Stack(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Styles.negroMediano,
              ),
            ),
            SizedBox(
              height: 200,
              width: double.infinity,
              child: ListView.builder(
                padding: const EdgeInsets.all(yyy),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const CardListItemHome(
                    radiusrevert: false,
                  );
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// ----------------------------------------------------
class CardListItemHome extends StatelessWidget {
  final bool radiusrevert;
  const CardListItemHome({
    super.key,
    required this.radiusrevert,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(ttt),
      padding: const EdgeInsets.all(ttt),
      height: 200,
      width: 230,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(radiusrevert ? 30 : 0),
          topLeft: Radius.circular(radiusrevert ? 0 : 30),
          bottomRight: Radius.circular(radiusrevert ? 0 : 30),
          topRight: Radius.circular(radiusrevert ? 30 : 0),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const FlutterLogo(
                size: 60.0,
              ),
              addHorizontalSpace(yyy),
              const Text('company '),
            ],
          ),
          const Spacer(),
          Container(
            height: 3,
            width: 70,
            color: Colors.black,
          ),
          // addVerticalSpace(ttt),
        ],
      ),
    );
  }
}

// -----------------------------------------------------
class Flecha extends StatefulWidget {
  bool on;
  final bool right;
  Flecha({super.key, this.right = false, this.on = false});

  @override
  State<Flecha> createState() => _FlechaState();
}

class _FlechaState extends State<Flecha> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          widget.on = true;
        });
      },
      onExit: (value) {
        setState(() {
          widget.on = false;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: widget.on
                    ? Styles.amarilloClaro
                    : Styles.grisMedio.withOpacity(0.5)),
          ],
        ),
        clipBehavior: Clip.none,
        child: CircleAvatar(
          backgroundColor: widget.on ? Styles.amarilloClaro : Styles.grisOscuro,
          child: Icon(widget.right
              ? Icons.arrow_circle_right_rounded
              : Icons.arrow_circle_left_rounded),
        ),
      ),
    );
  }
}

// class GraficDashboardMenu extends StatefulWidget {
//   const GraficDashboardMenu({
//     super.key,
//   });

//   @override
//   State<GraficDashboardMenu> createState() => _GraficDashboardMenuState();
// }

// class _GraficDashboardMenuState extends State<GraficDashboardMenu>
//     with TickerProviderStateMixin {
//   double rightMovementF = -190.0;
//   double rightMovementT = -100.0;
//   // double rightMovementF = -10.0;
//   // double rightMovementT = -12.0;

//   double bottomMovementT = -100;
//   double bottomMovementF = -300;
//   // double bottomMovementT = -15;
//   // double bottomMovementF = -10;
//   bool showDollar = true;

//   @override
//   void initState() {
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
//       Timer(const Duration(milliseconds: 1000), () {
//         setState(() {});
//         showDollar = false;
//       });
//       Timer(const Duration(milliseconds: 3000), () {
//         setState(() {});
//         showDollar = true;
//       });
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final h = MediaQuery.of(context).size.height;
//     final w = MediaQuery.of(context).size.width;
//     return Container(
//       height: 320,
//       clipBehavior: Clip.hardEdge,
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Styles.grisOscuro,
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Stack(
//         children: [
//           //IMAGE BACKGROUND
//           AnimatedPositioned(
//             height: showDollar ? h * .5 : h * .1,
//             right: showDollar ? rightMovementT : rightMovementF,
//             bottom: showDollar ? bottomMovementT : bottomMovementF,
//             curve: Curves.easeInOutBack,
//             duration: const Duration(milliseconds: 500),
//             child: Transform.rotate(
//               angle: 56,
//               child: Image.asset(
//                 'assets/dolar/dolar1.png',
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomGradient extends CustomPainter {
//   CustomGradient({required this.gradient, required this.sWidth});

//   final Gradient gradient;
//   final double sWidth;
//   final Paint p = Paint();
//    final double bRadius;  

//   @override
//   void paint(Canvas canvas, Size size) {
//     Rect innerRect = Rect.fromLTRB(sWidth, sWidth, size.width - sWidth, size.height - sWidth);
//     Rect outerRect = Offset.zero & size;
//     RRect innerRoundedRect = RRect.fromRectAndRadius(innerRect, Radius.circular(bRadius));
//     RRect outerRoundedRect = RRect.fromRectAndRadius(outerRect, Radius.circular(bRadius));

//     p.shader = gradient.createShader(outerRect);
//     // Path borderPath = _calculateBorderPath(outerRect, innerRect);
//      Path borderPath = _calculateBorderPath(outerRoundedRect, innerRoundedRect);
//     canvas.drawPath(borderPath, p);
//   }

//   Path _calculateBorderPath(Rect outerRect, Rect innerRect) {
//     Path outerRectPath = Path()..addRect(outerRect);
//     Path innerRectPath = Path()..addRect(innerRect);
//     return Path.combine(PathOperation.difference, outerRectPath, innerRectPath);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }

// class CustomGradientContainer extends StatelessWidget {
//   CustomGradientContainer({
//     required gradient,
//     required this.child,
//     this.strokeWidth = 3, required this.onPressed,
//   }) : this.painter = CustomGradient(
//       gradient: gradient, sWidth: strokeWidth
//   );

//   final CustomGradient painter;
//   final Widget child;
//   final VoidCallback onPressed;
//   final double strokeWidth;

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//         painter: painter, 
//         child: child
//     );
//   }
// }


