import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(
      MaterialApp(
        home: Main(),
      ),
    );

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Text.rich(
              TextSpan(
                text: 'Good Day!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: Colors.purple.shade600),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, size: 18),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Search',
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Upcoming Appointment',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade600,
              ),
            ),
            SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              color: Colors.red.shade400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.apartment_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Hospital Pengajar UnisZA',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      '10 October 2021  9:00 am',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_right,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'IRING Panel Facilities',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'See more',
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    Icon(Icons.arrow_right),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
