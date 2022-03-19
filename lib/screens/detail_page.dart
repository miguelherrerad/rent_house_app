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
            ListView(
              children: [
                SizedBox(
                  height: 266,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //NOTE: title
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 24,
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Casa Moderna",
                                  style: secondaryTitle,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  "Zamora Hoayco, Loja",
                                  style: infoSecondaryTitle,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [1, 2, 3, 4, 5].map((e) {
                                return Icon(
                                  Icons.star,
                                  size: 12,
                                  color: (e <= 5) ? orangeColor : greyColor,
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //NOTE: button back
            Positioned(
              top: 20,
              left: 20,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                minWidth: 30,
                height: 30,
                elevation: 6,
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
            ),
          ],
        ),
      ),
    );
  }
}
