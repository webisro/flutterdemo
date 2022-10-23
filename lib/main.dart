import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(const MaterialApp(
      home: Main(),
    ));

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  List<Quote> quotes = [
    Quote(author: 'mos craciun', text: 'ana are mere'),
    Quote(author: 'mos gerila', text: 'ciresel vine si cere'),
    Quote(author: 'mos nicolae', text: 'ana nu ii da nimic, teapa!'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista elemente 2"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
        ));
  }
}
