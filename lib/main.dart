import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(text: 'Quote 1', author: 'Author 1'),
    Quote(text: 'Quote 2', author: 'Author 2'),
    Quote(text: 'Quote 3', author: 'Author 3')
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.grey[800]
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.grey[800],
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
       title: Text('Quotes List'),
       centerTitle: true,
       backgroundColor: Colors.redAccent,
     ),
     body: Column(
       // children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
       children: quotes.map((quote) => quoteTemplate(quote)).toList(),
     ),
   );
  }
}



