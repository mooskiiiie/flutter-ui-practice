import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Taikee Profile',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[500],
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/me.jpeg'),
                radius: 50,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.deepPurple[700],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.deepPurple[700],
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Sebastian Vergara',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text('CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.deepPurple[700],
                  letterSpacing: 2,
                )),
            SizedBox(height: 10),
            Text(
              '$ninjaLevel',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'sebastian.vergara@obf.ateneo.edu',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.credit_card,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'My Linked Accounts',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.qr_code,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'My QR Codes',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.store,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Partner Merchants',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.settings,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.logout,
                  color: Colors.deepPurple[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Log Out',
                  style: TextStyle(
                    color: Colors.deepPurple[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
