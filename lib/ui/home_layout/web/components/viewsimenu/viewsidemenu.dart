import 'package:flutter/material.dart';
//dependencies
import 'package:marquee/marquee.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//file addresses
import 'components/listtile_viewsidemenu.dart';
import 'package:finance_app/ui/home_layout/web/components/viewsimenu/components/container_viewsidemenu.dart';
import '../../../../../utils/add_space.dart';
import '../../../../../utils/colors_app.dart';
import '../../../../../utils/fonts_custom.dart';
import '../../../../../utils/padding_custom.dart';
import 'components/text_myexpenses.dart';

class ViewSideMenu extends StatelessWidget {
  
  const ViewSideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
  
    return Container(
      padding: const EdgeInsets.only(top: padding1),
      height: h,
      width : w * .23,
      color : ColorsApp.backgroundViewSideMenu1,
      child: const ViewSideMenuBody(),
      
    );
      
    
  }
}

class ViewSideMenuBody extends StatelessWidget {
  
  const ViewSideMenuBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return Column(
      
      children: [
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('\$ 125.678.11', style: anton,),
                      addHorizontalSpace(25),
                      const Icon(FontAwesomeIcons.circleDollarToSlot, color: ColorsApp.itemSelectionSideBar,),
                    ],
                  ),
                  Text('Current Amount', style: slabo.copyWith(
                    color: ColorsApp.selectionContainerBorder
                  ),),
                ],
              ),
            ),
          ],
        ),
        addVerticalSpace(5),
        SizedBox(
          
          height: h * .05,
          child: Marquee(
            text: ( 'USD/ARS - \$ 156,5 - BTC/USD - \$ 21,600 - EUR/USD - \$ 0,56' ),
            style: const TextStyle(
              color: Colors.grey
            ),
          ),
        ),
        addVerticalSpace(padding3),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding2),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Row(
                      children: [
                        const Text('Expenses Tracker', style: TextStyle(
                          color: ColorsApp.selectionContainerBorder
                        ),),
                        addHorizontalSpace(6),
                        const Icon(
                          
                            FontAwesomeIcons.chartLine,
                            color: ColorsApp.itemSelectionSideBar,
                            size: 13,
                          
                          )
                      ],
                    ),
                    // addVerticalSpace(padding4),
                    Text('\$22.556.34', style: anton.copyWith(
                        fontSize: 16,
                      ),
                    ),                        
                  ],
                ),
            ),
        addVerticalSpace(padding3),
        ContainerViewSideMenu(
          typeTransation: 'Incomes',
          dinero: 5678933,
        ),
        addVerticalSpace(padding3),
        ContainerViewSideMenu(
          typeTransation: 'Expenses',
          dinero: 2342356,
        ),
        addVerticalSpace(padding3),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: padding2),
          child: MyExpensesText()
        ),
        addVerticalSpace(padding3),
        ListTileViewSideMenu(
          
          icon: FontAwesomeIcons.wallet,
          dinero: -1350,
          chip1: 'Supermercado',
          chip2: 'Higiene',
          
        ),
        addVerticalSpace(padding3),
        ListTileViewSideMenu(
          
          icon: FontAwesomeIcons.landmark,
          dinero: -5080,
          chip1: 'Inversiones',
          chip2: 'Cedears',
          
        ),
        addVerticalSpace(padding3),
        ListTileViewSideMenu(
          
          icon: FontAwesomeIcons.creditCard,
          dinero: -2000,
          chip1: 'Tarjeta de credito',
          
        ),
        
      ],
    );
  }
}

