import 'package:flutter/material.dart';
import 'Drop.dart';
import 'Help.dart';
import 'MyRewards.dart';
import 'MyRide.dart';
import 'Notification.dart';
import 'Parcel.dart';
import 'Payment.dart';
import 'ReferAndEarn.dart';
import 'Safety.dart';
import 'Settings.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
      appBar: AppBar(
        title:TextField(
          obscureText: true,
          decoration: InputDecoration(
            // border: OutlineInputBorder(),
             suffixIcon: Icon(Icons.favorite),
            hintText: 'Location',
          ),
        ),
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.lightBlue,
                  backgroundImage: AssetImage(
                      "assets/Bike.png"),
                ),
                decoration: BoxDecoration(color: Colors.blueAccent),
                accountName: Text("XXXXX"),
                accountEmail: Text("XXXXXXXXX")),
            ListTile(
              leading: Icon(Icons.backpack),
              title: Text('Parcel-Sent Item'),
              onTap: () {
                // Handle navigation to home
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Parcel())); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Payment())); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.access_time_filled_sharp),
              title: Text('My Rides'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyRide()));// Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.safety_check),
              title: Text('Saftety'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context)=>Safety())
                ); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.money_sharp),
              title: Text('Refer and Earn'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ReferAndEarn())); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('My Rewards'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyRewards())); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.notification_add),
              title: Text('Notification'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(
                    context,
                  MaterialPageRoute(builder: (context)=>Notified())
                ); // Close the drawer
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Settings())); // Close the drawer
              },
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
              onTap: () {
                // Handle navigation to settings
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>Help())
                ); // Close the drawer
              },
            ),
            // Add more ListTile items for additional menu options
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           Image.asset("assets/Googlemap.gif"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          // width: 0.0 produces a thin "hairline" border
                          borderSide: const BorderSide(color: Colors.black, width: 1.0),
                        ),

                        prefixIcon: Icon(Icons.search),
                        labelText: 'Where are you going?',
                        labelStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue
                            )
                        )

                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 200.0),
                  child: Text("Explore",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("View All"),
                ),
                Icon(Icons.arrow_forward_ios,size: 15,)
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                      child: InkWell(
                        child: Container(
                          width: 75,
                          height: 75,
                          child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Image.asset("assets/bikepassanger.jpeg",scale: 5,)
                                  ],
                                ),
                              )
                          ),
                        ),
                        onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Drop()));
                        },
                      ),
                    ),
                    Text('Bike',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                      child: InkWell(
                        child: Container(
                          width: 75,
                          height: 75,
                          child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Image.asset("assets/autobooking.jpeg",scale: 5,)
                                  ],
                                ),
                              )
                          ),
                        ),
                        onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Drop()));
                        },
                      ),
                    ),
                    Text('Auto',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                      child: InkWell(
                        child: Container(
                          width: 75,
                          height: 75,
                          child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   Image.asset("assets/cab booking.jpeg")
                                  ],
                                ),
                              )
                          ),
                        ),
                        onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Drop()));
                        },
                      ),
                    ),
                    Text('Cab',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 5.0,top: 12.0),
                      child: InkWell(
                        child: Container(
                          width: 75,
                          height: 75,
                          child: Card(
                              semanticContainer: true,
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child:
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                      Color(0xfffffffb),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                  Image.asset("assets/parcel booking.jpeg")
                                  ],
                                ),
                              )
                          ),
                        ),
                        onTap: () {
                           Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Parcel()));
                        },
                      ),
                    ),
                    Text('Parcel',
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 9.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)
                    ),
                  ],
                ),
              ],
            ),


          ],
        ),
      )
    );
  }
}

