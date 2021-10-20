import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            blurRadius: 35,
            color: Colors.black.withOpacity(0.38),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/home.svg"),
              ),
              Text(
                "Home",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/patient.svg"),
              ),
              Text(
                "Patient",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/car.svg"),
              ),
              Text(
                "Car",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/news.svg"),
              ),
              Text(
                "News",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("icons/more.svg"),
              ),
              Text(
                "More",
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
