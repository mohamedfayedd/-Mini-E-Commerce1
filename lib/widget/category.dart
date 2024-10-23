import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({
    super.key,
    required this.icon,
    required this.onTap
  });

  Icon icon;
  VoidCallback onTap;

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool isActiv = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: Colors.white,
      iconSize: 50,
      onPressed: () {
        setState(() {});
      },
      icon: ClipOval(
        child: Container(
          padding: const EdgeInsets.all(6),
          color: isActiv ? Colors.orange : Colors.grey,
          child: widget.icon,
        ),
      ),
    );
  }
}
