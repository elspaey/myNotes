import 'package:flutter/material.dart';

class customSearchIcon extends StatelessWidget {
  const customSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white.withOpacity(0.1)),
      child: const Icon(Icons.search),
    );
  }
}
