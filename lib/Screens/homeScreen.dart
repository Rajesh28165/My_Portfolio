import 'package:flutter/material.dart';
import '../Router/route_constants.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Constants/constants.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';
import 'package:portfolio/Components/Widgets/carousel.dart';
import 'package:portfolio/Components/Widgets/shadowBox.dart';
import 'package:portfolio/Components/Widgets/imageContainer.dart';
import 'package:portfolio/Components/Widgets/navigationButton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String image1 = ImagePathConstants.image1;
  final String image2 = ImagePathConstants.image2;
  final String image3 = ImagePathConstants.image3;

  @override
  void initState() {
    super.initState();
    
  }
  List<ImageContainer> myList = [
    const ImageContainer(imagePath: ImagePathConstants.image1),
    const ImageContainer(imagePath: ImagePathConstants.image2),
    const ImageContainer(imagePath: ImagePathConstants.image3)
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[50],
      appBar: const CustomAppBar(title: "My Portfolio"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCarousel(
            imagePaths: myList,
            carouselHeight: 50,
          ),
          SizedBox(height: context.getPercentHeight(1)),
          const ShadowBox(
            text: MyConstants.PROFESSIONAL_SUMMARY,
            fontSize: 12,
            width: 90,
            height: 20,
            backgroundColor: Colors.cyan,
          ),
          NavigationButton(
            text: "About me",
            canNavigate: true,
            onBtnPress: () => Navigator.pushNamed(context, RouteConstants.about),
          )
        ],
      ),
    );
  }
}
