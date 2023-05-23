// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Invoices extends StatelessWidget {
  const Invoices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Center(
            child: Text(
              'الفواتير الدورية',
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 28,
              ))
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Container(
            height: 40,
            margin: EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 206, 206, 206),
                borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              decoration: InputDecoration(
                  hoverColor: Colors.grey,
                  disabledBorder: OutlineInputBorder(
                      //  borderSide: BorderSide(color:)
                      ),
                  suffixIcon: Icon(Icons.search),
                  suffixText: 'عنوان الفاتورة'
                  /* Text(
                    'عنوان الفاتورة',
                    style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  )*/
                  ),
            ),
          ),
          Container(
            height: 50,
            margin: EdgeInsets.all(15),
            child: ElevatedButton(
                onPressed: (() {}),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '0وحدة',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '0د.ع',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          Container(
            child: Text(
              'لاتوجد بيانات',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w100),
            ),
          )
        ],
      )),
    );
  }
}
