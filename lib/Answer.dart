import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String anserName;

  Answer(this.selectHandler, this.anserName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(anserName),
        onPressed:() => selectHandler(),
      ),
    );
  }
}
