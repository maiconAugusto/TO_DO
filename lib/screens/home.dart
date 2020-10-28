import 'package:flutter/material.dart';

void main() => runApp(Home());

class Home extends StatefulWidget {
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  List<String> list = [];
  String activity;

  setActivity() {
    _controller.clear();
    if (activity == null) {
      return;
    }
    setState(() {
      list.add(activity);
      activity = null;
    });
  }

  removeItem(int index) {
    setState(() {
      list.removeAt(index);
    });
  }

  var _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: Column(
              children: [
                Container(
                  height: 600,
                  child: ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.list_alt_outlined),
                          title: Text(list[index]),
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () => {removeItem(index)},
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        child: TextField(
                          controller: _controller,
                          onChanged: (String value) {
                            setState(() {
                              activity = value;
                            });
                          },
                          decoration: InputDecoration(labelText: 'Atividades'),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 40, 0, 0),
                        child: FloatingActionButton(
                          child: Icon(Icons.add),
                          onPressed: () => {setActivity()},
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
