import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utility/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
          systemNavigationBarColor: Color(0xff53AE3D),
          systemNavigationBarIconBrightness: Brightness.light));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu_rounded,color: blanc,size: 36,),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        leadingWidth: 70,
        backgroundColor: vert,
        title: SvgPicture.asset('assets/icons/logoneutreSVG.svg',height: 34,),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          child: Column(
            children: [

            ],
          ),
        ),
      ),
      body: Center(
        child: Text("Morning",style: TextStyle(fontFamily: 'poppins',fontSize: 30),),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
