import 'package:flutter/material.dart';

//dependencies
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//file addresses
import '../styles_custom.dart';
import 'package:finance_app/utils/padding_custom.dart';
import 'package:finance_app/utils/add_space.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Styles.grisOscuro,
      ),
      width: w * .3,
      height: h,
      child: _SearchContent(),
    );
  }
}

class _SearchContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        addHorizontalSpace(padding3),
        const Icon(FontAwesomeIcons.magnifyingGlassDollar,
            color: Styles.grisClaro),
        addHorizontalSpace(padding3),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: padding4),
            child: TextFormField(
              decoration: _buildInputDecoration(context),
            ),
          ),
        ),
        addHorizontalSpace(padding3)
      ],
    );
  }

  InputDecoration _buildInputDecoration(BuildContext context) =>
      const InputDecoration(
        enabledBorder: UnderlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: UnderlineInputBorder(borderSide: BorderSide.none),
      );
}
