import 'package:flutter/material.dart';

class Tow extends StatefulWidget {
  const Tow({super.key});

  @override
  State<Tow> createState() => _TowState();
}

class _TowState extends State<Tow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page tow'),
      ),
      body: Column(
        children: [
          Center(
              child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pushNamed('home');
                    }
                  },
                  child: Text('رجوع بدون اغلاق')),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context).pushReplacementNamed('home');
                    }
                  },
                  child: Text('رجوع مع الاغلاق')),
            ],
          ))
        ],
      ),
    );
  }
}
