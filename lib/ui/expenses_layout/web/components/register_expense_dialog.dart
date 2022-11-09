import 'dart:async';
import 'package:flutter/material.dart';

//dependencies
import 'package:rounded_loading_button/rounded_loading_button.dart';

//file addresses
import 'title_register.dart';
import 'package:finance_app/utils/add_space.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'package:finance_app/ui/expenses_layout/web/components/textfield_custom.dart';
import 'package:finance_app/ui/expenses_layout/web/components/custom_icon_button.dart';



class RegisterExpenseDialog extends StatefulWidget {
  
  const RegisterExpenseDialog({
    super.key,
  });

  @override
  State<RegisterExpenseDialog> createState() => _RegisterExpenseDialogState();
}

class _RegisterExpenseDialogState extends State<RegisterExpenseDialog> {
  
  final RoundedLoadingButtonController _buttonController = RoundedLoadingButtonController();
  


  
  
  _doSomething() async {
    Timer(const Duration(milliseconds: 1000), () { 
      _buttonController.success();
      Timer(const Duration(milliseconds: 600), () {
        
        //!Add DATA

        Navigator.pop(context);
       });
    });

  }
  
  void _showDatePicker() {
    showDatePicker(
      context: context, 
      initialDate: DateTime.now(), 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2025)
    );
    
  }
  
  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return AlertDialog(
      
      
      backgroundColor: Colors.grey,
      //Title
      title: const TitleRegister(),
    
      actions: [
        
             Padding(
               padding: const EdgeInsets.only(bottom: padding2,right: padding2),
               child: Row(
                 
                 
                 children: [
                   
                   RoundedLoadingButton(
                    
                    controller: _buttonController,
                    onPressed: _doSomething,
                    color: Colors.black,
                    width: w * .09,
                    height: h * .06,
                    successColor: Colors.green,
                    child: const Text('Cargar Orden'),
                    
                    
                    
                  ),
                  addHorizontalSpace(padding2),  
                  CustomIconButton(
                
                    onPressed: () {
                      
                
                      Navigator.pop(context);
                      print('Data deleted');
                    }, 
                    text: 'Delete', 
                    icon: Icons.cancel
                
                 ),
               ],
                        ),
             ),
      ],
      content: SizedBox(
        
        width: w * 3,
        height: h * 2.8,
        child: Column(
          children: [
            
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding1),
                    child: Column(
                      children: [
              
                        MaterialButton(onPressed: _showDatePicker, child: Text('Elegi fecha'),),
                        TextFormFieldCustom(),
                        TextFormFieldCustom(),
                        TextFormFieldCustom(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding1),
                    child: Column(
                      children: [
                        TextFormFieldCustom(),
                        TextFormFieldCustom(),
                        TextFormFieldCustom(),
                        TextFormFieldCustom(),
                      ],
                    ),
                  ),
                )
              ],
            )
            
          ],
        ),
        
      ),
      
    );
  }
}



class ContainerButtonDate extends StatelessWidget {
  
  
  const ContainerButtonDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    double w = MediaQuery.of(context).size.width; 
    double h = MediaQuery.of(context).size.height; 
    
    return GestureDetector(
      
      onTap: () {},
      child: Container(
        
        height: h * .05,
        width: w * .05,
        color: Colors.red,
        
      ),
    );
  }
}

