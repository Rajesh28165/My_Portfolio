// ignore_for_file: use_build_context_synchronously, prefer_const_constructors
import 'package:flutter/material.dart';
import '../Router/route_constants.dart';
import 'package:portfolio/Util/scaling.dart';
import 'package:portfolio/Constants/constants.dart';
import 'package:portfolio/Components/Widgets/loader.dart';
import 'package:portfolio/Components/Widgets/appBar.dart';
import 'package:portfolio/Components/Widgets/dialogBox.dart';
import 'package:portfolio/Components/Widgets/navigationButton.dart';
import 'package:portfolio/Components/AllFieldsComponents/PasswordFiled/passwordTextField.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final TextEditingController _controller = TextEditingController();

  bool _isPswdNotEmpty = false;
  bool _isPswdCorrect = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isPswdNotEmpty = _controller.text.isNotEmpty;
        _isPswdCorrect = _controller.text == MyConstants.CORRECT_PASSWORD;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onNextPressed() async {
    CustomLoader.showLoader(context, text: "Verifying Password");
    await Future.delayed(const Duration(seconds: 3));
    CustomLoader.hideLoader(context);

    if (!_isPswdCorrect) {
      CustomDialogBox.show(
        context,
        description: "The password you entered is incorrect. Please try again.",
      );
      return;
    }
    _controller.clear();
    Navigator.pushNamed(context, RouteConstants.home);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Welcome to my App",
        showBackButton: false,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
                Colors.white,
                Colors.blue.shade100,
                Colors.green.shade100,
              ],
          )
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: context.getPercentHeight(5),
            right: context.getPercentHeight(5),
            top: context.getPercentHeight(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PasswordTextField(
                controller: _controller,
                labelText: "Validation Required",
                labelStyle: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
              ),
              NavigationButton(
                text: "Confirm",
                canNavigate: _isPswdNotEmpty,
                onBtnPress: _onNextPressed,
                belowSpace: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}