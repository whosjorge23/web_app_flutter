import 'package:flutter/material.dart';
import 'package:web_app/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.symmetric(horizontal: 5),child:Image.network("https://i.imgur.com/nrJepgw.png")),
        actions: [PopupMenuButton(
                   
                   icon: Icon(Icons.menu),
                   itemBuilder: (context){
                     return [
                            PopupMenuItem<int>(
                                value: 0,
                                child: Text("Videos"),
                            ),

                            PopupMenuItem<int>(
                                value: 1,
                                child: Text("Settings"),
                            ),

                            PopupMenuItem<int>(
                                value: 2,
                                child: Text("Logout"),
                            ),
                        ];
                   },
                   onSelected:(value){
                      if(value == 0){
                         print("My account menu is selected.");
                         Navigator.push(context, MaterialPageRoute(builder: (context) => VideoApp()));
                      }else if(value == 1){
                         print("Settings menu is selected.");
                      }else if(value == 2){
                         print("Logout menu is selected.");
                      }
                   }
                  ),
                  ],
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(child: Container(color: Colors.amber,))
          ],
        ),
      ),
    );
  }
}
