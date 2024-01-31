import 'package:flutter/material.dart';

class Drop extends StatefulWidget {
  const Drop({super.key});

  @override
  State<Drop> createState() => _DropState();
}

class _DropState extends State<Drop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Drop"),


      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 180,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(),
                              ),
                            ),
                            SizedBox(width: 20),  // Adding some space between the colored container and TextField
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  // border: OutlineInputBorder(),
                                  hintText: 'PickUp Location',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 15,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(),
                              ),
                            ),
                            SizedBox(width: 20),  // Adding some space between the colored container and TextField
                            Expanded(
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  // border: OutlineInputBorder(),
                                  hintText: 'Drop Location',
                                ),
                              ),
                            ),
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
              child: Container(
                height: 40,
                width: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all()
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_pin),
                    Text("Select map")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
