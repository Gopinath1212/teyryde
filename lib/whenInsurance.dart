import 'package:flutter/material.dart';

class WhenInsurance extends StatefulWidget {
  const WhenInsurance({super.key});

  @override
  State<WhenInsurance> createState() => _WhenInsuranceState();
}

class _WhenInsuranceState extends State<WhenInsurance> {
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
                  height: 200,
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
                              child: Text("When does then Insurance kick in?",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ),

                          ],
                        ),
                      ),
                      Text("Your Insurance cover begins the second you\n"
                          "are seated on a TEYRDE ride and ends when\n"
                          "you reach your destination. The ride\n"
                          "duration can be up to a maximum period of\n"
                          "24 hours",textAlign: TextAlign.start,),
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
