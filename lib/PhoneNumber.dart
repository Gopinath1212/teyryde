import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import 'Otp.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({super.key});

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          Container(
            height: 40,
            width: 90,
            decoration: BoxDecoration(
                border: Border.all()
            ),
            child:  Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Icon(Icons.help),
                Center(child: Text("Help"))
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration:  BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/Motor.png"),
                    fit: BoxFit.cover
                  ),
                  borderRadius:BorderRadius.circular(50)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Enter your Phone Number to',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87, // Customize the text color
              ),
            ),
            Text(
              'TEYRYDE',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blue, // Customize the text color
              ),
            ),
            SizedBox(height: 10,),
             Padding(
              padding: EdgeInsets.all(8.0),
              child:IntlPhoneField(
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0), // Increased border radius
                  ),
                  filled: true,
                  fillColor: Colors.blue.withOpacity(0.1),
                  hintStyle: TextStyle(
                    color: Colors.grey[600], // Adjusted hint text color for better visibility
                  ),
                ),
                initialCountryCode: 'US',
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              )
            ),
            SizedBox(height: 10,),
            const Padding(
              padding: EdgeInsets.only(left: 120.0),
              child: Text("Change registered number",style: TextStyle(fontSize: 14,color: Colors.blue),textAlign: TextAlign.end,),
            ),
            SizedBox(height: 10,),
            Text(
              'Please read our Terms and Conditions\nbefore proceeding',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87, // Customize the text color
                fontWeight: FontWeight.normal, // You can adjust the font weight as needed
                letterSpacing: 0.5, // Adjust letter spacing for better readability
                height: 1.5, // Adjust line height for better spacing
              ),
            ),
            SizedBox(height: 70,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>OTP())
                );
              },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.5, // Adjust the border width for a cleaner look
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2), // Adjust the shadow offset for depth
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    'Proceed',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
