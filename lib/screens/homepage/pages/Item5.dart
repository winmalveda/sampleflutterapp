import 'package:flutter/material.dart';

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