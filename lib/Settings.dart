import 'package:flutter/material.dart';


import 'About.dart';
import 'Preference.dart';
import 'Profile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      appBar: AppBar(
        leading: BackButton(),
        title: Text("Settings"),
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
              Text("Help")
            ],
          ),
        )],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 230.0),
              child: Text("GENERAL",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 330,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>Profile())
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.person,),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 30.0),
                                    child: Text("Profile",
                                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ),
                                  Text("+91 xxxxxxxx")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 155.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.favorite,color: Colors.red,),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 85.0),
                                  child: Text("Favourites",
                                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                Text("Manage favouurite location")
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 70.0),
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context)=>Preferences())
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.room_preferences_rounded,),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 35.0),
                                    child: Text("Preferences",
                                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ),
                                  Text("Manage preferences")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
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
                                              child: Text("Your favorites",style: TextStyle(fontWeight: FontWeight.bold),),
                                            ),
                                            GestureDetector(
                                                onTap: (){
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(builder: (context)=>Settings())
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
                                         Center(child: Image.asset("assets/map_place.png",scale: 5,)),
                                          Text("You don't have any favorites yet!",
                                            style: TextStyle(fontWeight: FontWeight.bold),),
                                          Text("Save a favorites first to add it to your\n"
                                              "home a screen for faster rides!",textAlign: TextAlign.start,)
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
                                child: Icon(Icons.app_shortcut,),
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 115.0),
                                    child: Text("App shortcuts",
                                      style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  ),
                                  Text("Create shortcuts on home launcher")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          )
                        ),

                      ),

                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 230.0),
              child: Text("OTHERS",
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=>About())
                            );
                          },
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.bike_scooter,),
                              ),
                              Column(
                                children: [
                                  Text("About",
                                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                  Text("8.14.0")
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 200.0),
                                child: Icon(Icons.arrow_forward_ios),
                              )
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.subscript,color: Colors.red,),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 85.0),
                                  child: Text("Subscribe to Beta",
                                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),
                                Text("Get early access to latest features")
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
                      ),
                      Divider(),
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
                                                child: Text("Log out?",style: TextStyle(fontWeight: FontWeight.bold),),
                                              ),
                                              GestureDetector(
                                                  onTap: (){
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context)=>Settings())
                                                    );
                                                  },
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(8.0),
                                                    child: Icon(Icons.close,size: 20,color: Colors.black,),
                                                  ))
                                            ],
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text("Are you sure you want to log out from the\n"
                                                "TYRYDE",textAlign: TextAlign.start,),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 30,
                                                width: 300,
                                                decoration: BoxDecoration(
                                                 color: Colors.redAccent,
                                                  borderRadius: BorderRadius.circular(20),
                                                  border: Border.all()
                                                ),

                                                child: Center(
                                                  child: Text("Logout",
                                                    style: TextStyle(color: Colors.white),),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(
                                                height: 30,
                                                width: 300,
                                                decoration: BoxDecoration(

                                                    borderRadius: BorderRadius.circular(20),
                                                    border: Border.all()
                                                ),

                                                child: Center(
                                                  child: Text("Goback",),
                                                ),
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
                                     child: Icon(Icons.logout,),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Column(
                                       children: [
                                         Padding(
                                          padding: const EdgeInsets.only(right: 85.0),
                                          child: Text("Logot",
                                             style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                         ),
                                       ],
                                     ),
                                   ),
                                   Padding(
                                     padding: const EdgeInsets.only(left: 110.0),
                                     child: Icon(Icons.arrow_forward_ios),
                                   )
                                 ],
                               ),

                        ),
                      ),
                      Divider(),
                      GestureDetector(
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
                                            child: Text("Delete account?",style: TextStyle(fontWeight: FontWeight.bold),),
                                          ),
                                          GestureDetector(
                                              onTap: (){
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context)=>Settings())
                                                );
                                              },
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Icon(Icons.close,size: 20,color: Colors.black,),
                                              ))
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Text("If you delete your account,all personal data\n"
                                            "will be lost.Do you wish to continue?",textAlign: TextAlign.start,),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 30,
                                            width: 300,
                                            decoration: BoxDecoration(
                                                color: Colors.redAccent,
                                                borderRadius: BorderRadius.circular(20),
                                                border: Border.all()
                                            ),

                                            child: Center(
                                              child: Text("Delete Account",
                                                style: TextStyle(color: Colors.white),),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Container(
                                            height: 30,
                                            width: 300,
                                            decoration: BoxDecoration(

                                                borderRadius: BorderRadius.circular(20),
                                                border: Border.all()
                                            ),

                                            child: Center(
                                              child: Text("Goback",),
                                            ),
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
                              child: Icon(Icons.delete_forever,),
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 85.0),
                                  child: Text("Delte Account",
                                    style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                                ),

                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 60.0),
                              child: Icon(Icons.arrow_forward_ios),
                            )
                          ],
                        ),
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
