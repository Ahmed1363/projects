import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  Scroll({super.key});

  @override
  State<Scroll> createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  ScrollController? sc;
  @override
  void initState() {
    sc = new ScrollController();
    sc!.addListener(() {
      print('max :${sc!.position.maxScrollExtent}');
      print('min :${sc!.position.minScrollExtent}');
      print(sc!.offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('scroller_controller'),
        ),
        body: ListView(
          controller: sc,
          children: [
            ElevatedButton(
                onPressed: (() {
                  sc!.jumpTo(sc!.position.maxScrollExtent);
                }),
                child: Text('go to end')),
            ...List.generate(
                20,
                ((index) => Container(
                      margin: EdgeInsets.all(10),
                      child: Text('container $index'),
                      color: index.isEven ? Colors.black26 : Colors.red,
                    ))),
            ElevatedButton(
                onPressed: (() {
                  sc!.animateTo(0.0,
                      duration: Duration(seconds: 2), curve: Curves.easeIn);
                }),
                child: Text('go to end')),
          ],
        ));
  }
}
