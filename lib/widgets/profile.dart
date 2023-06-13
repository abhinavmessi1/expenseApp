import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Login Page'),
        ),
        body: Center(
          child: Container(
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Name'),
                  ),
                  flex: 2,
                ),
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(labelText: 'Age'),
                )),
                Container(
                  child: ElevatedButton(
                    child: Text('Go Back'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
