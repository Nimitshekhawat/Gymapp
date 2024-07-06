

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Orangebtn extends StatelessWidget{
   final String btnname;
  final Color? color;
  final Icon? icon;
  final TextStyle? textStyle;
  final VoidCallback? callback;


  Orangebtn({
     required  this.btnname,
      this.color ,
      this.icon,
      this.textStyle,
      this.callback
  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: (){
        callback!();
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Container(
          height: 56,
          width: double.infinity,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
          ),
          child: icon!=null ? Row(
            children: [
              icon!,
              Center(child: Text(btnname , style: textStyle,))
            ],
          ) : Center(child: Text(btnname ,style: textStyle)),
        ),
      ),
    );

  }
  //   return ElevatedButton(
  //       onPressed: (){
  //         callback!();
  //       },
  //       child: icon!=null ? Row(
  //         children: [
  //           icon!,
  //           Text(btnname , style: textStyle,)
  //
  //         ],
  //       )
  //           : Text(btnname, style: textStyle,)
  //   );
  // }



}