import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frequently Asked Questions",
            style: TextStyle(
              fontSize: 30,
            )),
        backgroundColor: Colors.lightGreen,
      ),
      drawer: Container(
        width: 215.0,
        child: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  height: 110.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, bottom: 0.0),
                          child: ClipOval(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, '/');
                              },
                              child: Image(
                                width: 55,
                                height: 55,
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/highreslogo.png'),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                          child: Text(
                            'AllEars',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.text_snippet_outlined,
                      color: Colors.tealAccent[400]),
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.pushNamed(context, '/second');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calculate_outlined, color: Colors.red),
                  title: Text('Carbon Calculator'),
                  onTap: () {
                    Navigator.pushNamed(context, '/third');
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined,
                      color: Colors.amber[600]),
                  title: Text('Donate'),
                  onTap: () {
                    Navigator.pushNamed(context, '/fourth');
                  },
                ),
                Container(
                    child: ListTile(
                      leading: Icon(Icons.map_outlined, color: Colors.green),
                      title: Text('Elephant Map'),
                      onTap: () {
                        Navigator.pushNamed(context, '/fifth');
                      },
                    ),
                    decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black12)))),
                ListTile(
                  title: Text('FAQ'),
                  onTap: () {
                    Navigator.pushNamed(context, '/sixth');
                  },
                ),
                ListTile(
                  title: Text('Write a Review'),
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
              ],
            )),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}