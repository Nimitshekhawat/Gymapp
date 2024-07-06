
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/Historypage.dart';
import 'package:gymapp/Widgets/Circularbutton.dart';


class exercise_workout extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>exerciseState();

}
class exerciseState extends State<exercise_workout> {
  String inputText = '';
  String repsvalue = '0';
  String setsvalue = '0';
  String weightvalue = '0';
  Color default_color = Color(0xFFECECEC);




  int selectedvalue = 0;
  Color completetextcolor=Colors.black;
  late Color repstextcolor=Colors.black;
  late Color setstextcolor=Colors.black;
  late Color weighttextcolor=Colors.black;

   bool repspointer=false;
   bool setspointer=false;
   bool weightpointer=false;


  Map<int, Color> colorbtn = {
    0: Colors.white,
    1: Colors.white,
    2: Colors.white,

  };


  @override
  void initState() {
    super.initState();
    setState(() {
      colorbtn[0] = Colors.deepOrange;
      repspointer = true;
      repstextcolor=Colors.white;
      setstextcolor=Colors.black;
      weighttextcolor=Colors.black;

    });
  }

  void completebtn(){

    if(repsvalue != '0'  && setsvalue != '0' && weightvalue != '0'){
      btn_color[14]= Color(0xFFFF6600);
      completetextcolor=Colors.white;

    }


  }
  void btncolordeciding(){
    setState(() {
      if (repspointer == true) {
        repstextcolor = Colors.white;
        colorbtn[0] = Color(0xFFFF6600);
      } else {
        repstextcolor = Colors.black;
        colorbtn[0] = Colors.white;
      }
      if (setspointer == true) {
        setstextcolor = Colors.white;
        colorbtn[1] = Color(0xFFFF6600);
      } else {
        setstextcolor = Colors.black;
        colorbtn[1] = Colors.white;
      }

      if (weightpointer == true) {
        weighttextcolor = Colors.white;
        colorbtn[2] = Color(0xFFFF6600);
      } else {
        weighttextcolor = Colors.black;
        colorbtn[2] = Colors.white;
      }
    });
  }


    Map<dynamic, Color> btn_color = {
      1: Color(0xFFECECEC),
      2: Color(0xFFECECEC),
      3: Color(0xFFECECEC),
      4: Color(0xFFECECEC),
      5: Color(0xFFECECEC),
      6: Color(0xFFECECEC),
      7: Color(0xFFECECEC),
      8: Color(0xFFECECEC),
      9: Color(0xFFECECEC),
      0: Color(0xFFECECEC),
      11: Color(0xFFECECEC),
      12: Color(0xFFECECEC),
      13: Color(0xFFECECEC),
      14: Color(0xFFECECEC),
    };


