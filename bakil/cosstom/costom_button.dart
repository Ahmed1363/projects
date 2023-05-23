import 'package:flutter/material.dart';

class CostomButton extends StatefulWidget {
  const CostomButton({super.key});

  @override
  State<CostomButton> createState() => _CostomButtonState();
}

class _CostomButtonState extends State<CostomButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('scroller_controller'),
      ),
      body: ListView(
        children: [
          ...List.generate(
              20,
              ((index) => Container(
                    margin: EdgeInsets.all(10),
                    child: Text('container $index'),
                    color: index.isEven ? Colors.black26 : Colors.red,
                  )))
        ],
      ),
    );
  }
}
