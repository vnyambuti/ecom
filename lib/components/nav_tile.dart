import 'package:flutter/material.dart';

class NavTile extends StatelessWidget {
  final icon;
  final title;
  final void Function()? onTap;
  const NavTile({super.key, this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: ListTile(
        leading: icon,
        title: title,
        onTap: onTap,
      ),
    );
  }
}
