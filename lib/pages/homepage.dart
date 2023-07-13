import 'package:flutter/material.dart';
import 'package:whatsapp_cloneapp/pages/Status_Page.dart';
import 'package:whatsapp_cloneapp/pages/call_page.dart';
import 'package:whatsapp_cloneapp/pages/chat_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin
 {
  late TabController _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'Chats'),
    Tab(text: 'Status'),
    Tab(text: 'Calls'),
  ];
  @override
  void initState() {
    _tabController=TabController(length: 4, initialIndex: 1,vsync: this)
    ..addListener(() {
      setState(() {
        
      });
    });
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
          onPressed: (() {
            print("search button clicked");
          }), icon: Icon(Icons.search)),
          IconButton(
          onPressed: (() {
            print("Three dot button clicked");
          }), icon: Icon(Icons.more_vert))
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: topTabs,
          ),
      ),
      body:TabBarView(
        controller: _tabController,
        children: [
          Text('Camera'),
          ChatPage(),
          StatusPage(),
          CallPage(),
          
        
        ],
      ),
      floatingActionButton: _getFAB(),
      );
  }
  _getFAB(){
    if(_tabController.index==1){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.message,
        color: Colors.white,),
        onPressed: (() {
        print('Open Chat');
      }));
    }
    else if(_tabController.index==2){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.camera_alt,
        color: Colors.white,),
        onPressed: (() {
        print('Open camera');
      }));
    }
    else if(_tabController.index==3){
      return FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.call,
        color: Colors.white,),
        onPressed: (() {
        print('Open Call');
      }));
    }
    else{
      return null;
    }
  }
}