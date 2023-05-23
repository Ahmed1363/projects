import 'package:flutter/material.dart';

class homeBag extends StatefulWidget {
  const homeBag({super.key});

  @override
  State<homeBag> createState() => _homeBagState();
}

class _homeBagState extends State<homeBag> {
  List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "ahmed", "age": 14},
    {"id": 2, "name": "mah", "age": 14},
    {"id": 3, "name": "ham", "age": 14},
    {"id": 4, "name": "fan", "age": 14}
  ];
  List<Map<String, dynamic>> _foundUsers = [];
  void _runfilter(String enteredkeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredkeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredkeyword.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) => _runfilter(value),
              decoration: InputDecoration(
                labelText: 'searg',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundUsers.length,
                  itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Colors.blue,
                        elevation: 4,
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: Text(_foundUsers[index]["id"].toString(),
                              style: TextStyle(fontSize: 24)),
                          title: Text(_foundUsers[index]["name"],
                              style: TextStyle(color: Colors.white)),
                          subtitle: Text(
                            '${_allUsers[index]["age"].toString()}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
