import 'package:flutter/material.dart';
import './chart_model.dart';

void main() => runApp(FlutterApp());

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application',
      home: Scaffold(
        body: LoginPage(),
        ),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23.0, 18.0, 23.0, 18.0),
          labelText: 'Email',
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(0))),
    );

    final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23.0, 18.0, 23.0, 18.0),
          labelText: "Password",
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery
            .of(context)
            .size
            .width,
        padding: EdgeInsets.fromLTRB(27.0, 22.0, 27.0, 22.0),
        // This is were you will put the function of your button
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homepage()),
          );
        },
        child: Text("Login",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // If you want to add icon uncomment this
                /*SizedBox(
                  height: 155.0,
                  child: Image.asset(
                    "assets/logo.png",
                    fit: BoxFit.contain,
                  ),
                ),*/
                SizedBox(height: 40.0),
                emailField,
                SizedBox(height: 25.0),
                passwordField,
                SizedBox(
                  height: 30.0,
                ),
                loginButton,
                SizedBox(
                  height: 15.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
                  MaterialPageRoute(builder: (context) => BackButton()),
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

class Item1Page extends StatefulWidget {
  @override
  Item1PageState createState() => Item1PageState();
}

class Item1PageState extends State<Item1Page> {

  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Column(children: <Widget>[
          Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(10.0,10.0,10.0,10.0),
                child: TextField(
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                    filled: true,
                      fillColor: Colors.white,
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.black),
                      border:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
                )
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),
            ],
          ),
          SizedBox(height: 1.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),
            ],
          ),
          SizedBox(height: 1.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),
            ],
          ),
          SizedBox(height: 1.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),RaisedButton(
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 21.0, horizontal:23.0),
                child : Column (
                  children: <Widget>[
                    Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                    Text('Play this song', style: TextStyle(color: Colors.black),),
                  ],
                ),
                onPressed: () {
                  //Code to execute when Floating Action Button is clicked
                  //...
                },
              ),
            ],
          ),
        ]
        ),
    );
  }
}

class Item2Page extends StatefulWidget {
  @override
  Item2PageState createState() => Item2PageState();
}

class Item2PageState extends State<Item2Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}

class Item3Page extends StatefulWidget {
  @override
  Item3PageState createState() => Item3PageState();
}

class Item3PageState extends State<Item3Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.yellow,
        ),
      ),
    );
  }
}

class Item4Page extends StatefulWidget {
  @override
  Item4PageState createState() => Item4PageState();
}

class Item4PageState extends State<Item4Page> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.green,
        ),
      ),
    );
  }
}

class Item5Page extends StatefulWidget {
  @override
  Item5PageState createState() => Item5PageState();
}

class Item5PageState extends State<Item5Page> {

  @override
  @override
  Widget build(BuildContext context) {

    /*final SearchBar = TextField(
      obscureText: true,
      autofocus: false,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(23.0, 18.0, 23.0, 18.0),
          hintText: "Search",
          hintStyle: TextStyle(color: Colors.black),
          border:
          OutlineInputBorder(borderRadius: BorderRadius.circular(25.0))),
    );
*/

    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          padding: EdgeInsets.fromLTRB(15, 80, 15, 20),
          // Generate 100 widgets that display their index in the List.
          children: List.generate(12, (index) {
            return Card(
              color: Colors.white,
              child: Center(
                child: RaisedButton(
                  color: Colors.white,
                  child : Column (
                    children: <Widget>[
                      Icon(Icons.play_arrow, color: Colors.blue, size: 50,),
                      Text('Play this song', style: TextStyle(color: Colors.black),),
                    ],
                  ),
                  onPressed: () {
                    //Code to execute when Floating Action Button is clicked
                    //...
                  },
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('AppBar Back Button'),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
      body: Center(
        child: Text("Try Back Button"),
      ),
    );
  }
}

class Messaging extends StatefulWidget {
  @override
  MessagingState createState() => MessagingState();
}

class MessagingState extends State<Messaging> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          //`true` if you want Flutter to automatically add Back Button when needed,
          //or `false` if you want to force your own back button every where
          title: Text('Messages'),
          leading: IconButton(icon:Icon(Icons.arrow_back),
            onPressed:() => Navigator.pop(context, false),
          )
      ),
      body: Container(
        child: ListView.builder(
          itemCount: ChatModel.dummyData.length,
          itemBuilder: (context, index) {
            ChatModel _model = ChatModel.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 12.0,
                ),
                ListTile(
                  leading: CircleAvatar(
                    radius: 24.0,
                    backgroundImage: NetworkImage(_model.avatarUrl),
                  ),
                  title: Row(
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 16.0,
                      ),
                      Text(
                        _model.datetime,
                        style: TextStyle(fontSize: 12.0),
                      ),
                    ],
                  ),
                  subtitle: Text(_model.message),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: 14.0,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}