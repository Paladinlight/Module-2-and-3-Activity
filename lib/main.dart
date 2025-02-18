import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'Personal Information',
            style: TextStyle(
              color: Colors.white, // Set text color to white
              fontWeight: FontWeight.bold, // Make text bold
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF424242), // Proper ARGB format
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Centers children horizontally
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFF232323), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/profile.JPG'),
                  ),
                ),
                Text(
                  'Diether Robles',
                  style: TextStyle(
                    fontSize: 20,
                    height: 2,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF838383),
                  ),
                ),
                SizedBox(height: 10), // Added spacing
                Text(
                  'Software Developer',
                  textAlign: TextAlign.center, // Centers text inside the Text widget
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hello, I am a passionate software developer.',
                  textAlign: TextAlign.center, // Centers text inside the Text widget
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'MY WORKS:',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF717171),
                  ),
                ),
                SizedBox(height: 20),
                // Centered Artwork Grid
                Center(
                  child: Wrap(
                    spacing: 20, // Space between images horizontally
                    runSpacing: 10, // Space between images vertically
                    alignment: WrapAlignment.center,
                    children: [
                      artBox('assets/Image1.jpg'),
                      artBox('assets/Image2.jpg'),
                      artBox('assets/Image3.jpg'),
                      artBox('assets/Image4.jpg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Widget artBox(String imagePath) {
  return Container(
    width: 110,
    height: 110,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color(0xFF2F2C2E), width: 2),
      image: DecorationImage(
        image: AssetImage(imagePath),
        fit: BoxFit.cover,
      ),
    ),
  );
}
