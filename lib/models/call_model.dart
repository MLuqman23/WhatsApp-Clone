import 'package:flutter/material.dart';
class CallModel{
  final String name;
  // final String message;
  final String time;
  final String avatar;
  final Icon CallType;
  CallModel({required this.name, required this.time, required this.avatar, required this.CallType});
  static Icon callReceived=Icon(Icons.call_received,
  size: 18,
  color: Colors.green,);
    static Icon callMissed=Icon(Icons.call_missed,
  size: 18,
  color: Colors.red,);
}

List<CallModel> CallData = [
  CallModel(
    name: "Luqman",
    time: '8:40',
    CallType: CallModel.callReceived,
    avatar: "images/IMG_1535.jpg",
  ),
  
  CallModel(
    name: "Anurag",
    time: '6:40', 
    CallType: CallModel.callReceived,
    avatar: 'images/1.jpg',
   
  ),
  CallModel(
    name: "Sarvesh",
    time: '9:00',
    CallType: CallModel.callMissed,
    avatar: "images/1.jpg",
  ),
  CallModel(
    name: "Sandy",
    time: '9:40',
    CallType: CallModel.callReceived,
    avatar: "images/maan1.jpg",
  ),
  CallModel(
    name: "Pankaj",
    time: '8:40',
    CallType: CallModel.callMissed,
    avatar: "images/2.jpg",
  ),
  CallModel(
    name: "Kammo",
    time: '10:00',
    CallType: CallModel.callReceived,
    avatar: "images/3.jpg",
  ),
  
  
];