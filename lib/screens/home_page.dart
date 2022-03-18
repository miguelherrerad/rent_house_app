import 'package:flutter/material.dart';
import 'package:rent_house_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      //Ctrl + . para usar Wrap
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //NOTE: Reader
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/menu_icon.png",
                    width: 18,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, top: 30.0),
                child: Text(
                  "Encuentra tu\nlugar perfecto",
                  style: primaryTitle,
                ),
              ),
              //NOTE: search
              Container(
                padding: EdgeInsets.all(30),
                child: Material(
                  elevation: 6,
                  shadowColor: shadowColor,
                  borderRadius: BorderRadius.circular(28),
                  child: TextField(
                    decoration: searchDecoration,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
