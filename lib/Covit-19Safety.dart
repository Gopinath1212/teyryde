import 'package:flutter/material.dart';

class Covid19Safety extends StatefulWidget {
  const Covid19Safety({super.key});

  @override
  State<Covid19Safety> createState() => _Covid19SafetyState();
}

class _Covid19SafetyState extends State<Covid19Safety> {
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
              child: Text("covid-19 Safety",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Operational areas during COVID-19",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Safety measures taken by Captains",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800),),
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Divider(thickness: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Saftey guidelines for customer",
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
