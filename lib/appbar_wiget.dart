import 'package:flutter/material.dart';

Widget BrandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Black',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black87),),
      Text('Pink',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pinkAccent),),
    ],
  );
}