import 'package:flutter/material.dart';

Widget rowButton(IconData icon, String name, Function onPressed){
  return GestureDetector(
    onTap: () => onPressed(),
    child: Card(
      child: Row(
        children: [
          Padding(padding: const EdgeInsets.all(10.0),
            child: Icon(icon),
          ),
          Text(
            name, 
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}