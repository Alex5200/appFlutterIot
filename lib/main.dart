import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Navigation Basics',
      debugShowCheckedModeBanner: false,
      home: FirstRoute(),
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

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('IoT'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: new Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  //alignment: Alignment(2.0, 2.0),
                  margin: EdgeInsets.fromLTRB(10, 50, 10, 50),

                  width: 150,
                  height: 150,
                  child: TextButton(
                      // btn 1
                      style: btnStyle,
                      onPressed: () {},
                      child: const Text(
                        'Loging',
                        style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 350,
                  height: 150,
                  child: TextButton(
                    //btn 2
                    style: btnStyle,
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
