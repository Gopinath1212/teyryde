import 'package:flutter/material.dart';

import 'SentParcel.dart';

class Parcel extends StatefulWidget {
  const Parcel({super.key});

  @override
  State<Parcel> createState() => _ParcelState();
}

class _ParcelState extends State<Parcel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Safety toolkit"),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 100,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/Bike.png",scale: 7,),
                            ),
                          ),
                          Column(
                            children: [
                              Text("We don't purchase",
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                              Text("Our captains won't pay and buy items\non your behalf",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            Image.asset("assets/Motor.png",scale: 2,),
            Text("What do you wish to do today?",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
            SizedBox(height: 10,),
            Text("You can sent and receive packages with our\nparcel services",
              style:TextStyle(fontSize: 18) ,textAlign: TextAlign.center,),
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>SentParcel())
                );
              },
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(),
                ),
                child: Center(child: Text("Sent Parcel",style: TextStyle(color: Colors.black),)),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(),
              ),
              child: Center(child: Text("Receive Parcel",style: TextStyle(color: Colors.black),)),
            ),
          ],
        ),
      ),
    );
  }
}
