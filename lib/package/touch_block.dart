import 'package:flutter/material.dart';


class TouchBlcok extends StatefulWidget {
  final Widget child;
  TouchBlcok({
    Key key,
    this.child
  });

  @override
  TouchBlockState createState() => TouchBlockState();
}

class TouchBlockState extends State<TouchBlcok> {

  @override
  Widget build(BuildContext context){
    return Material(
      child: Ink(
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: InkWell(
          onTap: (){
            print('tap');
          },
          child: Container(
            child: widget.child,
          ),
        ),
      ),
    );
  }
}