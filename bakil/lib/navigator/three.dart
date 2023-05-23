import 'package:flutter/material.dart';

import 'one.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: [
          Center(
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Go to page one')))
        ],
      ),
    );
  }
}
