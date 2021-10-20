import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:iring/components/body_landing.dart';
import 'package:iring/components/bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(
      MaterialApp(
        home: Main(),
      ),
    );

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BodyLanding(),
      bottomNavigationBar: BottomBar(),
    );
  }
}
