import 'package:flutter/material.dart';
import 'package:whatsapp/chatmodel.dart';

class status extends StatefulWidget {
  @override
  State<status> createState() => _statusState();
}

class _statusState extends State<status> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              //color: Colors.amberAccent,
              child: Stack(
                children: [
                  Container(
                    //color: Colors.black,
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(datas[10].im1),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.green),
                        child: Icon(
                          Icons.add,
                          size: 17,
                          color: Colors.white,
                        )),
                  )
                ],
              ),
            ),
            title: Text(
              'My status',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Tap to add status update'),
          ),
          SizedBox(
            height: 5,
            width: 3,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: Text(
              'Recept updates',
              style: TextStyle(color: Colors.grey.shade700),
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
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(datas[index].time_d),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
