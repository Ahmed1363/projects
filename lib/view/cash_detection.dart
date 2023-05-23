import 'package:flutter/material.dart';

class CashDetection extends StatelessWidget {
  const CashDetection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              ' كشف اموال نقدية',
              style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.blue,
                size: 28,
              ))
        ],
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.dataset,
            color: Colors.blue,
            size: 35,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
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
          SizedBox(
            height: 15,
          ),
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
            margin: EdgeInsets.only(right: 250, top: 10),
            width: 85,
            child: ElevatedButton(
                onPressed: (() {}),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.donut_small,
                      size: 15,
                    ),
                    Text(
                      'ترتيب',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                )),
          ),
          Container(
              margin: EdgeInsets.only(top: 70), child: Text('لاتوجد بيانات')),
          Container(
            margin: EdgeInsets.only(top: 250),
            padding: EdgeInsets.symmetric(vertical: 8),
            color: Colors.blue,
            width: double.infinity,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'طباعة',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              Icon(
                Icons.print,
                color: Colors.white,
              )
            ]),
          )
        ],
      ),
    );
  }
}
