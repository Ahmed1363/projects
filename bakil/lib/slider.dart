import 'package:flutter/material.dart';

class Slid extends StatefulWidget {
  Slid({super.key});

  @override
  State<Slid> createState() => _SlidState();
}

class _SlidState extends State<Slid> {
  var _sliderval = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Slider(
          activeColor: Colors.black,
          min: 0.0,
          max: 100,
          value: _sliderval,
          onChanged: (val) {
            setState(() {
              _sliderval = val;
            });
          },
        ),
      ),
    );
  }
}
