import 'package:flutter/material.dart';

import 'ReferTOFriends.dart';


class ReferAndEarn extends StatefulWidget {
  const ReferAndEarn({super.key});

  @override
  State<ReferAndEarn> createState() => _ReferAndEarnState();
}

class _ReferAndEarnState extends State<ReferAndEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Menu"),
        actions: [Container(
          height: 40,
          width: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.help),
              Text("FAQs")
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
                  height: 170,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ryvox.png"),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)
                    ),
                    border: Border.all()
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  child: Column(
                    children: [
                     SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.card_giftcard),
                          Text("Invite Friends to TYRYDE",
                            style: TextStyle(fontSize: 17),),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("INVITE",style: TextStyle(fontSize: 17,color: Colors.blue,fontWeight: FontWeight.bold),),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100.0),
              child: Text("HOW TO REFER FRIENDS?",
                style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 110,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 130.0),
                        child: Text("Share your Referral Code",
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Invite youe friends via Whatsapp or a text\nmessage",style: TextStyle(fontSize: 16),),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>ReferFriends())
                          );
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all()
                          ),
                          child: Center(child: Text("Find Friends to Refer",style: TextStyle(fontSize: 17),)),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all()
                        ),
                        child: Center(child: Text("Refer Now",style: TextStyle(fontSize: 17),)),
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
