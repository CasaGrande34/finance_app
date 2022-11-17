import 'package:flutter/material.dart';

import '../../../../utils/colors_app.dart';

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

