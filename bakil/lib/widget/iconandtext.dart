import 'package:flutter/material.dart';

// import 'package:get/get.dart';
Column iconandtext({
  required String text,
  
  IconData? icon,
  
}) {
  return  Column(
        children: [
          Icon(icon),
          Text(text),
       
    ],
  );
}

