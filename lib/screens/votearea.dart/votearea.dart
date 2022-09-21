import 'package:flutter/material.dart';

class VoteArea extends StatefulWidget {
  const VoteArea({Key? key}) : super(key: key);

  @override
  State<VoteArea> createState() => _VoteAreaState();
}

class _VoteAreaState extends State<VoteArea> {
   int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
      
    });
  }

  void _decrementCounter() {
    setState(() {
      
      
      _counter=_counter-1;
    });
  }



  @override
  Widget build(BuildContext context) {
    return 
       Column(
children: [
  SizedBox(height: 10,),
 IconButton(onPressed: _incrementCounter, icon: Icon(Icons.arrow_circle_up_rounded,),),
  SizedBox(height: 20,),
  Text("$_counter"),
  SizedBox(height: 20,),
  IconButton(onPressed: _decrementCounter, icon: Icon(Icons.arrow_circle_down_rounded),),
  
  Text("votes"),
  
],
                     
    );
  }
}