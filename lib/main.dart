import 'package:conception_i_tech/core/configs/app_theme.dart';
import 'package:conception_i_tech/view/add_product/add_product.dart';
import 'package:conception_i_tech/view/root/root_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home:  RootView(),
    );
  }
}
