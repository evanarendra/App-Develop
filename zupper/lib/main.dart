import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void selectAnswer() {
    print('Answer Select');
  }

  Widget build(BuildContext context) {
    var question = [
      'What is your favourite Game?',
      'What is your favourite movies?'
    ];
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.cyanAccent[50],
          appBar: AppBar(
            title: Text('Zupper'),
            backgroundColor: Colors.lightBlue,
          ),
          body: Column(
            children: [
              Text(question.elementAt(0)),
              ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Answer 1 Selected')),
              ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: () {
                    //-------
                    print('Answer 2 Selected');
                  }),
              ElevatedButton(child: Text('Answer 1'), onPressed: selectAnswer),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 1')),
            ],
          )),
    );
  }
}
