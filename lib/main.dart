import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainLoging(),
    ),
  );
}

final btnStyle = TextButton.styleFrom(
  backgroundColor: Colors.green,
);

final btnTextStyle = TextStyle(
  fontSize: 24,
  color: Colors.white,
);
//comnent\

final textfieldPassword = TextField(
  // строка для ввода pass
  autofocus: true,
  style: TextStyle(
    fontSize: 21,
  ),
  decoration: InputDecoration(border: OutlineInputBorder(), hintText: '', labelText: 'Password'),
);

final textfieldEmail = TextField(
  // строка для ввода email
  autofocus: true,
  style: TextStyle(
    fontSize: 21,
  ),
  decoration: InputDecoration(border: OutlineInputBorder(), hintText: '', labelText: 'Email'),
);
final btnLoging = TextButton(
  // button
  // btn 1
  style: btnStyle,
  onPressed: () {},
  child: textLogingBtn,
);
final textLogingBtn = Text(
  // text button loging
  'Loging',
  style: TextStyle(
    fontSize: 21,
    color: Colors.white,
  ),
);
final btnSub = Text(
  // button submit
  'Registration',
  style: TextStyle(
    fontSize: 21,
    color: Colors.white,
  ),
);

class MainLoging extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //dev s
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Welcome'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
          width: 320,
          height: 50,
          child: textfieldEmail,
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
          width: 320,
          height: 50,
          child: textfieldPassword,
        ),
        Container(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: new Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    //alignment: Alignment(2.0, 2.0),
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: 150,
                    height: 50,
                    child: btnLoging, // Render loging button
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Container(
            margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
            width: 350,
            height: 50,
            // child: underAlert,
          ),
        ),
      ])),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //dev s
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('IoT'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Text('Enter room',
                  style: TextStyle(
                    fontSize: 34,
                    color: Colors.white,
                  )),
            ),
            ListTile(
              title: Text('Add device'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Device 1'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Deviceone()),
                );
              },
            ),
            ListTile(
              title: Text('Device 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Deviceone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Device"),
      ),
      body: Center(
          child: Container(
        child: Column(children: <Widget>[
          Expanded(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            onPressed: () {
              Navigator.pop(context);
            },
            child: (Text('back')),
          )),
          Expanded(child: Text('gi'))
        ]),
      )),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Add app"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.green),
          onPressed: () {
            Navigator.pop(context);
          },
          child: (Text('Go back!')),
        ),
      ),
    );
  }
}
