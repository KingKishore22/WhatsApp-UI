import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:whatsapp/chats.dart';

class chatmodel {
  final String im1;
  final String name;
  final String sub;
  final String time;
  final String time_d;
  chatmodel(this.im1, this.name, this.sub, this.time, this.time_d);
}

List<chatmodel> datas = [
  new chatmodel('https://randomuser.me/api/portraits/men/1.jpg', 'David',
      'Hii I am David How Are You', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/2.jpg', 'Willey',
      'Hii I am Willey', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/3.jpg', 'Johnson',
      'Hiii I am Johnson', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/4.jpg', 'Steve',
      'Hii I am Steve', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/5.jpg', 'Steve',
      'Hii I am Harry', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/6.jpg', 'Mark',
      'Hii I am Mark', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/7.jpg', 'Antony',
      'Hii I am Antony', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/8.jpg', 'Allen',
      'Hii I am Allen', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/9.jpg', 'Warner',
      'Hii I am Warner', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/10.jpg', 'Smith',
      'Hii I am Smith', '10:23 AM', 'Today,10.20 PM'),
  new chatmodel('https://randomuser.me/api/portraits/men/11.jpg', 'Sam',
      'Hii I am Sam', '10:23 AM', 'Today,10.20 PM'),
];
