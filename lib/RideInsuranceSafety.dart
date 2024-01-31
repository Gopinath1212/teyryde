import 'package:flutter/material.dart';
import 'package:teyrydee/ClaimInsurance.dart';
import 'package:teyrydee/WhatTermsInsurance.dart';
import 'package:teyrydee/whenInsurance.dart';

class RideInsurance extends StatefulWidget {
  const RideInsurance({super.key});

  @override
  State<RideInsurance> createState() => _RideInsuranceState();
}

class _RideInsuranceState extends State<RideInsurance> {
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
              child: Text("Ride Insurance",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>WhatTermsInsurance())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("what are the Terms and Conditions valid on\n"
                        "my Insurance plan?",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
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
                    MaterialPageRoute(builder: (context)=>ClaimInsurance())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("I want to claim Insurance for a ride",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
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
                  MaterialPageRoute(builder: (context)=>WhenInsurance())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("When does the Insurance kick in?",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
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
