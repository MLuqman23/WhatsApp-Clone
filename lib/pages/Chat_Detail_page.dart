import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/pages/message_page.dart';


class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({super.key});

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('image/no_image.jpg')
              ),
              Padding(
                padding: EdgeInsets.only(left: 6.0),
                child: Text('Luqman'),
                )
            
          ],
        ),
        actions: [
          IconButton(
          onPressed: (() {
            print("video call button clicked");
          }), icon: Icon(Icons.video_call)),
           IconButton(
          onPressed: (() {
            print("video call button clicked");
          }), icon: Icon(Icons.call)),
           IconButton(
          onPressed: (() {
            print("video call button clicked");
          }), icon: Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    minLines: 1,
                    maxLines: 5,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.grey,width: 0.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(40),
                        borderSide: BorderSide(color: Colors.grey,width: 0.0),
                        ),
                        hintText: 'Type a message',
                    ),
                  ),
                  )
              ],
            ),
          )
        ],
      ),
    );
    
  }
}