import 'package:flutter/material.dart';

import 'AddMoney.dart';
import 'ShowPassbook.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Payment"),
        actions: [Container(
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all()
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.help),
              Text("Help")
            ],
          ),
        )],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("Wallet",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 450,
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
                              Text("Tyryde Wallet",
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                              Text("Low Balance:\u{20B9} 0.0",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right: 100.0),
                        child: Container(
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all()
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>AddMoney())
                                    );
                                  },
                                  child: Text("Add Money"))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Divider(thickness: 2,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Motor.png"),
                                  fit: BoxFit.cover
                                ),
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all()
                              ),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 90.0),
                            child: Text("AmazonPay",
                              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),),
                          ),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("LINK",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.blue),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Icon(Icons.attach_money_sharp),
                              Text("CashBack upto \u{20B9}25 | min. order value of\n"
                                  "\u{20B9}39| once per user ",textAlign: TextAlign.start,)
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/Motor.png"),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all()
                              ),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Text("Paytm",
                              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),),
                          ),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("LINK",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.blue),),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Icon(Icons.attach_money_sharp),
                              Text("CashBack upto \u{20B9}100 | min. order value of\n"
                                  "\u{20B9}75| once per user ",textAlign: TextAlign.start,)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("UPI",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/Bike.png",scale: 7,),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text("Select App",
                                  style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                Text("Pay with any UPI app")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 90.0),
                            child: Icon(Icons.arrow_downward),
                          )


                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: Text("Pay Later",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 200,
                  width:double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/Bike.png",scale: 7,),
                            ),
                          ),
                          Text("Pay at drop",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),


                        ],
                      ),
                      // SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Icon(Icons.attach_money_sharp),
                              Text("Go cashless,after ride pay by scanning QR\ncode",textAlign: TextAlign.start,)
                            ],
                          ),
                        ),
                      ),
                      Divider(thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/Motor.png"),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(40),
                                  border: Border.all()
                              ),

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 100.0),
                            child: Text("Simpl",
                              style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17),),
                          ),
                          ElevatedButton(
                            onPressed: (){

                            },
                            child: Text("LINK",
                              style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400,color: Colors.blue),),
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 240.0),
              child: Text("Others",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 115,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset("assets/Bike.png",scale: 7,),
                            ),
                          ),
                          Text("Cash",
                            style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),


                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.grey,
                          child: Row(
                            children: [
                              Icon(Icons.attach_money_sharp),
                              Text("You can pay via cash or upi for your ride",textAlign: TextAlign.start,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 70,
                  width: double.infinity,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>ShowPassbook())
                          );
                        },
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset("assets/Bike.png",scale: 7,),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Show Passbook",
                                style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 100.0),
                              child: Icon(Icons.arrow_forward_ios),
                            )


                          ],
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
