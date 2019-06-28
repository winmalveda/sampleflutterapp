import 'package:flutter/material.dart';

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