import 'package:flutter/material.dart';

import 'Accound&App.dart';
import 'Payment&Wallet.dart';
import 'Referal.dart';
import 'RideBilling.dart';
import 'Safety&Secuity.dart';
import 'Service.dart';


class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Settings"),
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
              child: Row(
                children: [
                  Icon(Icons.help),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("HELP TOPIC",
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 600,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: const OutlineInputBorder(

                                // width: 0.0 produces a thin "hairline" border
                                borderSide: const BorderSide(color: Colors.black, width: 1.0),
                              ),


                              prefixIcon: Icon(Icons.search),
                              labelText: 'Search Topic',
                              focusedBorder: OutlineInputBorder(

                                  borderSide: BorderSide(
                                      color: Colors.blue
                                  )
                              )

                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>SafetyAndSecurity())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/safety.png"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Safety & Security",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 90.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>RideBilling())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/Bike.png"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Ride & Billing",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Mechanic())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/service.jpg"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Service",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 165.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Account())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/Motor.png"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Account & App",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 110.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Referrals())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/Referral.png"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Referral",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 165.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>PaymentAndWallet())
                            );
                          },
                          child: Row(

                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration:  BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage("assets/payment&wallet.png"),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius:BorderRadius.circular(50)
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Payment & Wallets",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 80.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),


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
