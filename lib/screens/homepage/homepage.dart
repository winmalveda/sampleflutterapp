import 'package:flutter/material.dart';
import './pages/Item1.dart';
import './pages/Item2.dart';
import './pages/SampleMessaging.dart';
import './pages/Item4.dart';
import './pages/Item5.dart';
import './pages/SampleBack.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
      home: Scaffold(
        body: NavDrawer(),
      ),
    );
  }
}

class NavDrawer extends StatefulWidget {
  @override
  NavDrawerState createState() => NavDrawerState();
}

class NavDrawerState extends State<NavDrawer> {
  Widget widgetForBody = Item1Page();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Application", style: TextStyle(color: Colors.black, fontSize: 20,)),
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black),
      ),
      body:  widgetForBody,
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          padding: EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 5.0),
          children: <Widget>[
            /*DrawerHeader(
              child: Text('Drawer Header'),
            ),*/
            ListTile(
              leading: Icon(Icons.wb_sunny),
              title: Text('Item 1', style: TextStyle(color: Colors.blue, fontSize: 20,)),
              onTap: () {
                // Update the state of the app
                setState((){
                  widgetForBody = Item1Page();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2', style: TextStyle(color: Colors.red, fontSize: 25,)),
              trailing: Icon(Icons.wb_sunny),
              onTap: () {
                // Then close the drawer
                Navigator.pop(context);
                // Go to another Activity
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Back()),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/stars.jpg'), // This is the format if you will put image
              ),
              title: Text('Item 3', style: TextStyle(color: Colors.yellow, fontSize: 15,)),
              onTap: () {
                // Update the state of the app
                Navigator.pop(context);
                // Go to another Activity
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Messaging()),
                );
              },
            ),
            ListTile(
              title: Text('Item 4', style: TextStyle(color: Colors.green, fontSize: 12,)),
              subtitle: Text('This is a subtitle', style: TextStyle(color: Colors.greenAccent, fontSize: 8,)),
              onTap: () {
                // Update the state of the app
                setState((){
                  widgetForBody = Item4Page();
                });
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            Card (
              child : ListTile(
                title: Text('Item 5', style: TextStyle(color: Colors.pink, fontSize: 30,)),
                onTap: () {
                  // Update the state of the app
                  setState((){
                    widgetForBody = Item5Page();
                  });
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 70.0,
        width: 80.0,
        child: FittedBox(
          child: FloatingActionButton(child: const Icon(Icons.add, size: 35,), onPressed: () {},),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5.0,
          child: Padding(
            padding: EdgeInsets.fromLTRB(15.0,8.0,15.0,8.0),
            child: new Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.home, color: Colors.blue, size: 35),
                  onPressed: () {
                    setState((){
                      widgetForBody = Item1Page();
                    });
                  },),
                IconButton(icon: Icon(Icons.message, color: Colors.blue, size: 35),
                  onPressed: () {
                    setState((){
                      widgetForBody = Item2Page();
                    });
                  },),
                IconButton(icon: Icon(Icons.add, color: Colors.white, size: 35),),
                IconButton(icon: Icon(Icons.call, color: Colors.blue, size: 35),
                  onPressed: () {
                    setState((){
                      widgetForBody = Item4Page();
                    });
                  },),
                IconButton(icon: Icon(Icons.search, color: Colors.blue, size: 35),
                  onPressed: () {
                    setState((){
                      widgetForBody = Item5Page();
                    });
                  },),
              ],
            ),
          )
      ),
    );
  }
}
