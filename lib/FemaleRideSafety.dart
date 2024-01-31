import 'package:flutter/material.dart';

class FemaleRideSafety extends StatefulWidget {
  const FemaleRideSafety({super.key});

  @override
  State<FemaleRideSafety> createState() => _FemaleRideSafetyState();
}

class _FemaleRideSafetyState extends State<FemaleRideSafety> {
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
                  height: 350,
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
                              child: Text("What are the features available for\n"
                                  "female rider safety?",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                            ),

                          ],
                        ),
                      ),
                      Text("Your safety is of utmost importance to us\n"
                          "and we take rigorous measure to ensure\n"
                          "the safety of our female riders.Our\n"
                          "Emergency Response Team is available\n"
                          "round the clock to attend to any emergency\n"
                          "issues during the ride.You can reach out to\n"
                          "them through the SOS button after you\n"
                          "book a ride.We also have a number masking\n"
                          "Feature to safegured the peivacy of our\n"
                          "female riders.Our captains are trained to\n"
                          "behave well with riders and especially with\n"
                          "female riders")
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
