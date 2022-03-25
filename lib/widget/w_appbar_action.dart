import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  const AppBarAction({
    Key? key,
    required this.onPressed,
    required this.bgColor,
    required this.padding,
    required this.child,
  }) : super(key: key);
  final VoidCallback onPressed;
  final EdgeInsets padding;
  final Color bgColor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 35,
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
