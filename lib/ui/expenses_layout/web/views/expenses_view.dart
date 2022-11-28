import 'package:flutter/material.dart';

//file addresses
import '../components/navbar_custom.dart';
import '../../../../utils/fonts_custom.dart';
import '../components/container_datatable.dart';
import 'package:finance_app/utils/add_space.dart';
import 'package:finance_app/utils/padding_custom.dart';
import '../../../home_layout/web/components/sidemenu/side_menu.dart';

class ExpensesView extends StatelessWidget {
  
  const ExpensesView({super.key});

    @override
    Widget build(BuildContext context) {
      
      return  Scaffold(
        backgroundColor: const Color.fromARGB(255, 131, 131, 131),
        body: Row(
          
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
            
                const SideMenuCustom(),
              
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                        children: [
                          
                          const NavBarCustom(),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: padding2, vertical: padding2),
                                child: Text('Expenses', style:  antonBlack,),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: padding2),
                            //!DATATABLE
                            child: ContainerDataTable(),
                        
                            
                          ),               
                          addVerticalSpace(padding1)         
                        ],
                      ),
                    ),
                  ),
              ],
            ),
        );
    }
}

