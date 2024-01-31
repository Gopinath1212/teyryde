import 'package:flutter/material.dart';

class RideBilling extends StatefulWidget {
  const RideBilling({super.key});

  @override
  State<RideBilling> createState() => _RideBillingState();
}

class _RideBillingState extends State<RideBilling> {
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
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("Ride & Billing",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("How can I check the fare for ride",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How can I check the fare brekup for my\nride",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How do I apply a coupon code for a ride?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("Where can I find my captain details?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How do I contact my captain?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How do ETA's work?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How do I use PIN to start my ride?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How do I tip my captain?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("How to receive invoice in my email?",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
                  child: Text("I want to understand the charges in the\ninvoice",
                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
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
