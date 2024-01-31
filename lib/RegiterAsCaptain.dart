import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        actions: [
          Container(
            height: 40,
            width: 90,
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
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
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 210.0),
              child: const Text("Hello User",
                style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 200,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                border: Border.all()
                              ),
                              child:  Icon(Icons.visibility,size: 15,)

                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Receive accound updates on"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: FloatingActionButton(

                                child: const Icon(Icons.chat,),
                                backgroundColor: Colors.green.shade800,
                                onPressed: () {

                                   String url =
                                       "https://wa.me/+923045873730/?text=Hello";
                                   launch(url);

                                },
                              ),
                            ),
                            // Text("WhatsApp",style: TextStyle(fontWeight: FontWeight.bold ),),

                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IntlPhoneField(
                          decoration: InputDecoration(
                              hintText: "Phone Number",
                              border: OutlineInputBorder(
                                  borderSide: BorderSide()
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(thickness: 2,),
            Padding(
              padding: const EdgeInsets.only(right: 140.0),
              child: const Text("Have a Referral Code?",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,color: Colors.blue),),
            ),
            const SizedBox(height: 100,),
            GestureDetector(
              // onTap: (){
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context)=>City())
              //   );
              // },
              child: Container(
                height: 40,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all()
                ),
                child: const Center(child: Text("Register as a Bike",style: TextStyle(fontSize: 18,color: Colors.black),)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launch(String url) {}
}
