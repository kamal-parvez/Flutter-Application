import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quote;
  void Function() delete;

  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              quote.author,
            ),

            SizedBox(height: 3,),

            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete'),
            )
          ],
        ),
      ),
    );
  }
}
