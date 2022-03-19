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
                      //NOTE: Agent
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Listando Agente",
                          style: sectionSecondaryTitle,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/owner1.png",
                              width: 50,
                            ),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Daniela Vivanco",
                                  style: contentTitle,
                                ),
                                Text(
                                  "Dueña de casa",
                                  style: infoText,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/message_icon.png",
                                    width: 30,
                                  ),
                                ),
                                SizedBox(width: 10),
                                InkWell(
                                  onTap: () {},
                                  child: Image.asset(
                                    "assets/images/call_icon.png",
                                    width: 30,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      //NOTE: facilities
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Text(
                          "Servicios",
                          style: sectionSecondaryTitle,
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 115,
                        padding: EdgeInsets.only(bottom: 5),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(width: 30),
                            FacilityCard(
                              imageUrl: "assets/images/facilities1.png",
                              title: "Baño privado",
                            ),
                            SizedBox(width: 20),
                            FacilityCard(
                              imageUrl: "assets/images/facilities2.png",
                              title: "Cocina",
                            ),
                            SizedBox(width: 20),
                            FacilityCard(
                              imageUrl: "assets/images/facilities3.png",
                              title: "1 dormitorio",
                            ),
                            SizedBox(width: 20),
                            FacilityCard(
                              imageUrl: "assets/images/facilities1.png",
                              title: "Garaje",
                            ),
                            SizedBox(width: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 24),
                //NOTE: description
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Descripción",
                    style: sectionSecondaryTitle,
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Amplios departamentos, especiales para estudiantes, con baño privado, dormitorio amplio y cocina.\n \nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: descText,
                  ),
                ),
                SizedBox(height: 40),
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
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        height: 80,
        color: whiteColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Precio",
                  style: priceTitle,
                ),
                Text(
                  "\$150.00",
                  style: priceText,
                ),
              ],
            ),
            Spacer(),
            MaterialButton(
              onPressed: () {},
              color: purpleColor,
              minWidth: 196,
              height: 50,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(28),
              ),
              child: Text(
                "Llamar",
                style: TextStyle(
                  color: whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Facilities Card
class FacilityCard extends StatelessWidget {
  final String imageUrl;
  final String title;

  FacilityCard({
    required this.imageUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: shadowColor,
      borderRadius: BorderRadius.circular(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 100,
          height: 110,
          color: whiteColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(imageUrl),
              SizedBox(height: 9),
              Center(
                child: Text(
                  title,
                  style: facilitiesTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
