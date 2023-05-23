import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: Text(
              'انواع الحسابات',
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
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        color: Color.fromARGB(255, 219, 219, 217),
        child: Column(
          children: [
            costume_container('اموال نقدية'),
            costume_container('راس المال'),
            costume_container(' المصاريف'),
            costume_container(' العملاء'),
            costume_container('الفواتير المستحقة '),
            Container(
              margin: EdgeInsets.only(top: 160, left: 292),
              child: FloatingActionButton(
                onPressed: () {},
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container costume_container(String? title) => Container(
      margin: EdgeInsets.only(
        left: 15,
        right: 15,
        top: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.only(top: 10, bottom: 10, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            '$title',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            width: 15,
          ),
          Icon(
            Icons.personal_injury,
            color: Colors.blue,
          )
        ],
      ));
}
