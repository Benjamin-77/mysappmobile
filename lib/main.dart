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
      theme: ThemeData(fontFamily: 'poppins'),
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
          width: MediaQuery.of(context).size.width*0.5,
          height: MediaQuery.of(context).size.height*0.8,
          decoration: BoxDecoration(
          ),
          child: ListView(
            children: [
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/home.svg',height: 20,),
                title: Text('Accueil',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/notification.svg',height: 20,),
                title: Text('Notifications',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/gift.svg',height: 20,),
                title: Text('Bonus',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/annonceIcon.svg',height: 20,),
                title: Text('Annonces',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/publicite.svg',height: 20,),
                title: Text('Publicités',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/walletIcon.svg',height: 20,),
                title: Text('Mon Portefeille',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/historique.svg',height: 20,),
                title: Text('Historique',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/user.svg',height: 20,),
                title: Text('Mon Compte',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/parametre.svg',height: 20,),
                title: Text('Paramètre',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/tel.svg',height: 20,),
                title: Text('Contacts',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/faqIcon.svg',height: 20,),
                title: Text('Faq',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
              SizedBox(height: 2,),
              ListTile(
                horizontalTitleGap: 0,
                leading: SvgPicture.asset('assets/icons/aide.svg',height: 20,),
                title: Text('Aide',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold, color: gris),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
                tileColor: grisClaire,
              ),
            ],
          )
        ),
      ),
      body: Center(
        child: Text("Morning",style: TextStyle(fontFamily: 'poppins',fontSize: 30),),
      ),
 // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
