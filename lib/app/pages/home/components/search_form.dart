import 'package:firenzery/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(18)),
  borderSide: BorderSide.none,
);

class SearchForm extends StatelessWidget {
  const SearchForm({
    Key? key,
    this.changed,
    this.saved,
  }) : super(key: key);

  final changed;
  final saved;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
        onChanged: changed,
        textInputAction: TextInputAction.search,
        onFieldSubmitted: saved,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: "Buscar",
          border: outlineInputBorder,
          enabledBorder: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset("assets/icons/Search.svg"),
          ),
        ),
      ),
    );
  }
}
