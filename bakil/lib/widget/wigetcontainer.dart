import 'package:flutter/material.dart';

// import 'package:get/get.dart';
Container wigetcontainer({
  required String text,

  // dynamic? page,
  // IconData? icon,
  // IconData? iconb,
  // Color? backgroundColor,
  double? width,
  // Color? textcolor
}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      color: Color.fromARGB(255, 247, 241, 246),
    ),
    margin: EdgeInsets.all(15),

    width: width,
    height: 100,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Icon(Icons.paid),
            Text(text),
          ],
        ),
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 201, 69, 190),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Text('0'),
                  ),
                  Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(child: Text('0'))),
                ],
              ),
            ],
          ),
        ),
      ],
    ),

    // Icon(iconb),
  );
}
