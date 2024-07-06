import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gymapp/home1.dart';
import 'package:gymapp/richtext.dart';

class Createprofile extends StatefulWidget {

  final dynamic memberidfromlogin;
  Createprofile(this.memberidfromlogin);

  @override
  _profile createState() => _profile();
}

class _profile extends State<Createprofile> {

  TextEditingController firstname = TextEditingController();
  TextEditingController lastname = TextEditingController();
  TextEditingController mobilenumber = TextEditingController();
  TextEditingController emailadd = TextEditingController();
  TextEditingController dateofjoin = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController emergencycontact = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  late final String? prefixt;
  var arrNames = [
    'First Name', 'Last Name', 'Mobile Number', 'Email Address',
    'Date of Joining', 'Date of Birth', 'Gender', 'Emergency Contact',
    'Height', 'Weight'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Create your profile',
          style: TextStyle(fontFamily: 'Koulen', fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  child: Stack(
                    children: [
                      Center(child: Image.asset('assets/images/Circleprofile.png')),
                      Positioned(
                        bottom: 8,
                        right: 8,
                        child: InkWell(
                          onTap: () {
                            print('Change the profile picture');
                          },
                          child: Image.asset('assets/images/plusbtn.png'),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 32.5,
                          width: 35.83,
                          child: Image.asset('assets/images/camera.png'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50),
              buildTextField(arrNames[0], firstname, TextInputType.text),
              SizedBox(height: 20),
              buildTextField(arrNames[1], lastname, TextInputType.text),
              SizedBox(height: 20),
              buildTextField(arrNames[2], mobilenumber, TextInputType.phone),
              SizedBox(height: 20),
              buildTextField(arrNames[3], emailadd, TextInputType.emailAddress),
              SizedBox(height: 20),
              buildTextField(arrNames[4], dateofjoin, TextInputType.datetime),
              SizedBox(height: 20),
              buildTextField(arrNames[5], dateofbirth, TextInputType.datetime),
              SizedBox(height: 20),
              buildTextField(arrNames[6], gender, TextInputType.text),
              SizedBox(height: 20),
              buildTextField(arrNames[7], emergencycontact, TextInputType.phone),
              SizedBox(height: 20),
              buildTextField(arrNames[8], height, TextInputType.number),
              SizedBox(height: 20),
              buildTextField(arrNames[9], weight, TextInputType.number),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(41, 41, 41, 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 18),
                  child: Text('Member Id ${widget.memberidfromlogin}'
                    ,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 16, color: Color(0xFFCCCCCC)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 52,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color.fromRGBO(41, 41, 41, 0.5),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 18),
                  child: Text(
                    'Monthly Subscription',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 16, color: Color(0xFFCCCCCC)),
                  ),
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () {
                  String firstName = firstname.text;
                  String lastName = lastname.text;
                  String phnNumber = mobilenumber.text;
                  String emailAddress = emailadd.text;
                  String doj = dateofjoin.text;
                  String dob = dateofbirth.text;
                  String gen = gender.text;
                  String hgt = height.text;
                  String wt = weight.text;

                  if (firstName.isNotEmpty &&
                      lastName.isNotEmpty
                      // phnNumber.isNotEmpty &&
                      // emailAddress.isNotEmpty &&
                      // doj.isNotEmpty &&
                      // dob.isNotEmpty &&
                      // gen.isNotEmpty &&
                      // hgt.isNotEmpty &&
                      // wt.isNotEmpty)
                     ){
                    // All fields are filled, navigate to the next page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => home1() ),
                    );
                  } else {
                    // Handle case where not all fields are filled
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Incomplete Form'),
                        content: Text('Please fill in all fields to continue.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Container(
                  width: double.infinity,
                  height: 52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xFFFF6600),
                  ),
                  child: Center(
                    child: Text(
                      'Continue',
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String labelText, TextEditingController controller, TextInputType inputType ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 16),
        ),
        SizedBox(height: 4),
        TextField(
          controller: controller,
          keyboardType: inputType,
          inputFormatters: [
            if (inputType == TextInputType.number || inputType == TextInputType.phone)
              FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
            // Adjust the max length as needed

          ],
          decoration: InputDecoration(


            hintText: 'Enter $labelText',

            hintStyle: TextStyle(fontStyle: FontStyle.italic, fontFamily: 'poppins'),
            filled: true,
            // prefixText: '+91 ',
            fillColor: Color(0xFFEFEFEF),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                width: 4,
                color: Color(0xFFFF6600),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(
                width: 4,
                color: Color(0xFFEFEFEF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
