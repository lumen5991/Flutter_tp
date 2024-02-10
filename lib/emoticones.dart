// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Emoticones extends StatefulWidget {
  final String emoticones;
  const Emoticones({
    super.key, 
    required this.emoticones,
  });

  @override
  State<Emoticones> createState() => _EmoticonesState();
}

class _EmoticonesState extends State<Emoticones> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 166, 203, 228),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            widget.emoticones,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
