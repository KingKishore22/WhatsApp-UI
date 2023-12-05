import 'package:flutter/material.dart';
import 'package:whatsapp/chatmodel.dart';

class chats extends StatefulWidget {
  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
          subtitle: Text(datas[index].sub),
          trailing: Text(
            datas[index].time,
            style: TextStyle(color: Colors.grey.shade600),
          ),
        );
      },
    );
  }
}
