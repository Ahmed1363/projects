import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('test'),
      ),
      body: Column(
        children: [
          Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("one");
                  },
                  child: Text('Go to Navigator')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("slid");
                  },
                  child: Text('slider')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("scorllcont");
                  },
                  child: Text('scroll controller')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("show");
                  },
                  child: Text('showmodalbutt')),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("searchDelegate");
                  },
                  child: Text('searchDelegate'))
            ],
          )
        ],
      ),
    );
  }
}
