import 'package:flutter/material.dart';

import 'menu/wines.dart';
import 'menu/seller.dart';
import 'menu/notes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  TabController? controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
    // controller.addListener(() {
    //   if(!controller.indexIsChanging){
    //     print("이전 index, ${controller.previousIndex}");
    //     print("현재 index, ${controller.index}");
    //     print("전체 탭 길이, ${controller.length}");
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabBar Example'),
        ),
        body: TabBarView(
          children: <Widget>[WinesApp(), SellerApp(), NotesApp()],
          controller: controller,
        ),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab(child: Text('WINE', style: TextStyle(fontSize: 20, color: Colors.redAccent))),
          Tab(child: Text('SELLER', style: TextStyle(fontSize: 20, color: Colors.teal))),
          Tab(child: Text('NOTE', style: TextStyle(fontSize: 20, color: Colors.indigoAccent))),
          // todo: change image to wine, seller, notes
          // Tab(child: Image.asset('images/flutter.png', width:25, height: 25,)),
          // Tab(child: Image.asset('images/flutter.png', width:25, height: 25,)),
          // Tab(child: Image.asset('images/flutter.png', width:25, height: 25,)),
        ], controller: controller,
        )
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }
}