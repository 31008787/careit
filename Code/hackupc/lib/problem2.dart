import 'package:flutter/material.dart';
import 'problem3.dart';
import 'main.dart';

class problemPage2 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: MyAppBar(goBack: true,),
      ),
      body: new problem2( question: " do you have fever? "),
    );
  }
}

class problem2 extends StatelessWidget {
  problem2({this.question});
  final String question;

  @override
  Widget build(BuildContext context) {

    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        lbl (s: question),
        btn2(),
        new Divider(),

      ],
    );
  }
}
class lbl extends StatelessWidget {
  lbl  ({this.s});
  final String s;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(35),
      decoration: new BoxDecoration(
          color: Colors.transparent
      ),
      child: new Text(s, style: TextStyle(fontSize: 25.0),),
    );
  }
}

class btn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            new Container(

              child: new IconButton(icon: Icon(Icons.close),  onPressed: ()=> {
                 Navigator.push(context, MaterialPageRoute (builder: (context) =>new problemPage3()))}),
              decoration: new BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: new BorderRadius.horizontal(right: Radius.circular(50))
              ), height: 100,
              width: 50,
            ),
/*------------------------------------------------------------------*/

            GestureDetector (
              child: new Container(
                child: new IconButton(icon: Icon(Icons.check),  onPressed: null),
                decoration: new BoxDecoration(
                    color: Colors.green,
                    borderRadius: new BorderRadius.horizontal(left: Radius.circular(50))
                ), height: 100,
                width: 50,
              ) ,
              onHorizontalDragEnd : ( DrageStartDetails )=> {
                print('yes'+
                    DrageStartDetails.toString())},
            )
          ],
        )
    );
  }

}