

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gymapp/home1.dart';
import 'package:gymapp/main.dart';



class Historypage extends StatefulWidget{
  @override
  State<Historypage> createState() => _HistorypageState();
}

class _HistorypageState extends State<Historypage> {
  int selectedvalue=1;
  var _pagesData=[home1()];
  var dates=['05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024',
    '05.06.2024'

  ];
  var miles=[
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
   '10',
  ];
  var speed=[
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
    '6',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Aerobic history',style: TextStyle(fontFamily: 'Koulen',fontSize: 24),),
        leading: InkWell(
            onTap: (){
              Navigator.pop(context,MaterialPageRoute(builder: (context)=> MyHomePage()));
            },
            child: Image.asset('assets/images/backarrow.png')),

      ),

      body: Padding(
        padding: const EdgeInsets.only(left: 30,right: 30),
        child: Column(
          children: [
            Container(
              height: 600,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 3,
                  color: Colors.black12
                )
              ),
              child: Column(
                children: [

                  Center(
                    child: Container(
                      height: 562,
                       child:Column(

                         children: [

                           Container(
                             height: 60,
                             decoration: BoxDecoration(
                               color:Color(0xFFF6F6F6),
                               borderRadius: BorderRadius.circular(20)
                             ),
                             child: Column(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Center(
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                     children: [

                                       Container(
                                         child:Text('Date',style: TextStyle(fontFamily: 'Koulen',fontSize: 18,fontWeight: FontWeight.bold),)
                                       ),
                                       Container(
                                         child:Text('miles',style: TextStyle(fontFamily: 'Koulen',fontSize: 18,fontWeight: FontWeight.bold),)
                                       ),
                                       Container(
                                         child:Text('speed',style: TextStyle(fontFamily: 'Koulen',fontSize: 18,fontWeight: FontWeight.bold),)
                                       ),

                                     ],

                                   ),
                                 ),
                                 SizedBox(
                                   height: 10,
                                 ),
                                 Divider(height: 5,
                                   thickness: 2,),

                               ],
                             ),

                           ),
                           Container(

                              height: 500,

                             child: ListView.separated(itemBuilder:(context , index){
                               return Container(
                                 height: 37,
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                   children: [
                                     Expanded(
                                       flex:1,
                                       child: Container(
                                           child:Center(child: Text(dates[index],style: TextStyle(fontFamily: 'poppins',fontSize: 16,),))
                                       ),
                                     ),
                                     Expanded(
                                       flex:1,
                                       child: Container(
                                           child:Center(child: Text(miles[index],style: TextStyle(fontFamily: 'poppins',fontSize: 16),))
                                       ),
                                     ),
                                     Expanded(
                                       flex: 1,
                                       child: Container(
                                           child:Center(child: Text(speed[index],style: TextStyle(fontFamily: 'poppins',fontSize: 16),))
                                       ),
                                     )

                                   ],
                                 ),
                               );
                             }, separatorBuilder: (context,index){
                               return Divider(height: 10,
                                 thickness: 2,);
                             },
                                 itemCount: dates.length),
                           )



                         ],
                       )

                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),

      bottomNavigationBar: DefaultTextStyle(
        style: TextStyle(fontFamily: 'Koulen',fontSize: 14),
        child: Container(
          height: 90,
          color: Colors.red,
          child: BottomNavigationBar(
            backgroundColor: Color(0xFFECECEC),



            items: [
              BottomNavigationBarItem(icon: InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> home1()));
                  },child: Image.asset('assets/images/BottomIcons/homeicon.png' )) , label: 'Escape') ,
              BottomNavigationBarItem(icon: Image.asset('assets/images/BottomIcons/cycle_aerobic.png' ),label: 'Today Aerobic'),
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