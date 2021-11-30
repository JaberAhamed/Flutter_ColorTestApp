import 'package:flutter/material.dart';
class Result extends StatelessWidget {
   final int result;
   final VoidCallback resetQuze;
  Result(this.result,this.resetQuze);

  String get reslutPhares{
    var resultText ='You did it';
    if(result <= 10){
      resultText = 'U are awsome';
    }else if(result <= 20){
      resultText = 'U are bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text(reslutPhares,style:TextStyle(fontSize: 28),textAlign:TextAlign.center,)),
        FlatButton(onPressed: resetQuze, child: Text("Reset Quize",style: TextStyle(color: Colors.blue),),)
      ],
    );
  }
}
