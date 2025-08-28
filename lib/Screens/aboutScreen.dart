// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../Components/Widgets/shadowBox.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';

import '../Constants/constants.dart';
import '../Router/route_constants.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: CustomAppBar(title: "My Details"),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:  [
                ShadowBox(
                  text: MyConstants.MY_DETAIL,
                  width: 90,
                  height: 20,
                  backgroundColor: Colors.blue,
                  onTap: () => Navigator.pushNamed(context, RouteConstants.personal)
                ),
                ShadowBox(
                  text: MyConstants.EDUCATION_DETAIL,
                  width: 90,
                  height: 20,
                  backgroundColor: Colors.indigo,
                  onTap: () => Navigator.pushNamed(context, RouteConstants.education)
                ),
                ShadowBox(
                  text: MyConstants.PROFESSIONAL_CAREER,
                  width: 90,
                  height: 20,
                  backgroundColor: Colors.green,
                  onTap: () => Navigator.pushNamed(context, RouteConstants.professional)
                ),
              ],
            ),
        ),
      ),
    );
  }
}