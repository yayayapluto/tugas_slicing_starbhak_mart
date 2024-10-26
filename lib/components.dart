import 'package:flutter/material.dart';

class Components {
  static makeButton(IconData icon1, VoidCallback onPressed) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 15),
          ]),
      child: IconButton(onPressed: onPressed, icon: Icon(icon1)),
    );
  }
}
