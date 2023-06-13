import './widgets/profile.dart';

import './widgets/new_transaction.dart';
import 'package:expapp/widgets/transaction_list.dart';
import './widgets/user_transaction.dart';
import 'package:flutter/material.dart';
import './widgets/new_transaction.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'World of Naruto',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //the list made type transaction
  //String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amounController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(2.0),
          children: <Widget>[
            DrawerHeader(
              child: Text('side Drawer'),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/kidnaruto.jpg'),
                ),
              ),
            ),
            ListTile(
              title: Text('AboutUs'),
              subtitle: Text(
                'Know our History',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text('LoginPage'),
              subtitle: Text(
                'Connect with us',
                textDirection: TextDirection.rtl,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfilePage()),
                );
              },
            )
          ],
        ),
        elevation: 7.0,
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Uzumaki naruto dattebayo'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fullpowernaruto.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Card(
                  color: Colors.amberAccent,
                  child:
                      Container(width: double.infinity, child: Text('Chart!')),
                  elevation: 5,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
        ],
      ),
    );
  }
}
