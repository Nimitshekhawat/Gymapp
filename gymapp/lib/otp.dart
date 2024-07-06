import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:gymapp/createprofile.dart';
import 'package:gymapp/main.dart';
import 'package:gymapp/richtext.dart';




class Otppage extends StatefulWidget {

   var memberid;
    Otppage( this.memberid);
  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otppage> {


  TextEditingController uniidController = TextEditingController();
  TextEditingController phnnoController = TextEditingController();
  bool canGetOtp = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Verificaiton',style: TextStyle(fontFamily: 'Koulen',fontSize: 24),),
        leading: InkWell(
              onTap: (){
                Navigator.pop(context,MaterialPageRoute(builder: (context)=> MyHomePage()));
              },
            child: Image.asset('assets/images/backarrow.png')),

      ),
      body:
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Center(
              child: Column(

                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height:274 ,
                    width: 333,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Enter  OTP',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 18, fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 8,

                          ),
                          Text('We sent a verification code on ',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16),),
                          Text('xxxxxxx21 Enter the code below boxes',style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 16),),

                          SizedBox(
                            height: 20,
                          ),
                          OtpTextField(
                            numberOfFields: 4,
                            borderColor: Color(0xFF512DA8),
                            showCursor: true,
                            autoFocus: false,
                            textStyle: TextStyle(fontSize: 30),
                            //set to true to show as box or false to show as dash
                            showFieldAsBox: false,
                            enabledBorderColor: Colors.black,
                            // keyboardType: TextInputType.number ,
                            //runs when a code is typed in
                            // onCodeChanged: (String code) {
                            //   //handle validation or checks here
                            // },
                            //runs when every textfield is filled
                            onSubmit: (String verificationCode){
                              if(verificationCode =='1234'){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Createprofile(widget.memberid) ));
                              }
                              else{
                                verificationCode='';
                                showDialog(
                                    context: context,
                                    builder: (context){
                                      return AlertDialog(
                                        title: Text(" Invalid Otp",style: TextStyle(color: Colors.red),),
                                        content: Text('Try Again'),
                                      );
                                    }
                                );
                              }
                            }, // end onSubmit
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                              child: Text('Don’t Receive code? ',style: TextStyle(fontFamily: 'Roboto',fontSize:14 ),
                              )),
                          Center(child: InkWell(
                              onTap: (){
                                print('Resend code');
                              },child: Text('Resend code',style: TextStyle(fontSize: 14,fontFamily: 'Roboto',color:Color(0xFFFF6600)),)))
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFEFEFEF),

                    ),
                  ),


                ],
              ),
            ),
          )
        )
    );
  }


}
