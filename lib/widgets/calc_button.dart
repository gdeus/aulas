import 'package:flutter/material.dart';

Widget calcButton(String simbol, Function changeValue, bool result){
  return GestureDetector(
    onTap: () => result ? changeValue() : changeValue(simbol),
    child: Card(
      child: Container(
        height: 50,
        width: 50,
        margin: const EdgeInsets.all(15),
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(simbol, style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
        ),
      ),
    ),
  );
}