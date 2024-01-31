import 'package:flutter/material.dart';

import 'Covit-19Safety.dart';
import 'RideInsuranceSafety.dart';
import 'RideSafety.dart';


class SafetyAndSecurity extends StatefulWidget {
  const SafetyAndSecurity({super.key});

  @override
  State<SafetyAndSecurity> createState() => _SafetyAndSecurityState();
}

class _SafetyAndSecurityState extends State<SafetyAndSecurity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("FAQs"),
        actions: [Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.airplane_ticket),
              Text("Tickets")
            ],
          ),
        )],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 180.0),
              child: Text("Safety & Security",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Covid19Safety())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Covid-19 Safety",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>RideInsurance())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ride Insurance",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>RideSafety())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Ride Safety",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
