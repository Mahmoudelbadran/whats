import 'package:flutter/material.dart';

import '../../model/item_chat_model/item_chat_model.dart';
import '../../view/item_chat/item_chat.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ItemChat> data = [
    ItemChat(
        name: "ahmed mahmoud",
        msg: "hello, mahmoud",
        image: "images/avater.jpg",
        point: true),
    ItemChat(
        name: "reda ahmed",
        msg: "hello, ahmed",
        image: "images/avater.jpg",
        point: false),
    ItemChat(
        name: "sara hassen",
        msg: "hello, mahmoud",
        image: "images/avater.jpg",
        point: true),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) => ItemChatView(
              name: data[index].name,
              msg: data[index].msg,
              image: data[index].image,
              point: data[index].point,
            )));
  }
}
