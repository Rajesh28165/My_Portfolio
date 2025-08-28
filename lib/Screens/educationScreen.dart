// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';
import 'package:portfolio/Components/Widgets/header.dart';
import 'package:portfolio/Components/Widgets/textWidget.dart';


class EducationDetail extends StatefulWidget {
  const EducationDetail({super.key});

  @override
  State<EducationDetail> createState() => _EducationDetailState();
}

class _EducationDetailState extends State<EducationDetail> {

  Widget _buildFields(
    String title,
    String value1,
    String value2,
    String value3,
    String url
  ) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title),
        TextWidget("Institute", value1, urlLink: url),
        TextWidget("Year of Passing", value2),
        TextWidget("Location", value3),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: CustomAppBar(title: "My Education"),
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Scrollbar(
              thumbVisibility: true,
              trackVisibility: true,
              thickness: 8,
              radius: Radius.circular(8),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildFields(
                        "Full Stack Web Development",
                        "Masai School",
                        "2025",
                        "Bengaluru, Karnataka",
                        "https://www.masaischool.com/",
                      ),
                      SizedBox(height: context.getPercentHeight(4)),
                      _buildFields(
                        "B.E. (Mechanical)",
                        "Thakur College of Engineering and Technology",
                        "2022",
                        "Mumbai, Maharashtra",
                        "https://www.tcetmumbai.in/",
                      ),
                      SizedBox(height: context.getPercentHeight(4)),
                      _buildFields(
                        "HSC",
                        "Bhavans College",
                        "2018",
                        "Mumbai, Maharashtra",
                        "https://bhavans.ac.in/",
                      ),
                      SizedBox(height: context.getPercentHeight(4)),
                      _buildFields(
                        "SSC",
                        "Swami Vivekanand High School",
                        "2016",
                        "Mumbai, Maharashtra",
                        "https://share.google/5x4pBIBW4X3eMgnVI",
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}