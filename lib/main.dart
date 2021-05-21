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

  minLines: 6,
  maxLines: 23,
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

final btnSub = Text(
  // button submit
  'Registration',
  style: TextStyle(
    fontSize: 21,
    color: Colors.white,
  ),
);
final textLogingBtn = Text(
  // text button loging
  'Loging',

  style: TextStyle(
    fontSize: 21,
    color: Colors.white,
  ),
); // Render loging button

class MainLoging extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    //dev s
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text('Welcome'),
        ),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(10, 50, 10, 0),
          width: 320,
          height: 50,
          child: TextField(
            controller: myController,

            // строка для ввода email
            autofocus: true,
            style: TextStyle(
              fontSize: 21,
            ),
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: '', labelText: 'Email'),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 30, 10, 30),
          width: 320,
          height: 50,
          child: TextField(
            // строка для ввода email
            autofocus: true,
            style: TextStyle(
              fontSize: 21,
            ),
            decoration: InputDecoration(border: OutlineInputBorder(), hintText: '', labelText: 'Password'),
            obscureText: true,
          ),
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
                  child: ElevatedButton(
                    // button
                    // btn 1
                    style: btnStyle,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstRoute()),
                      );
                    },
                    child: textLogingBtn,
                  ),
                )),
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
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(actions: <Widget>[
                new Text("enter device"),
                new TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(), hintText: '', labelText: 'Password'),
                ),
              ]);
            },
          );
        },
        tooltip: 'Show me the value!',
        child: Icon(Icons.add),
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
