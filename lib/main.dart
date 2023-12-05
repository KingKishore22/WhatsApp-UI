import 'package:flutter/material.dart';
import 'package:whatsapp/calls.dart';
import 'package:whatsapp/chats.dart';
import 'package:whatsapp/status.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: tab(),
    );
  }
}

class tab extends StatefulWidget {
  @override
  State<tab> createState() => _tabState();
}

class _tabState extends State<tab> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    _controller.animateTo(1);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075e54),
        title: Text(
          'WhatsApp Business',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
            color: Colors.white,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            // color:,
          ),
          IconButton(
            onPressed: null,
            icon: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            color: Colors.white,
          )
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              iconMargin: EdgeInsets.zero,
              icon: Icon(Icons.add_business_sharp),
            ),
            Tab(
              child: Text(
                'Chats',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Status',
                style: TextStyle(color: Colors.white),
              ),
            ),
            Tab(
              child: Text(
                'Calls',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
          controller: _controller,
        ),
      ),
      body: TabBarView(controller: _controller, children: [
        /*  Container(
          color: Colors.white,
          child: Text('Home'),
        ),
        Container(
          color: Colors.white,
          child: Text('Account'),
        ),
        Container(
          color: Colors.white,
          child: Text('Settings'),
        ),
        Container(
          color: Colors.white,
          child: Text('Calls'),
        ),*/
        Container(
          color: Colors.white,
          child: Text('Home'),
        ),
        chats(),
        status(),
        calls(),
      ]),
//      if(_c)
      floatingActionButton: _controller.index == 1
          ? FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: null,
              child: Icon(Icons.message),
            )
          : _controller.index == 2
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: FloatingActionButton(
                        backgroundColor: Colors.white70,
                        onPressed: null,
                        child: Icon(
                          Icons.edit,
                          color: Colors.blueGrey,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: null,
                      child: Icon(Icons.camera_alt),
                    ),
                  ],
                )
              : _controller.index == 3
                  ? FloatingActionButton(
                      backgroundColor: Colors.green,
                      onPressed: null,
                      child: Icon(Icons.add_call),
                    )
                  : null,
      // : FloatingActionButton(onPressed: null,),
    );
    //);
  }
}

/////chats

/////status

///calls
