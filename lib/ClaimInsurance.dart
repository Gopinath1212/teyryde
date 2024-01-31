import 'package:flutter/material.dart';

class ClaimInsurance extends StatefulWidget {
  const ClaimInsurance({super.key});

  @override
  State<ClaimInsurance> createState() => _ClaimInsuranceState();
}

class _ClaimInsuranceState extends State<ClaimInsurance> {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 240,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.help),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("I wand to claim Insurance for a ride",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("We care about your safety and saftey and strive\n"
                            "to enhance your experience with TEYRYDE.Our\n"
                            "Captains are committed to offering you a\n"
                            "comfortable and safe ride.In case you were\n"
                            "injured or involved in an accident during a\n"
                            "TEYRYDE ride,you can claim Insurance by\n"
                            "visiting the Insurance section of the app",textAlign: TextAlign.start,),
                      ),
                    ],
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
