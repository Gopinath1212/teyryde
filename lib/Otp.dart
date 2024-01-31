import 'package:flutter/material.dart';


import 'package:sms_autofill/sms_autofill.dart';

import 'DrawerMenu.dart';
import 'onborting2.dart';





class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  get otpCode => null;

  @override
  void initState() {
    _listenOtp();
    super.initState();
  }

  void _listenOtp() async {
    await SmsAutoFill().listenForCode();
    print("OTP Listen is called");
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
            body: Column(
              children: [
                SizedBox(height: 100,),
                Text("Phone Number Verification",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                SizedBox(height: 5,),
                Text("Enter the code sent to +0987654321",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: PinFieldAutoFill(
                        currentCode: otpCode,
                        decoration: BoxLooseDecoration(
                            radius: Radius.circular(12),
                            strokeColorBuilder: FixedColorBuilder(
                                Color(0xFF8C4A52))),
                        codeLength: 6,
                        onCodeChanged: (code) {
                          print("OnCodeChanged : $code");
                          // otpCode = code.toString();
                        },
                        onCodeSubmitted: (val) {
                          print("OnCodeSubmitted : $val");
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Didn't receive the Code?"),
                    Text("RESEND",style: TextStyle(fontSize: 15,color: Colors.blue),)
                  ],
                ),
                SizedBox(height: 100,),
                Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlue],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder: (context)=>HomeScreen())
                      );
                    },
                    icon: Icon(
                      Icons.verified_user,
                      color: Colors.white,
                    ),
                    label: Text(
                      "VERIFY",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
    );
  }
}
