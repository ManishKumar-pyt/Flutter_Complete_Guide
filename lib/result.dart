import 'dart:ffi';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);

  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore <= 5) {
      resultText = 'Awesome and Innocent';
    } else if (resultScore <= 15) {
      resultText = 'Pretty Likeable';
    } else if (resultScore <= 25) {
      resultText = 'Strange';
    } else {
      resultText = 'Pretty bad';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, onPrimary: Colors.yellow),
            child: Text('Restart'),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
