import 'package:flutter/cupertino.dart';
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
    slimqoutes(text: '\tTalk is cheap. Show me the code', author: 'Linus Torvalds'),
    slimqoutes(text: '\twhen you don t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.', author: 'Lucky stiff'),
    slimqoutes(text: '\tPrograms must be written for people to read, and only incidentally for machines to execute.', author: 'Harold Abelson'),
    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',author: 'Rick Cook'),
    slimqoutes(text: '\tThe most disastrous thing that you can ever learn is your first programming language.', author: 'Alan Kay'),
    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.', author: 'John Woods'),
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
        // children: slimquote.map((quote)=>Text('${quote.text}-${quote.author}')).toList(),
       // children: slimquote.map((quote)=>tempQoute(quote)).toList(),
        children: slimquote.map((quote)=>ExtractedWidgetcard(quote: quote)).toList(),

//        children: slimquotes.map((quote){
//          return Text(quote);
//        }).toList(),
      ),
    );
  }
}

class ExtractedWidgetcard extends StatelessWidget {
  final slimqoutes quote;
  ExtractedWidgetcard({this.quote});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[950],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'slimqoutes.dart';
//void main() => runApp(MaterialApp(
//  home: ProgQuotes(),
//));
//
//class ProgQuotes extends StatefulWidget {
//  @override
//  _ProgQuotesState createState() => _ProgQuotesState();
//}
//
//class _ProgQuotesState extends State<ProgQuotes> {
//  List<slimqoutes>  slimquote =[
//    slimqoutes(text: '\tTalk is cheap. Show me the code', author: 'Linus Torvalds'),
//    slimqoutes(text: '\twhen you don t create things, you become defined by your tastes rather than ability. your tastes only narrow & exclude people. so create.', author: 'Lucky stiff'),
//    slimqoutes(text: '\tPrograms must be written for people to read, and only incidentally for machines to execute.', author: 'Harold Abelson'),
//    slimqoutes(text: '\tAlways code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.',author: 'Rick Cook'),
//    slimqoutes(text: '\tTalk is cheap Show me the code', author: 'Linus Torvalds'),
//
//  ];
//  Widget tempQoute(quote){
//    return Card(
//      margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
//      child: Padding(
//        padding: const EdgeInsets.all(12.0),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Text(
//              quote.text,
//                  style: TextStyle(
//                    fontSize: 18.0,
//                    color: Colors.grey[600],
//                  ),
//            ),
//            SizedBox(height: 6.0),
//            Text(
//              quote.author,
//              textAlign: TextAlign.right,
//              style: TextStyle(
//                fontSize: 14.0,
//                color: Colors.grey[950],
//              ),
//            ),
//          ],
//        ),
//      ),
//    );
//  }
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      resizeToAvoidBottomInset: false,
//      backgroundColor: Colors.grey[200],
//      appBar: AppBar(
//        title: Text("SlimGuy Quotes"),
//        centerTitle: true,
//        backgroundColor: Colors.redAccent,
//      ),
//      body: Column(
//       // children: slimquote.map((quote)=>Text('${quote.text}-${quote.author}')).toList(),
//        children: slimquote.map((quote)=>tempQoute(quote)).toList(),
//
////        children: slimquotes.map((quote){
////          return Text(quote);
////        }).toList(),
//      ),
//    );
//  }
//}
