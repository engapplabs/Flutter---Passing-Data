import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var _textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: new AppBar(
        title: new Text('Passing Data'),
      ),
      body: new Container(
        child: new Center(
          child: Column(
            children: <Widget>[
              new TextField(
                controller: _textController,
                decoration: new InputDecoration(
                  labelText: "Digite aqui",
                ),
              ),
              new RaisedButton(
                onPressed: () {
                  var route = new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new SecondScreen(value: _textController.text),
                  );
                  Navigator.of(context).push(route);
                },
                child: new Text('Clique aqui'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  final String value;

  SecondScreen({Key key, this.value}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('Passing Data')),
      body: new Container(
        child: new Center(
          child: new Text('${widget.value}'),
        ),
      ),
    );
  }
}
