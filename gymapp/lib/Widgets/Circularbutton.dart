


import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class Circularbtn extends StatelessWidget{
  final String btnname;
  final Color? color;
  final Icon? icon;
  final TextStyle? textStyle;

  final double? height;
  final double? width;


  Circularbtn({
    required  this.btnname,
    this.color ,
    this.icon,
    this.textStyle,

    this.height =60,
    this.width =60,

  });

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      width: width,


      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle
      ),
      child:  Center(child: Text(btnname , style: textStyle,)),
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
