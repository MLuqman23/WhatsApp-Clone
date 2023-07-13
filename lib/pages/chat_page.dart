import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/models/chat_model.dart';
import 'package:whatsapp_cloneapp/pages/Chat_Detail_page.dart';

class ChatPage extends StatefulWidget {
  ChatPage({super.key});

  @override
   _ChatPageState createState() =>  _ChatPageState();
}

class  _ChatPageState extends State <ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: ChatData.length,
        itemBuilder: (context,idx)=>
          Column(
            children: [
              Divider(
                height: 10.0,
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(
                    ChatData[idx].avatar ),

                  ),

                  title: Text(ChatData[idx].name,
                  style: TextStyle(fontWeight: FontWeight.bold)
                  ),

                  subtitle: Text(ChatData[idx].message,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0)
                  ),

                  trailing: Text(
                    ChatData[idx].time,
                    style: TextStyle(color: Colors.grey,
                    fontSize: 14.0),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute
                      (builder: (context) => ChatDetailPage
                      ()));
                  }
                ),
              
            ],
          )
        ),
    );
  }
}