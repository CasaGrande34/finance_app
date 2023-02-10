import 'package:flutter/material.dart';
//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../../../../utils/add_space.dart';
import '../../../../utils/styles_custom.dart';
import 'package:finance_app/utils/padding_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // const title = 'Title app';
    // final h = MediaQuery.of(context).size.height;
    // final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Styles.negroMediano,
      body: SafeArea(
        child: Stack(
          children: const [
            //Fondo arriba
            _FirstContainer(),
            _SecondContainer(),
          ],
        ),
      ),
    );
  }
}

//_FirstContainer
class _FirstContainer extends StatelessWidget {
  const _FirstContainer();

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.topCenter,
      decoration: const BoxDecoration(
        image: DecorationImage(
          opacity: 0.1,
          fit: BoxFit.cover,
          image: AssetImage('assets/background/background_home_screen.jfif'),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 40),
      height: h,
      width: w,
      child: Column(
        children: [
          const _BotonesFirstContainer(),
          addVerticalSpace(padding2),
          //List
          const ListInformationAnual(),
          const Spacer(),
          Row(
            children: const [
              SizedBox(
                height: 40,
                width: 160,
                child: Placeholder(),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// BotonesFirstContianer
class _BotonesFirstContainer extends StatelessWidget {
  const _BotonesFirstContainer();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        children: [
          BotonContainer(
            icon: FontAwesomeIcons.bars,
            iconColor: Colors.white,
            onTap: () {},
            size: 20,
            factorSize: 1.2,
            circleColor: Styles.grisOscuro,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.sun,
              color: Styles.grisClaro,
            ),
          )
        ],
      ),
    );
  }
}

// BotonContainer
class BotonContainer extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onTap;
  final double factorSize;
  final double size;
  final Color circleColor;

  const BotonContainer(
      {super.key,
      required this.icon,
      required this.iconColor,
      required this.onTap,
      required this.factorSize,
      required this.size,
      required this.circleColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: circleColor,
        radius: size * factorSize,
        child: Icon(
          size: size * factorSize,
          FontAwesomeIcons.bars,
          color: Colors.white,
        ),
      ),
    );
  }
}

// //const List
// const List<InformationAnualFirstContainer> listInformationAnual = [
//   InformationAnualFirstContainer(
//     icon: FontAwesomeIcons.moneyBill1Wave,
//     title: 'Total del balance anual',
//     subtitleMoney: '240.00',
//   ),
//   InformationAnualFirstContainer(
//     icon: FontAwesomeIcons.moneyCheck,
//     title: 'Expenses anuales',
//     subtitleMoney: '140.00',
//   ),
//   InformationAnualFirstContainer(
//     icon: FontAwesomeIcons.moneyBill1Wave,
//     title: 'Incomes anuales',
//     subtitleMoney: '380.00',
//   ),
// ];

//ListInfomationAnual
class ListInformationAnual extends StatefulWidget {
  const ListInformationAnual({super.key});

  @override
  State<ListInformationAnual> createState() => _ListInformationAnualState();
}

class _ListInformationAnualState extends State<ListInformationAnual> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // _scrollController.jumpTo(1 * 300.0);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    double alturaListView = 140;
    /* El ListView siempre necesita una altura definida */
    return SizedBox(
      height: alturaListView,
      width: w,
      child: Placeholder(
        child: Column(
          children: [
            SizedBox(
              height: 30,
              width: w,
              child: const Placeholder(
                color: Colors.red,
              ),
            ),
            addVerticalSpace(padding2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SizedBox(
                  height: 90,
                  width: 140,
                  child: Placeholder(
                    color: Colors.amberAccent,
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 200,
                  child: Placeholder(
                    color: Colors.amberAccent,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// //InformationAnualFirstContainer - item
// class InformationAnualFirstContainer extends StatelessWidget {
//   final String title;
//   final String subtitleMoney;
//   final IconData icon;
//   final int? index;
//   const InformationAnualFirstContainer({
//     super.key,
//     required this.title,
//     required this.subtitleMoney,
//     required this.icon,
//     this.index = 0,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//       // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       decoration: BoxDecoration(
//         gradient: RadialGradient(
//           colors: [Styles.grisMedio, Styles.grisOscuro],
//           radius: 1.3,
//           stops: [0.05, 0.9],
//         ),
//         boxShadow: [
//           BoxShadow(
//             blurRadius: 40.0,
//             offset: Offset(-28, -28),
//             color: Styles.grisClaro,
//           ),
//           BoxShadow(
//               blurRadius: 40.0,
//               offset: Offset(28, 28),
//               color: Styles.grisOscuro)
//         ],
//         borderRadius: BorderRadius.circular(10),
//       ),
//       height: 300,
//       width: 240,
//       child: ListTile(
//         trailing: Icon(Icons.arrow_circle_right_outlined),
//         textColor: Colors.black,
//         horizontalTitleGap: 2.0,
//         iconColor: Colors.primaries[index! % Colors.primaries.length],
//         title: Text(
//           title,
//           maxLines: 2,
//           style: const TextStyle(overflow: TextOverflow.ellipsis),
//         ),
//         subtitle: Text('\$$subtitleMoney'),
//         leading: CircleAvatar(
//           backgroundColor: Styles.negroMediano,
//           radius: 30,
//           child: Center(child: Icon(icon)),
//         ),
//         style: ListTileStyle.drawer,
//       ),
//     );
//   }
// }

//_SecondContainer
class _SecondContainer extends StatelessWidget {
  const _SecondContainer();

  @override
  Widget build(BuildContext context) {
    double topSecondContainer = 260;
    double radiusTopSecondContainer = 30;
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Positioned(
      top: topSecondContainer,
      child: Container(
        padding: const EdgeInsets.all(padding3),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(radiusTopSecondContainer)),
        height: h * .5,
        width: w,
        child: Column(
          children: [
            const SizedBox(
              height: 5,
              width: 290,
              child: Placeholder(
                color: Colors.blueGrey,
              ),
            ),
            addVerticalSpace(padding1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(height: 60, width: 145, child: Placeholder()),
                SizedBox(height: 60, width: 145, child: Placeholder()),
              ],
            ),
            addVerticalSpace(padding2),
            const SizedBox(
              height: 180,
              width: 320,
              child: Placeholder(
                color: Colors.amberAccent,
              ),
            ),
            addVerticalSpace(padding2),
            const SizedBox(
              height: 40,
              width: 260,
              child: Placeholder(
                color: Colors.purple,
              ),
            ),
            addVerticalSpace(padding4),
            const SizedBox(
              height: 5,
              width: 290,
              child: Placeholder(
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
