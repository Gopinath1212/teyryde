import 'package:flutter/material.dart';
import 'dart:async';

import 'PhoneNumber.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen2(),
    );
  }
}

class OnboardingScreen2 extends StatefulWidget {
  @override
  _OnboardingScreen2State createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Welcome to TEYRYDE',
      description: "Ride in Style, Arrive with a Smile",
      image: 'assets/hd image.jpg', // Replace with your image asset
    ),
    OnboardingItem(
      title: 'Cab Fusion',
      description: "Where Every Mile Feels Like a Smile",
      image: 'assets/car_on_road.gif', // Replace with your image asset
    ),
    OnboardingItem(
      title: 'Speedy Wheels',
      description: "Where Service Meets Satisfaction",
      image: 'assets/bikechcan.gif', // Replace with your image asset
    ),
  ];

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage < onboardingItems.length - 1) {
        _currentPage++;
      } else {
        _timer.cancel();
      }
      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent.shade100,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: onboardingItems.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(onboardingItem: onboardingItems[index]);
            },
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingItems.length,
                    (index) => buildDot(index: index),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhoneNumber()),
                );
                // Handle the action when the user clicks on "Get Started"
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 16),
              ),
              child: Text(
                _currentPage == onboardingItems.length - 1
                    ? 'Get Started'
                    : 'Next',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot({required int index}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentPage == index ? Colors.blue : Colors.grey,
        ),
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
  });
}

class OnboardingPage extends StatelessWidget {
  final OnboardingItem onboardingItem;

  OnboardingPage({required this.onboardingItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(onboardingItem.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            onboardingItem.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 2,
                ),
              ],
              decoration: TextDecoration.underline,
              decorationColor: Colors.indigo,
              decorationThickness: 2.0,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            onboardingItem.description,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontStyle: FontStyle.italic,
              letterSpacing: 0.5,
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(1, 1),
                  blurRadius: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}