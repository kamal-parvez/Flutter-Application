import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My first app'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Text('Hello'),
              padding: EdgeInsets.all(20),
              color: Colors.blue[500],
            ),
          ),
          Expanded(
            flex: 2,
              child: Container(
                child: Text('Girls'),
                padding: EdgeInsets.all(20),
                color: Colors.red[500],
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text('Click'),
      ),
    );
  }
}
