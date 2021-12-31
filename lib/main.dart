import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  HomePage createState() => HomePage();
}

class HomePage extends State<MainPage> {
  bool _isWifiOn = false;
  bool _isairOn = false;
  bool _isalarmOn = false;
  bool _iscameraOn = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Assignment 2',
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(text: 'All'),
                      Tab(text: 'Living room'),
                      Tab(text: 'Bedroom'),
                    ],
                  ),
                  title: Text("Remote Control"),
                ),
                body: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    SizedBox.fromSize(
                      size: Size(56, 56),
                      child: ClipOval(
                        child: Material(
                          color: Colors.blue,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.wifi),
                                color: Colors.white,
                                iconSize: 55,
                                tooltip: 'Toggle Wifi',
                                onPressed: () {
                                  setState(() {
                                    if (_isWifiOn == false) {
                                      print('ON');
                                    } else {
                                      print('OFF');
                                    }
                                    _isWifiOn = !_isWifiOn;
                                  });
                                },
                              ),
                              Text('Wifi On : $_isWifiOn',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56),
                      child: ClipOval(
                        child: Material(
                          color: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.ac_unit),
                                color: Colors.white,
                                iconSize: 55,
                                tooltip: 'Toggle Ac',
                                onPressed: () {
                                  setState(() {
                                    if (_isairOn == false) {
                                      print('ON');
                                    } else {
                                      print('OFF');
                                    }
                                    _isairOn = !_isairOn;
                                  });
                                },
                              ),
                              Text('AC On : $_isairOn',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56),
                      child: ClipOval(
                        child: Material(
                          color: Colors.yellow,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.alarm),
                                color: Colors.white,
                                iconSize: 55,
                                tooltip: 'Toggle Ac',
                                onPressed: () {
                                  setState(() {
                                    if (_isalarmOn == false) {
                                      print('ON');
                                    } else {
                                      print('OFF');
                                    }
                                    _isalarmOn = !_isalarmOn;
                                  });
                                },
                              ),
                              Text('Alarm On : $_isalarmOn',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox.fromSize(
                      size: Size(56, 56),
                      child: ClipOval(
                        child: Material(
                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.camera),
                                color: Colors.white,
                                iconSize: 55,
                                tooltip: 'Toggle Camera',
                                onPressed: () {
                                  setState(() {
                                    if (_iscameraOn == false) {
                                      print('ON');
                                    } else {
                                      print('OFF');
                                    }
                                    _iscameraOn = !_iscameraOn;
                                  });
                                },
                              ),
                              Text('Camera On : $_iscameraOn',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ))));
  }
}
