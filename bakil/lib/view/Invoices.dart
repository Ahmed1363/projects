import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  const Invoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'الفواتير الدورية',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                icon: Icon(Icons.search),
                prefix: Text(
                  'عنوان الفاتورة',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                )),
          ),
          ElevatedButton(
              onPressed: (() {}),
              child: Row(
                children: [Text('0وحدة'), Text('0'), Text('0د.ع')],
              )),
          Container(
            child: Text(
              'لاتوجد بيانات',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          )
        ],
      )),
    );
  }
}
