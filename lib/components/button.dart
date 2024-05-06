import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final color;
  final child;
  final icon;
  const MyButton({super.key, this.onTap, this.color, this.child, this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
        padding: EdgeInsets.all(25),
        child: icon,
      ),
    );
  }
}
