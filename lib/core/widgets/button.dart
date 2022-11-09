import 'package:flutter/material.dart';

class KButton extends StatelessWidget {
  const KButton({
    Key? key,
    this.icon,
    this.height,
    this.width,
    this.background,
    this.iconColor,
  }) : super(key: key);
  final IconData? icon;
  final double? height;
  final double? width;
  final Color? background;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: ColoredBox(
        color: background ?? Theme.of(context).primaryColor,
        child: SizedBox(
          width: width ?? size.width * .12,
          height: height ?? size.width * .08,
          child: Icon(
            icon ?? Icons.info,
            color: iconColor ?? Colors.white,
          ),
        ),
      ),
    );
  }

  backButton(void Function()? onPressed) => OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 4),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
      );
}
