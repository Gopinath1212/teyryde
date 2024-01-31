import 'package:flutter/material.dart';

class LocalService extends StatefulWidget {
  const LocalService({super.key});

  @override
  State<LocalService> createState() => _LocalServiceState();
}

class _LocalServiceState extends State<LocalService> {
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
              child: Text("Local",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("What is local?",
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
                  child: Text("Which cities is this service currently\n"
                      "available?",
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
                  child: Text("How do I use this service?",
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
                  child: Text("How do I get in touch with my captain?",
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
                  child: Text("How do I pay for a Local ride?",
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
                  child: Text("What are the items I caannot sent through\n"
                      "Local?",
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
                  child: Text("How can I share the status of my order?",
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
