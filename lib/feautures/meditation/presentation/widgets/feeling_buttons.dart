import 'package:flutter/material.dart';


class FellingButton extends StatelessWidget {
  final VoidCallback onTap;
  final String assetImage;
  final String label;
  final Color color;
  const FellingButton({super.key, required this.onTap, required this.assetImage, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Image.asset(assetImage,height: 30,),
          ),
          Text(label,style: Theme.of(context).textTheme.bodySmall,)
        ],
      ));
  }
}