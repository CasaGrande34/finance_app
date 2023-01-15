import 'package:flutter/material.dart';

//file addresses
import '../colors_app.dart';

class CustomInputs {
  static InputDecoration authInputDecoration(
          {required String hintText,
          required Widget icon,
          required String labelText}) =>
      InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        fillColor: Colors.grey,
        // counterText: '1/2'
        hoverColor: ColorsApp.amarilloOscuro,
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: ColorsApp.amarilloClaro,
          fontSize: 15,
        ),
        hintStyle: const TextStyle(fontSize: 13),

        // suffix: icon,
        suffixIconColor: ColorsApp.amarilloClaro,
        suffixIcon: icon,

        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: ColorsApp.amarilloOscuro, width: 1)),
      );
}
