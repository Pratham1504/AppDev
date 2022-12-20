import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Text("New Event"),
        ),
        body: Builder(
          builder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    color: Colors.deepPurple,
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        labelText: 'Event',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                        prefixIcon: Icon(Icons.event, color: Colors.white),
                      ),
                      controller: _textEditingController,
                    ),
                  ),
                   Container(
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          String newEventText = _textEditingController.text;
                          Navigator.of(context).pop(newEventText);
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white24),
                        ),
                        child: Text(
                          "ADD",
                        ),
                      ),
                    ),

                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
