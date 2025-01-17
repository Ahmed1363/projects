import 'package:flutter/material.dart';

class seerchDelegate extends StatelessWidget {
  const seerchDelegate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  List name = [
    "ahmed",
    "wael",
    "mohammed",
    "aymen",
    "aborafat",
    "refat",
    "ali"
  ];
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: Icon(Icons.back_hand))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    //نتيجه البحث
    return Text("$query");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List filternames = name
        .where((element) => element.contains(query))
        .toList(); //اما اذا اردنا ان تضهر جميع الاسماء التي تحتوي على الحرف المدخل نستخدم contains
    return ListView.builder(
      itemCount: query == "" ? name.length : filternames.length,
      itemBuilder: (BuildContext context, i) {
       
        
        return InkWell(
          child: Container(
              padding: const EdgeInsets.all(20),
              color: Colors.red,
              child:
                  query == "" ? Text("${name[i]}") : Text("${filternames[i]}")),
        );
      },
    );
  }
}
