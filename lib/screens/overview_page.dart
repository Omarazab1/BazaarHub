import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body:const Padding(
        padding: EdgeInsets.all(16.0),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'BazaarHub',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Version: 1.0.0',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'About the App:',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'This app allows you to browse and purchase items from our store catalog. It provides a seamless shopping experience with secure payment options and fast delivery.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),

          ],
        ),
      ),
    );
  }
}
