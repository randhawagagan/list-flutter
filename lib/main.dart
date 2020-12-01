import 'package:flutter/material.dart';
import 'package:list_flutter/quote_card.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Excellence then, is not an act, but a habit.', author: 'Gagan'),
    Quote(text: 'Excellence then, is not an act, but a habit.', author: 'Gagan'),
    Quote(text: 'Excellence then, is not anut a habit.', author: 'Gagan'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes'
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>
            QuoteCard(
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




