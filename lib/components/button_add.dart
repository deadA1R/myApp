import 'package:flutter/material.dart';
import 'package:myapp/components/theme.dart';

class ButtonAdd extends StatelessWidget {
  final String label;
  final Function()? onTap;
  const ButtonAdd({super.key, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: primaryColor,
        ),
        
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              color: secondaryColor,
            ),
          ),
        ),
         
      ),
    );
  }
}