import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final VoidCallback? onPressed;
  const CustomIcon({super.key, required this.iconData, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(width: 0.5, color: Colors.white54),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onPressed,
            icon: Icon(
              iconData,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
