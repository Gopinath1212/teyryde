import 'package:flutter/material.dart';

class SentParcel extends StatefulWidget {
  const SentParcel({super.key});

  @override
  State<SentParcel> createState() => _SentParcelState();
}

class _SentParcelState extends State<SentParcel> {
  List a =[
    "assets/Bike.png",
    "assets/Bike.png",
    "assets/Bike.png"
  ];
  List b =[
    "We don't purchase",
    "Watch the weight",
    "Cash payment available"
  ];
  List c =[
    "Our captains won't pay and buy items\non your behalf",
    "Maxmimum allowed weight per order is\n%kgs",
    "cash payment is available at both\npickup or drop location"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Parcel"),
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
              child: Container(
                height: 200,
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
                          height: 100,
                          width: 350,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(a[index],scale: 7,),
                                  Column(
                                    children: [
                                      Text(b[index],
                                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                                      Text(c[index],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
                                    ],
                                  )
                                ],
                              )

                            ],
                          ),



                        ),
                      );

                    }
                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Pickup From",
                              style: TextStyle(fontWeight: FontWeight.bold,),),
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all()
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Text("Add Flat no./ Contact")
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all()
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Deliver to",
                              style: TextStyle(fontWeight: FontWeight.bold,),),
                          )
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all()
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add),
                            Text("Add Address/ Contact")
                          ],
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
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.pages,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 60.0),
                                    child: Text("Select Package Type",
                                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all( 8.0),
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
