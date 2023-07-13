import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/models/call_model.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: CallData.length,
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
                    CallData[idx].avatar ),

                  ),

                  title: Text(CallData[idx].name,
                  style: TextStyle(fontWeight: FontWeight.bold)
                  ),

                  subtitle: Row(
                    children: [
                      Container(
                        child: CallData[idx].CallType,
                      ),
                      Text(CallData[idx].time,
                  style: TextStyle(color: Colors.grey, fontSize: 15.0)
                  ),
                    ],
                  ),

                  trailing: Icon(
                    Icons.call,
                    size: 25,
                    color: Theme.of(context).primaryColor,
                    ),
                  onTap: () {
                    print('call details');
                  },
                )
              
            ],
          )
        ),
    );;
  }
}