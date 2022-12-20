

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:schedule/newEvent.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list=[Text('click + to add event, Long press to delete')];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        scaffoldBackgroundColor: Colors.deepPurpleAccent[100],
        primarySwatch: Colors.deepPurple),
      home : Scaffold(
        appBar: AppBar(title: Text("Event Scheduler"),),
        body:ListView.builder(
          itemCount: _list.length,

            padding: EdgeInsets.all(20),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                    title: _list[index],
                    tileColor: Colors.white,
                    onLongPress: () {
                      setState(() {
                        _list.removeAt(index);
                      });


                    },
                ),
              );
            }),
        floatingActionButton: Builder(
          builder: (context) {
            return FloatingActionButton(
              onPressed: () async {
                String newText = await  Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
                setState(() {
                  _list.add(Text(newText));
                });

              },
              child: Icon(Icons.add),
            );
          }
        ),
      )
    );
  }

}