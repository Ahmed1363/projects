import 'package:flutter/material.dart';

class One extends StatelessWidget {
  const One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('page one'),
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
                  child: Text(' page one')),
              ElevatedButton(
                  onPressed: () {
                    if (Navigator.of(context).canPop()) {
                      Navigator.of(context)
                          .pushNamed('tow'); //العودة للخلف خطوه واحدة
                    }
                  },
                  child: Text(' page tow')),
            ],
          ))
        ],
      ),
    );
  }
}
