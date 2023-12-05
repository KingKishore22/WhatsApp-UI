import 'package:flutter/material.dart';

import 'chatmodel.dart';

class calls extends StatefulWidget {
  @override
  State<calls> createState() => _callsState();
}

class _callsState extends State<calls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Stack(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  child: CircleAvatar(
                    foregroundColor: Colors.green,
                    backgroundColor: Colors.green,
                  ),
                ),
                Positioned(
                    bottom: 3,
                    top: 0,
                    left: 10,
                    right: 10,
                    child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: Icon(
                          Icons.link,
                          color: Colors.white,
                        )))
              ],
            ),
            title: Text(
              'Create call link',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Share a link for your WhatsApp call'),
          ),
          SizedBox(
            height: 5,
            width: 3,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Recent',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: datas.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: Container(
                    //color: Colors.black,
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(datas[index].im1),
                    ),
                  ),
                  title: Text(
                    datas[index].name,
                    style: TextStyle(),
                  ),
                  subtitle: Row(
                    children: [
                      /*   Container(
                        //color: Colors.black,
                        width: 5,
                        height: 5,
                        child: Icon(Icons.call_received_sharp),
                      ),*/
                      /*  */
                      Icon(
                        Icons.call_received_sharp,
                        size: 13,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text('Septemper 5,'),
                      SizedBox(
                        width: 3,
                      ),
                      Text(datas[index].time),
                    ],
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
