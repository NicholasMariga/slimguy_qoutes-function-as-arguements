import 'package:flutter/material.dart';
import 'slimqoutes.dart';
void main() => runApp(MaterialApp(
  home: ProgQuotes(),
));

class ProgQuotes extends StatefulWidget {
  @override
  _ProgQuotesState createState() => _ProgQuotesState();
}

class _ProgQuotesState extends State<ProgQuotes> {
  List<slimqoutes>  slimquote =[
    slimqoutes(text: '\tTalk is cheap. Show me the code', author: 'Linus Torvalds\n'),
    slimqoutes(text: '\twhen you don t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.', author: 'Lucky stiff\n'),
    slimqoutes(text: '\tPrograms must be written for people to read, and only incidentally for machines to execute.', author: 'Harold Abelson\n'),
    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',author: 'Rick Cook\n'),
    slimqoutes(text: '\tTalk is cheap Show me the code', author: 'Linus Torvalds\n'),
    slimqoutes(text: '\twhen you don t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.', author: 'Lucky stiff\n'),
    slimqoutes(text: '\tPrograms must be written for people to read, and only incidentally for machines to execute.', author: 'Harold Abelson\n'),
    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',author: 'Rick Cook\n'),
    slimqoutes(text: '\tTalk is cheap. Show me the code', author: 'Linus Torvalds\n'),
    slimqoutes(text: '\twhen you don t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.', author: 'Lucky stiff\n'),
    slimqoutes(text: '\tPrograms must be written for people to read, and only incidentally for machines to execute.', author: 'Harold Abelson\n'),
    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',author: 'Rick Cook\n'),



  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("SlimGuy Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: slimquote.map((quote)=>Text('${quote.text}-${quote.author}')).toList(),

//        children: slimquotes.map((quote){
//          return Text(quote);
//        }).toList(),
      ),
    );
  }
}
