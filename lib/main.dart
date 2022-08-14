import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int P=1;
  int R=1;
  int O=1;
  int B=1;
  void call(){
    setState(() {
      P=Random().nextInt(6)+1;
      R=Random().nextInt(6)+1;
      O=Random().nextInt(6)+1;
      B=Random().nextInt(6)+1;
    });

  }
  @override
  Widget build(BuildContext context) {

    return  Center(
      child: Column(
        children: [
          Expanded(
            child: Row(
              children:<Widget>[

                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      call();

                    },
                    child: Image(
                      image: AssetImage('images/dice$P.png'),
                    ),
                  ),

                ),
                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      call();
                    },
                    child: Image(
                      image: AssetImage('images/dice$R.png'),
                    ),
                  ),

                ),
              ],
            ),
          ),
  SizedBox(height:30),
          Expanded(
            child: Row(
              children:<Widget>[

                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      call();

                    },
                    child: Image(
                      image: AssetImage('images/dice$O.png'),
                    ),
                  ),

                ),

                Expanded(
                  child: FlatButton(
                    onPressed: (){
                      call();
                    },
                    child: Image(
                      image: AssetImage('images/dice$B.png'),
                    ),
                  ),

                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}