import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard()
  ));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int goal = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[500],
      appBar: AppBar(
        title: Text('ID card'),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
           setState(() {
             goal++;
           });
          },
        child: Text('Score'),
        backgroundColor: Colors.red,

      ),

      body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/ronaldo.jpg'),
                  radius: 40,

                ),
              ),

              Divider(
                height: 40,
                color: Colors.black,
              ),

              SizedBox(height: 20,),

              Text(
                'NAME',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.black,
                ),
              ),
              Text(
                'Christiano Ronaldo',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.amberAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Total GOAL',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.black,
                ),
              ),
              Text(
                '$goal',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.amberAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30,),
              Row(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.email),
                  Text('ronaldo@gmail.com'),
                ],
              )
            ],
          ),
        ),
    );
  }
}

