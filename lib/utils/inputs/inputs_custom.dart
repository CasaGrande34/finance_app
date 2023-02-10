import 'package:flutter/material.dart';

//file addresses
import '../styles_custom.dart';

class CustomInputs {
  static InputDecoration authInputDecoration({
    required String hintText,
    required Widget icon,
    required String labelText,
  }) =>
      InputDecoration(
        contentPadding: const EdgeInsets.all(8.0),
        hoverColor: Styles.amarilloOscuro,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Styles.amarilloClaro,
          fontSize: 15,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 13, color: Colors.deepPurple),
        floatingLabelStyle: const TextStyle(
          color: Colors.purpleAccent,
          fontSize: 18,
        ),
        suffixIconColor: Styles.amarilloClaro,
        suffixIcon: icon,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            borderSide: BorderSide(color: Styles.amarilloOscuro, width: 1)),
      );
}
