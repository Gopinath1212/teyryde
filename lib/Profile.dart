import 'package:flutter/material.dart';

import 'SafetyNeedTrustedContact.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String selectedOption0 = 'Option 0';
  String selectedOption1 = 'Option 1';
  String selectedOption2 = 'Option 2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Profile"),
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
              Icon(Icons.help),
              Text("Help")
            ],
          ),
        )],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
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
                                    child: Text("Edit Name",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>Profile())
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.close,),
                                      ))
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.person),
                                      labelText: 'First Name*',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.person),
                                      labelText: 'Last Name*',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width:250,
                                  decoration: BoxDecoration(
                                    color:Colors.green,
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("Save Changes",
                                      style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.person,),
                    ),
                    Column(
                      children: [
                        Text("Name",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("xxxxxxxx"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 205.0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.phone,),
                  ),
                  Column(
                    children: [
                      Text("Phone Number",
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("xxxxxxxx")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
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
                                    child: Text("Edit Email",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>Profile())
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.close,),
                                      ))
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      prefixIcon: Icon(Icons.email),
                                      labelText: 'John@gmail.com*',
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width:250,
                                  decoration: BoxDecoration(
                                      color:Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("Save Changes",
                                      style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.email,),
                    ),
                    Column(
                      children: [
                        Text("Email",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Text("www.tyryde.com")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 170.0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
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
                                    child: Text("Gender",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context)=>Profile())
                                        );
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.close,),
                                      ))
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                ListTile(
                                  title: const Text('Male'),
                                  leading: Radio(
                                    value: 'Option 1',
                                    groupValue: selectedOption0,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption0 = value as String;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Female'),
                                  leading: Radio(
                                    value: 'Option 2',
                                    groupValue: selectedOption0,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption0 = value as String;
                                      });
                                    },
                                  ),
                                ),
                                ListTile(
                                  title: const Text('Other'),
                                  leading: Radio(
                                    value: 'Option 3',
                                    groupValue: selectedOption0,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption0 = value as String;
                                      });
                                    },
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width:250,
                                  decoration: BoxDecoration(
                                      color:Colors.green,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all()
                                  ),
                                  child: Center(
                                    child: Text("Save Changes",
                                      style: TextStyle(color: Colors.white),),
                                  ),
                                )
                              ],
                            )
                          ],
                        );
                      });
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.perm_identity,),
                    ),
                    Column(
                      children: [
                        Text("Gener",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Text("xxxxxxxx")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 218.0),
                      child: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.date_range_outlined,),
                  ),
                  Column(
                    children: [
                      Text("Date of Birth",
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("xxxxxxxx")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 175.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.card_membership,),
                  ),
                  Column(
                    children: [
                      Text("Member Since",
                        style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      Text("xxxxxxxx")
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 160.0),
                    child: Icon(Icons.arrow_forward_ios),
                  )
                ],
              ),
            ),
            Divider(indent: 10,endIndent: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>SafetyNeedTrusted())
                  );
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.emergency_share_rounded,),
                    ),
                    Column(
                      children: [
                        Text("Emergency contact",
                          style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("xxxxxxxx"),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text("Add",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.blue),),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
