import 'package:flutter/material.dart';
import 'quote.dart';


void main() {
  runApp(MaterialApp(
    home: QuateList(),
  ));

}
class QuateList extends StatefulWidget {
  @override
  _QuateListState createState() => _QuateListState();
}

class _QuateListState extends State<QuateList> {

  List<Quote>quotes = [
    Quote(text:'we are outguned and outnumbered' , author: 'Captain John price '),
    Quote(text:'He is mine Price!', author: 'Captain John Soap Mactavish'),
    Quote(text:'History is written by the victors ', author: 'Genaral Shepered ')

  ];

  Widget quoteTemplete(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize: 18,
              color: Colors.grey[600],

            ),
          ),
          SizedBox(height: 6,),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800]
            ),
          ),
        ],
      ),
    ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title:Text('Call Of Duty Quotes'),

        centerTitle: true,
        backgroundColor: Colors.redAccent,


      ),
      body: Column(
          children:quotes.map((quote) => quoteTemplete(quote)).toList(),

      )
    );
  }
}

