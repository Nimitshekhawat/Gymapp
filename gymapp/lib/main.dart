import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          headlineMedium: TextStyle(color: Colors.black, fontFamily: 'Koulen', fontSize: 20),
          headlineSmall: TextStyle(color: Colors.black, fontFamily: 'poppins'),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController uniidController = TextEditingController();
  TextEditingController phnnoController = TextEditingController();
  bool canGetOtp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gym app'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 2,
                ),
                Center(
                  child: Container(
                    child: Image.asset('assets/images/gymlogo.png'),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text('Unique identity number', style: Theme.of(context).textTheme.headlineMedium),
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  controller: uniidController,
                  keyboardType: TextInputType.number,

                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  decoration: InputDecoration(
                    hintText: 'Ex:- nimshekha04' ,
                    hintStyle: TextStyle(fontStyle: FontStyle.italic, fontFamily: 'poppins'),
                    filled: true,
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
                  onChanged: (value) {
                    setState(() {
                      canGetOtp = (uniidController.text.isNotEmpty && phnnoController.text.isNotEmpty);
                    });
                  },
                ),
                SizedBox(
                  height:40,
                ),
                Container(
                  child: Text('Phone number', style: Theme.of(context).textTheme.headlineMedium),
                ),
                SizedBox(
                  height: 4,
                ),
                TextField(
                  style: TextStyle(
                    fontFamily: 'Koulen',
                    fontSize: 20
                  ),
                  controller: phnnoController,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ],
                  decoration: InputDecoration(

                    filled: true,
                    fillColor: Color(0xFFEFEFEF),
                    border: InputBorder.none,
                    prefixText: '+91 ',prefixStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 20),
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
                  onChanged: (value) {
                    setState(() {
                      canGetOtp = (uniidController.text.isNotEmpty && phnnoController.text.isNotEmpty);
                    });
                  },
                ),
                SizedBox(
                  height: 150,
                ),
                InkWell(
                  onTap: canGetOtp
                      ? () {
                    String uniid = uniidController.text;
                    String phoneNumber = phnnoController.text;
                    print('Uni ID: $uniid');
                    print('Phone Number: $phoneNumber');
                    // Add further logic here (e.g., API call, validation)
                  }
                      : null,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: canGetOtp ? Color(0xFFFF6600) : Colors.grey, // Change button color based on validation
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Get otp',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 25),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
