import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BodyLanding extends StatelessWidget {
  const BodyLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
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
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.20))
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for hospitals & clinics",
                  hintStyle: TextStyle(color: Colors.black26),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  icon: Icon(
                    Icons.search,
                    color: Colors.purple.shade600,
                  ),
                ),
              ),
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
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
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
          SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      HospitalImages(
                        image: "images/hospital1.jpg",
                        name: "Hospital Unisza",
                        description: "Open from 10 am until 6 pm",
                        press: () {},
                      ),
                      HospitalImages(
                        image: "images/hospital1.jpg",
                        name: "Hospital Unisza",
                        description: "Open from 10 am until 6 pm",
                        press: () {},
                      ),
                      HospitalImages(
                        image: "images/hospital1.jpg",
                        name: "Hospital Unisza",
                        description: "Open from 10 am until 6 pm",
                        press: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HospitalImages extends StatelessWidget {
  const HospitalImages({
    Key? key,
    required this.image,
    required this.press,
    required this.name,
    required this.description,
  }) : super(key: key);

  final String image, name, description;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, top: 20 / 2, bottom: 20 * 2.5),
      width: size.width * 0.4,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.asset(image),
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 10),
          Text(
            description,
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
