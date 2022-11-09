import 'package:conception_i_tech/core/configs/kwidgets.dart';
import 'package:flutter/material.dart';

class KTextField extends StatelessWidget {
  const KTextField({Key? key, this.decoration, required this.title, this.maxLines})
      : super(key: key);
  final InputDecoration? decoration;
  final String title;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
        decoration: (decoration ?? KWidgets.kInputDecoration)
            .copyWith(hintText: title));
  }
}
