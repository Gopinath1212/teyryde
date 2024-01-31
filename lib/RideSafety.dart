import 'package:flutter/material.dart';
import 'package:teyrydee/FemaleRideSafety.dart';

class RideSafety extends StatefulWidget {
  const RideSafety({super.key});

  @override
  State<RideSafety> createState() => _RideSafetyState();
}

class _RideSafetyState extends State<RideSafety> {
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
              child: Text("Ride Safety",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>FemaleRideSafety())
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("What are the features available for female \n"
                        "rider safety rider safety?",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("How does SOS option work?",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
