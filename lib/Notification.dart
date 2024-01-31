import 'package:flutter/material.dart';

class Notified extends StatefulWidget {
  const Notified({super.key});

  @override
  State<Notified> createState() => _NotifiedState();
}

class _NotifiedState extends State<Notified> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Notification"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all()
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Your Name, Travel often?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Text("It's a good thing then that we're giving a 40%\n"
                  "discount on all your rides! Tap here to know\n"
                  "more!",style: TextStyle(fontSize: 14),),
            ),
            Divider(thickness: 2,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Still want to go to Electronic City?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text("We will drop you there at the Best price\n"
                  "come back & your ride",style: TextStyle(fontSize: 14),),
            ),
            Divider(thickness: 2,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all()
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Up to 10% OFF for the Man of the\nHour!",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text("Get back in action with a sweet deal",style: TextStyle(fontSize: 14),),
            ),

          ],
        ),
      ),
    );
  }
}
