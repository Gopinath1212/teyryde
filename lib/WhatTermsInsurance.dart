import 'package:flutter/material.dart';

class WhatTermsInsurance extends StatefulWidget {
  const WhatTermsInsurance({super.key});

  @override
  State<WhatTermsInsurance> createState() => _WhatTermsInsuranceState();
}

class _WhatTermsInsuranceState extends State<WhatTermsInsurance> {
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
                              child: Text("What are the Terms and Conditions Valid\n"
                                  "on my Insurance plan",
                                style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),),
                            ),

                          ],
                        ),
                      ),
                      Text("The Insurance cove under the Policy will be\n"
                          "applicable only on the trips booked through\n"
                          "the TEYRYDE platform. For details Terms and\n"
                          "Conditions,click:",textAlign: TextAlign.start,),
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
