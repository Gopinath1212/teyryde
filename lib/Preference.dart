import 'package:flutter/material.dart';

class Preferences extends StatefulWidget {
  const Preferences({super.key});

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  bool isChecked0 = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Preference"),


      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
           const Padding(
             padding: EdgeInsets.only(right: 250.0),
             child: Text("EMAIL",
               style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
           ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 130,
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(height: 10,),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Expanded(child: Text("Allow emails for promotions and offers",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked0,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked0 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      const Divider(thickness: 2,),
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Allow emails for invoice",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 110.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked1,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked0 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 170.0),
              child: Text("SMS & WHATSAPP",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 180,
                  width: double.infinity,
                  child: Column(
                    children: [

                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Allow SMS for invoice",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked2,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked2 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Allow promotional SMS offers",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 65.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked3,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked3 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      Divider(thickness: 2,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Allow updates to be sent on WhatsApp",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 6.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked4,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked4 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 140.0),
              child: Text("PUSH NOTIFICATIONS",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Allow mobile push notification",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked5,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked5 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 120.0),
              child: Text("PICTURE IN PICTURE(PIP)",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 50,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Allow picture in picture access",style: TextStyle(fontSize: 14.5,fontWeight: FontWeight.bold),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Checkbox(
                              tristate: true,
                              value: isChecked6,
                              checkColor: Colors.green,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked6 = value!;
                                });
                              },
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
