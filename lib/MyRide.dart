import 'package:flutter/material.dart';

class MyRide extends StatefulWidget {
  const MyRide({super.key});

  @override
  State<MyRide> createState() => _MyRideState();
}

class _MyRideState extends State<MyRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Ride History"),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/Bike.png",scale: 5,),
                  ),
                ),
                Column(
                  children: [
                    Text("Banglore",
                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.w800),),
                    Text("01 jan 2024 . 01.00 AM",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600),)
                  ],
                ),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            Divider(thickness: 2,),
            SizedBox(height: 70,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.help),
                  Text("Looking for oreders older than 90 days?",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Please click on the link below to receive order\n"
                  "history older than 90 days on your email.",style: TextStyle(fontSize: 16),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 90.0,),
              child:ElevatedButton(
                onPressed: (){
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context){

                        return Column(
                          children: [
                            // SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Request details duration"),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context)=>MyRide())
                                      );
                                    },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.close),
                                      ))
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 220.0),
                                  child: Text("FROM DATE",
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          // width: 0.0 produces a thin "hairline" border
                                          borderSide: const BorderSide(color: Colors.black, width: 1.0),
                                        ),

                                        prefixIcon: Icon(Icons.date_range),
                                        labelText: 'Select Date',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue
                                            )
                                        )

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 230.0),
                                  child: Text("TO DATE",
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          // width: 0.0 produces a thin "hairline" border
                                          borderSide: const BorderSide(color: Colors.black, width: 1.0),
                                        ),

                                        prefixIcon: Icon(Icons.date_range),
                                        labelText: 'Select Date',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue
                                            )
                                        )

                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 210.0),
                                  child: Text("YOUR EMAIL",
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: const InputDecoration(
                                        enabledBorder: const OutlineInputBorder(
                                          // width: 0.0 produces a thin "hairline" border
                                          borderSide: const BorderSide(color: Colors.black, width: 1.0),
                                        ),

                                        prefixIcon: Icon(Icons.email),
                                        labelText: 'John@abc.com',
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blue
                                            )
                                        )

                                    ),
                                  ),
                                ),
                                Container(
                                  height: 30,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all()
                                  ),
                                  child: Center(child: Text("Request ride history")),
                                )
                              ],
                            )



                          ],
                        );
                      });
                },
                child: Center(
                  child: Text("Request Order History",
                      style:TextStyle(fontSize: 17,fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
