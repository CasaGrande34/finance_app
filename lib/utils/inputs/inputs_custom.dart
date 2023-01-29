import 'package:flutter/material.dart';

//file addresses
import '../colors_app.dart';

class CustomInputs {
  static InputDecoration authInputDecoration({
    required String hintText,
    required Widget icon,
    required String labelText,
  }) =>
      InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        hoverColor: ColorsApp.amarilloOscuro,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: ColorsApp.amarilloClaro,
          fontSize: 15,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 13, color: Colors.deepPurple),
        floatingLabelStyle: TextStyle(
          color: Colors.purpleAccent,
          fontSize: 18,
        ),
        suffixIconColor: ColorsApp.amarilloClaro,
        suffixIcon: icon,

        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: ColorsApp.amarilloOscuro, width: 1)),
      );
}
