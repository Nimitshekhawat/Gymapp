
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/Historypage.dart';
import 'package:gymapp/Widgets/Circularbutton.dart';
import 'package:gymapp/Widgets/profilepage.dart';
import 'package:gymapp/exercise_workout.dart';


class home1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>homState();

}
class homState extends State<home1>{
  String inputText = '';
  Color default_color= Color(0xFFECECEC) ;
  int selectedvalue=0;


  Map<dynamic , Color > btn_color = {
    1 : Color(0xFFECECEC),
    2: Color(0xFFECECEC),
    3: Color(0xFFECECEC),
    4: Color(0xFFECECEC),
    5: Color(0xFFECECEC),
    6: Color(0xFFECECEC),
    7: Color(0xFFECECEC),
    8: Color(0xFFECECEC),
    9: Color(0xFFECECEC),
    0:Color(0xFFECECEC),
    11:Color(0xFFECECEC),
    12:Color(0xFFECECEC),
    13:Color(0xFFECECEC),
    14:Color(0xFFECECEC),
  };

  void updateInputText(String newText) {
    setState(() {
      if(inputText.isEmpty){
        inputText=newText;


      }else{
        inputText = inputText+newText;

      }

    });
  }
  void reduInputText(){
    setState(() {
      if (inputText.isNotEmpty) {
        inputText= inputText.substring(0, inputText.length - 1);


      }
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text('Home',style: TextStyle(fontFamily: 'Koulen',fontSize: 24,),),
        ),
        title: Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Container(
                height:80,
                width: 90,

                child: Image.asset('assets/images/gymlogo.png')),
          ],
        ),
        actions: [
          Container(

              child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> profilepage()));

                  },
                  child: Image.asset('assets/images/john.png'))),
        ],
      ),
      body:Container(
        color: Colors.white,

        child: Padding(
          padding: const EdgeInsets.only(left: 25,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 26,

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Enter',style: TextStyle(fontSize: 20,fontFamily: 'Koulen',color: Colors.black12),),
              ),



              // TextField(
              //
              //   style: TextStyle(
              //     height: 2.5
              //   ),
              //
              //
              //   decoration: InputDecoration(
              //
              //
              //     filled: true,
              //     fillColor: Color(0xFFEFEFEF),
              //     border: InputBorder.none,
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: BorderSide(
              //         width: 4,
              //         color: Color(0xFFEFEFEF),
              //       ),
              //     ),
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(20),
              //       borderSide: BorderSide(
              //         width: 4,
              //         color: Color(0xFFEFEFEF),
              //       ),
              //     ),
              //   ),
              //
              // ),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xFFECECEC)
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Text(inputText,style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'poppins',fontSize: 36),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
              ,
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 450,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color:Colors.white,

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 265,
                        width: double.infinity,
                        child: GridView.count(crossAxisCount: 3,

                          children: [
                            InkWell(
                              onTap: (){
                                updateInputText('1');
                                print('1 is pressed');


                                setState(() {

                                  btn_color[1]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[1]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                         },
                              child: Circularbtn(btnname: '1',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                               color: btn_color[1],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('2');
                                print('2 is pressed');


                                setState(() {

                                  btn_color[2]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[2]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '2',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[2],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('3');
                                print('3 is pressed');


                                setState(() {

                                  btn_color[3]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[3]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '3',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[3],

                              ),

                            ),
                             InkWell(
                              onTap: (){
                                updateInputText('4');
                                print('4 is pressed');


                                setState(() {

                                  btn_color[4]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[4]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '4',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[4],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('5');
                                print('5 is pressed');


                                setState(() {

                                  btn_color[5]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[5]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '5',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[5],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('6');
                                print('6 is pressed');


                                setState(() {

                                  btn_color[6]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 6), (){
                                    setState(() {

                                      btn_color[6]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '6',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[6],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('7');
                                print('7 is pressed');


                                setState(() {

                                  btn_color[7]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[7]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '7',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[7],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('8');
                                print('8 is pressed');


                                setState(() {

                                  btn_color[8]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[8]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '8',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[8],

                              ),

                            ),
                            InkWell(
                              onTap: (){
                                updateInputText('9');
                                print('9 is pressed');


                                setState(() {

                                  btn_color[9]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[9]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(btnname: '9',
                                textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),
                                color: btn_color[9],

                              ),

                            ),



                        ],
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 55,

                        ),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 37),
                            child:
                            InkWell(
                              onTap: (){
                                updateInputText('0');
                                print('0 is pressed');


                                setState(() {

                                  btn_color[0]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[0]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Circularbtn(
                                btnname: '0',
                                textStyle: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 30,fontWeight:
                                FontWeight.bold),
                                color: btn_color[0],
                                height: 83,width: 83,),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: InkWell(
                                onTap: (){
                                  updateInputText('.');
                                  print('. is pressed');


                                  setState(() {

                                    btn_color[11]=Color(0xFFFF6600);

                                    Timer(Duration(milliseconds: 9), (){
                                      setState(() {

                                        btn_color[11]=Color(0xFFECECEC);

                                      });

                                    });
                                  });
                                },
                                child: Circularbtn(btnname: '.',textStyle: TextStyle(fontFamily: 'poppins',fontSize: 30,fontWeight: FontWeight.bold),color: btn_color[11],height: 83,width: 83,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: InkWell(
                              onTap: (){

                                print('Enter  is pressed');

                                if(inputText =='12'){
                                  Navigator.push(context,
                                  MaterialPageRoute(
                                  builder: (context)=> exercise_workout()));

                                }
                                setState(() {

                                  btn_color[12]=Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), (){
                                    setState(() {

                                      btn_color[12]=Color(0xFFECECEC);

                                    });

                                  });
                                });
                              },
                              child: Container(
                                height: 60,
                                width: 110,


                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: btn_color[12],
                                ),
                                child: Center(child: Text('Enter' , style: TextStyle(fontFamily: 'poppins',fontSize: 20,fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height:12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(right: 5 ),
                            child: Container(
                              height: 60,
                              width: 110,


                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: btn_color[13],
                              ),
                              child: InkWell(
                                  onTap: (){
                                    reduInputText();
                                    print('Redu is pressed');

                                      setState(() {

                                      btn_color[13]=Color(0xFFFF6600);

                                      Timer(Duration(milliseconds: 9), (){
                                        setState(() {

                                          btn_color[13]=Color(0xFFECECEC);

                                        });

                                      });
                                    });
                                  },
                                  child: Center(child: Text('REDU' , style: TextStyle(fontFamily: 'poppins',fontSize: 20,fontWeight: FontWeight.bold),))),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 29),
                            child: Container(
                              height: 60,
                              width: 207,


                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: btn_color[14],
                              ),
                              child: InkWell(
                                  onTap: (){

                                    print('Complete is pressed');
                                    setState(() {

                                    });

                                    setState(() {

                                      btn_color[14]=Color(0xFFFF6600);

                                      Timer(Duration(milliseconds: 9), (){
                                        setState(() {

                                          btn_color[14]=Color(0xFFECECEC);

                                        });

                                      });
                                    });
                                  },
                                  child: Center(child: Text('COMPLETE' , style: TextStyle(fontFamily: 'poppins',fontSize: 20,fontWeight: FontWeight.bold),))),
                            ),
                            )
                        ],
                      )
                    ],
                  ),




                ),
              )
            ],
          ),
        ),
      ),
      
      //Bottom navigation bar 
      
      bottomNavigationBar: DefaultTextStyle(
        style: TextStyle(fontFamily: 'Koulen',fontSize: 14),
        child: Container(
          height: 90,
          color: Colors.red,
          child: BottomNavigationBar(
            backgroundColor: Color(0xFFECECEC),



            items: [
            BottomNavigationBarItem(icon: Image.asset('assets/images/BottomIcons/homeicon.png' ),label: 'Escape' ) ,
            BottomNavigationBarItem(icon: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=> Historypage()));
                },child: Image.asset('assets/images/BottomIcons/Historyicon.png' )),label: 'History' ),
            ],
            currentIndex: selectedvalue,
            // onTap: (setvalue){
            //   setState(() {
            //     selectedvalue=setvalue;
            //   });
            // },
          ),
        ),
      ),
    );
  }

}