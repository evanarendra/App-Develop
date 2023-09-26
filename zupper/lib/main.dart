import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var questionIndex= 0;

  void selectAnswer() {
    questionIndex = questionIndex+1;
    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
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
              Text(questions[questionIndex]),
              ElevatedButton(
                  child: Text('Answer 1'),
                  onPressed: () => print('Answer 1 Selected')),
              ElevatedButton(
                  child: Text('Answer 2'),
                  onPressed: () {
                    //-------
                    print('Answer 2 Selected');
                  }),
              ElevatedButton(child: Text('Answer 3'), onPressed: selectAnswer),
              ElevatedButton(onPressed: selectAnswer, child: Text('Answer 4')),
            ],
          )),
    );
  }
}
