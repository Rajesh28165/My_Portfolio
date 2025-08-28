// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';
import 'package:portfolio/Components/Widgets/header.dart';
import 'package:portfolio/Components/Widgets/textWidget.dart';


class ProffesionalDetail extends StatefulWidget {
  const ProffesionalDetail({super.key});

  @override
  State<ProffesionalDetail> createState() => _ProffesionalDetailState();
}

class _ProffesionalDetailState extends State<ProffesionalDetail> {

  String sdeI = "Currently working as a Flutter Developer, building Android and iOS apps with expertise in responsive UIs, state management, and API integration, while maintaining a clean and scalable codebase.";

  String verificationExecutive = "Performed employment and education verifications with accuracy and timeliness, collaborating with teams to optimize workflows and ensure on-time delivery of results.";

  final TextStyle _highlightStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.green,
    fontStyle: FontStyle.italic
  );

  Widget _buildFields(
    String title,
    String companyName,
    String duration,
    String location,
    String highlights,
    String companyURL
  ) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderWidget(title),
        TextWidget("Company", companyName, urlLink: companyURL),
        TextWidget("Duration", duration),
        TextWidget("Location", location),
        TextWidget("Highlights", highlights, valueStyle: _highlightStyle,)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: CustomAppBar(title: "My Professional Experience"),
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
                        "SDE-1",
                        "Tekenlight Solutions",
                        "Jan 2025 – Present",
                        "Bengaluru, Karnataka",
                        sdeI,
                        "https://tekenlight.com/",
                      ),
                      SizedBox(height: context.getPercentHeight(4)),
                      _buildFields(
                        "Verification Executive",
                        "Teleperformance",
                        "Jun 2023 – Apr 2024",
                        "Mumbai, Maharashtra",
                        verificationExecutive,
                        "https://www.tp.com/en-in/locations/india/",
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