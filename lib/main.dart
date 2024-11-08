import 'package:flutter/material.dart';

void main() =>runApp(const TabBarApp());

 class TabBarApp extends StatelessWidget {
  
  const TabBarApp ({super.key});
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
     
     theme: ThemeData(useMaterial3: true),
     home: const TabBarExample (),
    );
  }
 }

class TabBarExample extends StatelessWidget {
  const TabBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
           appBar: AppBar(
            title: const Text('TabBar Sample'),

            bottom: const TabBar(tabs: <Widget>
              [
                   Tab(
                     icon: Icon(Icons.cloud_outlined),
                      ),
                   Tab(
                     icon: Icon(Icons.beach_access_sharp),
                   ),

                  Tab(
                     icon: Icon(Icons.brightness_5_sharp),
                   ),
               ]
            ),
           ), // done AppBar
     body:  const TabBarView(

             children:<Widget>
                [

                Center(
                    child: Text('It is a cloudy here',style: TextStyle(fontSize: 30, backgroundColor: Colors.red, fontWeight: FontWeight.bold), ),

                     ),
                Center(
                      child: Text('It is rainy here'),
                      ),
                Center(
                        child: Text('It is sunny here'),
                      )
              ],
         ),  // tabBarview
        ),  // Child : Scarffold

    ); // defaultabController
  }
}