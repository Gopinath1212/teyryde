import 'package:flutter/material.dart';

import 'SafetyNeedTrustedContact.dart';

class Safety extends StatefulWidget {
  const Safety({super.key});

  @override
  State<Safety> createState() => _SafetyState();
}

class _SafetyState extends State<Safety> {
  List a =[
    "assets/ryvox.png",
    "assets/ryvox2.png",
    "assets/iamage1.gif"
  ];
  List b =[
    "Proactive safety checks",
    "Share live location",
    "Add trusted contacts"
  ];
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
              child: Text("At TYRYDE,your safety comes first.Here are\n"
                  "some measures and provisions to ensure your\n"
                  "safety",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230.0),
              child: Text("Know more",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 300,
                // width: 100,
                color: Colors.white,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, index)
                    {
                      return Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 300,
                          width: 280,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Image.asset(a[index]),

                              ),
                              Text(b[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                            ],
                          ),



                        ),
                      );

                    }
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("Settings",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 120,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 140.0),
                        child: Text("New trusted contacts",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800),),
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>SafetyNeedTrusted())
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Share ride trip details with your loved once\n"
                                "in single app"),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      )
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
