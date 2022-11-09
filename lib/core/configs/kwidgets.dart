import 'package:conception_i_tech/core/configs/app_colors.dart';
import 'package:flutter/material.dart';

class KWidgets {
  static const kHeight = SizedBox(height: 10.0);
  static const kWidth = SizedBox(width: 10.0);
  static const kInputDecoration = InputDecoration(
    hintText: 'title',
    fillColor: AppColors.fieldFillColor,
    filled: true,
  );
  static const kEmpty = Center(child: Text('coming soon ...'));
  
}
