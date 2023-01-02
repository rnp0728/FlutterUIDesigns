import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final shortSentense =
      'Madrid, city, capital of Spain and of Madrid provincia (province). Spain’s arts and financial centre, the city proper and province form a comunidad autónoma (autonomous community) in central Spain.';
  final cityImageUrl =
      'https://c4.wallpaperflare.com/wallpaper/866/439/753/city-cityscape-gran-via-urban-area-wallpaper-preview.jpg';
  final profileImageUrl = 'https://cdn.myanimelist.net/images/characters/9/439784.jpg';
  Widget rowIconText(String text, IconData icon) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 7,
        ),
        Icon(icon),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 450,
                    // color: Colors.yellow,
                    child: Stack(
                      children: [

                        Positioned(
                            child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(cityImageUrl),
                                  fit: BoxFit.cover)),
                          // color: Colors.red,
                          height: h * 0.45,
                        )),
                        Positioned(
                            bottom: 0,
                            right: 15,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(profileImageUrl),
                              radius: 50,
                            )),
                        Positioned(
                            top: 45,
                            left: 40,
                            child: Container(
                              height: 50,
                              width: 80,
                              child: const Icon(Icons.arrow_back_sharp,color: Colors.white,),
                            )),
                        Positioned(
                            top: 45,
                            right: 40,
                            child: Container(
                              height: 50,
                              width: 80,
                              child: const Icon(Icons.favorite_border,color: Colors.white,),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 0, right: 10, left: 10, bottom: 5),
              // color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Madrid City tour for Designers',
                    style: GoogleFonts.poppins(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'This is a Random Description about the City',
                    style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  rowIconText('20', Icons.favorite_rounded),
                  rowIconText('34', Icons.thumb_up),
                  rowIconText('82', Icons.message),
                  rowIconText('295', Icons.face),

                ],
              ),
            ),
            const SizedBox(height: 15,),
            const Divider(),
            Container(
              margin: const EdgeInsets.only(right: 30),
              padding: const EdgeInsets.only(top: 5, right: 15, left: 10,bottom: 10),
              child: Text(
                shortSentense,
                softWrap: true,
                style: GoogleFonts.poppins(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
