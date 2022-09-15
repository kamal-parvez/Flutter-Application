

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quotes/quote_card.dart';

import 'quote.dart';

class Quotes extends StatefulWidget {

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotes = [
    Quote(author: 'Kamal Parvez', text: 'Be cool and code'),
    Quote(text:  'You can be happy without me but I can\'t', author: 'Kashmary Jannat'),
    Quote(author: 'Christiano Ronaldo', text: 'Ignore Everything except yourself'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Some good advices'),
        backgroundColor: Colors.blue[200],
        centerTitle: true,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            }
          )
        ).toList(),
      ),
    );
  }
  
}