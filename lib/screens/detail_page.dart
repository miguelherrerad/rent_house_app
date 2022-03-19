import 'package:flutter/material.dart';
import 'package:rent_house_app/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            // NOTE: thumbnail image
            Container(
              width: MediaQuery.of(context).size.width,
              height: 296,
              child: Image.asset(
                "assets/images/banner1.png",
                height: 296,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            //NOTE: button back
            Positioned(
              top: 20,
              left: 20,
              child: MaterialButton(
                onPressed: () {},
                minWidth: 30,
                height: 30,
                padding: EdgeInsets.all(5),
                color: whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  size: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
