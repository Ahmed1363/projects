import 'package:flutter/material.dart';

class show extends StatelessWidget {
  const show({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Container(
                  child: Text('هل تريد الخروخ فعلا'),
                );
              });
        },
        child: Text('shoebut'),
      )),
    );
  }
}
