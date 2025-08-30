// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Constants/constants.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';
import 'package:portfolio/Components/Widgets/textWidget.dart';

class PersonalDetail extends StatefulWidget {
  const PersonalDetail({super.key});

  @override
  State<PersonalDetail> createState() => _PersonalDetailState();
}

class _PersonalDetailState extends State<PersonalDetail> {
  @override
  Widget build(BuildContext context) {
    final mySpacer = SizedBox(height: context.getPercentHeight(3));

    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: CustomAppBar(title: "My Personal Details"),
      body: Center(
        child: Container(
          width: context.getPercentWidth(90),
          height: context.getPercentHeight(80),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 15,  
                spreadRadius: 5,
                offset: const Offset(5, 8),
              ),
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.blue.shade100,
                Colors.green.shade100,
              ],
            ),
          ),
          child: Column(
            children: [
              mySpacer,
              TextWidget("Name", MyConstants.FULL_NAME),
              mySpacer,
              TextWidget("Date of Birth", MyConstants.DOB),
              mySpacer,
              TextWidget("Gender", MyConstants.GENDER),
              mySpacer,
              TextWidget("Location", MyConstants.LOCATION),
              mySpacer,
              TextWidget("Phone", MyConstants.PHONE, urlLink: MyConstants.PHONE),
              mySpacer,
              TextWidget("Email", MyConstants.EMAIL, urlLink: MyConstants.EMAIL),
              mySpacer,
              TextWidget("GitHub", "GitHub Profile", urlLink: MyConstants.GITHUB),
              mySpacer,
              TextWidget("LinkedIn", "LinkedIn Profile", urlLink: MyConstants.LINKEDIN),
              mySpacer,
              TextWidget("LeetCode", "LeetCode Profile", urlLink: MyConstants.LEETCODE),
            ],
          )
        ),
      ),
    );
  }
}