    void updateInputText(String newText) {
      setState(() {
        if (inputText.isEmpty) {
          inputText = newText;
        } else {
          inputText = inputText + newText;
        }
      });
    }
    void reduInputText() {
      setState(() {
        if (inputText.isNotEmpty) {
          inputText = inputText.substring(0, inputText.length - 1);
        }
      });
    }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Exercise Workout',
          style: TextStyle(fontFamily: 'Koulen', fontSize: 24,),),
      ),

      body: Container(
        color: Colors.white,

        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 1),
                child: Card(
                  elevation: 0.7,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,

                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: colorbtn[0],
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: InkWell(
                                        onTap: () {
                                          repspointer = true;
                                          setspointer=false;
                                          weightpointer=false;
                                          btncolordeciding();
                                          if(repsvalue != '0'){
                                            inputText=repsvalue;
                                          }
                                        },
                                        child: Text('Reps', style: TextStyle(
                                            fontFamily: 'poppins',
                                            fontSize: 20,
                                            color: repstextcolor),))),
                              ),
                            ), Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: colorbtn[1],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(

                                  child: InkWell(
                                      onTap: () {
                                        setspointer = true;
                                        repspointer = false;
                                        weightpointer=false;
                                        btncolordeciding();
                                        if(setsvalue != '0'){
                                          inputText=setsvalue;
                                        }
                                      },

                                      child: Text('Sets', style: TextStyle(
                                          fontFamily: 'poppins',
                                          fontSize: 20,
                                          color: setstextcolor),))),
                            ),
                            Container(
                              width: 100,
                              height: 50,
                              decoration: BoxDecoration(
                                color: colorbtn[2],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(child: InkWell(
                                  onTap: () {
                                    weightpointer=true;
                                    repspointer = false;
                                    setspointer=false;
                                    btncolordeciding();
                                    if(weightvalue != '0'){
                                      inputText=weightvalue;
                                    }

                                  },

                                  child: Text('Weight', style: TextStyle(
                                      fontFamily: 'poppins',
                                      fontSize: 20,
                                      color: weighttextcolor),))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text('Enter', style: TextStyle(fontSize: 20,
                    fontFamily: 'Koulen',
                    color: Colors.black12),),
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
                height: 54,
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
                      Text(inputText, style: TextStyle(fontWeight: FontWeight
                          .bold, fontFamily: 'poppins', fontSize: 36),),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4, top: 3, bottom: 3),
                child: Container(
                  height: 17,
                  child: Row(
                    children: [
                      Text('Reps : ${repsvalue}', style: TextStyle(
                          fontFamily: 'poppins', fontSize: 12),),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Sets : ${setsvalue}', style: TextStyle(
                          fontFamily: 'poppins', fontSize: 12),),
                      SizedBox(
                        width: 20,
                      ),
                      Text('Weight : ${weightvalue}', style: TextStyle(
                          fontFamily: 'poppins', fontSize: 12),),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              )
              ,
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 406,

                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,

                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 253,
                        color: Colors.white,
                        width: double.infinity,
                        child: GridView.count(crossAxisCount: 3,

                          children: [
                            InkWell(
                              onTap: () {
                                updateInputText('1');
                                print('1 is pressed');


                                setState(() {
                                  btn_color[1] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[1] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '1',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[1],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('2');
                                print('2 is pressed');


                                setState(() {
                                  btn_color[2] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[2] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '2',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[2],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('3');
                                print('3 is pressed');


                                setState(() {
                                  btn_color[3] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[3] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '3',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[3],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('4');
                                print('4 is pressed');


                                setState(() {
                                  btn_color[4] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[4] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '4',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[4],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('5');
                                print('5 is pressed');


                                setState(() {
                                  btn_color[5] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[5] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '5',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[5],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('6');
                                print('6 is pressed');


                                setState(() {
                                  btn_color[6] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 6), () {
                                    setState(() {
                                      btn_color[6] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '6',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[6],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('7');
                                print('7 is pressed');


                                setState(() {
                                  btn_color[7] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[7] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '7',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[7],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('8');
                                print('8 is pressed');


                                setState(() {
                                  btn_color[8] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[8] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '8',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                                color: btn_color[8],

                              ),

                            ),
                            InkWell(
                              onTap: () {
                                updateInputText('9');
                                print('9 is pressed');


                                setState(() {
                                  btn_color[9] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[9] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(btnname: '9',
                                textStyle: TextStyle(fontFamily: 'poppins',
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
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
                              onTap: () {
                                updateInputText('0');
                                print('0 is pressed');


                                setState(() {
                                  btn_color[0] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[0] = Color(0xFFECECEC);
                                    });
                                  });
                                });
                              },
                              child: Circularbtn(
                                btnname: '0',
                                textStyle: TextStyle(
                                    fontFamily: 'poppins',
                                    fontSize: 30, fontWeight:
                                FontWeight.bold),
                                color: btn_color[0],
                                height: 76,
                                width: 76,),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: InkWell(
                                onTap: () {
                                  updateInputText('.');
                                  print('. is pressed');


                                  setState(() {
                                    btn_color[11] = Color(0xFFFF6600);

                                    Timer(Duration(milliseconds: 9), () {
                                      setState(() {
                                        btn_color[11] = Color(0xFFECECEC);
                                      });
                                    });
                                  });
                                },
                                child: Circularbtn(btnname: '.',
                                  textStyle: TextStyle(fontFamily: 'poppins',
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                  color: btn_color[11],
                                  height: 76,
                                  width: 76,)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 2),
                            child: InkWell(
                              onTap: () {
                                print('Enter  is pressed');
                                if(repspointer==true){
                                  repsvalue=inputText;
                                  inputText='';
                                }
                                if(setspointer==true){
                                  setsvalue=inputText;
                                  inputText='';

                                }
                                if(weightpointer==true){
                                  weightvalue=inputText;
                                  inputText='';

                                }
                                completebtn();



                                setState(() {
                                  btn_color[12] = Color(0xFFFF6600);

                                  Timer(Duration(milliseconds: 9), () {
                                    setState(() {
                                      btn_color[12] = Color(0xFFECECEC);
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
                                child: Center(child:

                                Text('Enter',
                                  style: TextStyle(fontFamily: 'poppins',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),)),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: Container(
                              height: 60,
                              width: 110,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: btn_color[13],
                              ),
                              child: InkWell(
                                  onTap: () {
                                    reduInputText();
                                    print('Redu is pressed');

                                    setState(() {
                                      btn_color[13] = Color(0xFFFF6600);

                                      Timer(Duration(milliseconds: 9), () {
                                        setState(() {
                                          btn_color[13] = Color(0xFFECECEC);
                                        });
                                      });
                                    });
                                  },
                                  child: Center(child: Text('REDU',
                                    style: TextStyle(fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),))),
                            ),

                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 13),
                            child: Container(
                              height: 60,
                              width: 207,


                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: btn_color[14],
                              ),
                              child: InkWell(
                                  onTap: () {
                                    print('Complete is pressed');

                                      setState(() {
                                        btn_color[14]= Color(0xFFD9D9D9);
                                        completetextcolor=Colors.black;
                                        repsvalue='0';
                                        setsvalue='0';
                                        weightvalue='0';
                                        inputText='';
                                        repspointer=true;
                                        weightpointer=false;
                                        setspointer=false;
                                        btncolordeciding();

                                      });



                                  },
                                  child: Center(child: Text('COMPLETE',
                                    style: TextStyle(fontFamily: 'poppins',
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,color: completetextcolor),))),
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
        style: TextStyle(fontFamily: 'Koulen', fontSize: 14),
        child: Container(
          height: 90,
          color: Colors.red,
          child: BottomNavigationBar(
            backgroundColor: Color(0xFFECECEC),


            items: [
              BottomNavigationBarItem(
                  icon: Image.asset('assets/images/BottomIcons/homeicon.png'),
                  label: 'Escape'),
              BottomNavigationBarItem(icon: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Historypage()));
                  },
                  child: Image.asset(
                      'assets/images/BottomIcons/Historyicon.png')),
                  label: 'History'),
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

