import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/models/Status_Model.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage('image/no_image.jpg'),

                  ),

                  title: Text('My Status',
                  style: TextStyle(fontWeight: FontWeight.bold)
                  ),

                  subtitle: 
                      Text('Tao to add status update',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0)
                  ),
                  onTap: () {
                    print('My status details open');
                  },
      

          
        ),
        Divider(),
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Recent Updates',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black54,
                fontSize: 15.0,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
        Flexible(
          child: ListView.builder(
          itemCount: StatusData.length,
          itemBuilder: (context,idx) =>Column(
            children: [
              ListTile(
               leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  backgroundImage: AssetImage(
                    StatusData[idx].avatar ),

                  ),

                  title: Text(StatusData[idx].name,
                  style: TextStyle(fontWeight: FontWeight.bold)
                  ),

                  subtitle: Text(StatusData[idx].time,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0)
                  ),
                  onTap: () {
                    print('status details open');
                  },

                
              ),
              Divider(
                height: 10.0,
              ),
            ],
          ),
        ),
        )
      ],
    );
  }
}