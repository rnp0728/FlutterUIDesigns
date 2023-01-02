import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstagramProfilePage extends StatelessWidget {
  const InstagramProfilePage({Key? key}) : super(key: key);
  Widget rowColText(String num, String text) {
    return Column(
      children: [
        Text(
          num,
          style: GoogleFonts.poppins(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
              fontSize: 15, fontWeight: FontWeight.w600, color: Colors.white),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.lock_outlined)),
            const Text(
              'r_n_p_0728',
              style: TextStyle(color: Colors.white),
            ),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_outlined))
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_box_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              )),
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            height: h * 0.22,
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  // color: Colors.yellowAccent,
                  width: w * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        radius: 60,
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 55,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://i.pinimg.com/originals/3a/d9/6b/3ad96be9452d56a674ac5fd739ea013a.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Rudra Narayan',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'No Existence',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        rowColText('0', 'Posts'),
                        const SizedBox(
                          height: 10,
                        ),
                        rowColText('123', 'Followers'),
                        const SizedBox(
                          height: 10,
                        ),
                        rowColText('170', 'Following'),
                      ],
                    ),
                    const SizedBox(
                      height: 60,
                    )
                  ],
                ))
              ],
            ),
          ),
          SizedBox(
            height: h * 0.13,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 40,
                        width: w * 0.85,
                        child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.grey.shade900)),
                          onPressed: () {},
                          child: const Text('Edit Profile'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Container(
                      height: 40,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.person_add_outlined),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Story Highlights',
                              style: GoogleFonts.poppins(
                                  fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Keep your favorites stories on your profile',
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_down_outlined,
                          color: Colors.white)
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            // color: Colors.yellow,
            height: h * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (ctx, idx) {
                return Column(
                  children: [
                    idx == 0
                        ? Container(
                            margin: const EdgeInsets.all(10),
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade900,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.add,
                                size: 60, color: Colors.white),
                          )
                        : Container(
                            margin: const EdgeInsets.all(10),
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Colors.grey,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                'https://i.pinimg.com/originals/3a/d9/6b/3ad96be9452d56a674ac5fd739ea013a.jpg',
                              ),
                              fit: BoxFit.cover),
                            ),
                          ),
                    idx == 0
                        ? Text(
                            'New',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          )
                        : Container()
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: h * 0.07,
            child: const DefaultTabController(
              length: 2,
              child: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                Tab(icon: Icon(Icons.grid_on_outlined),),
                Tab(icon: Icon(Icons.perm_contact_calendar_outlined),)
              ],),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),
                Expanded(
                  child: Container(
                    height: 130,
                    width: 130,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 60,
                            child: Icon(Icons.camera_alt_outlined, size: 70,color: Colors.white,),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Text('No Posts Yet', style: GoogleFonts.poppins(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                const SizedBox(height: 30,)
              ],
            ),
          ),

          SizedBox(
            height: h * 0.07,
            child: const DefaultTabController(
              length: 5,
              child: TabBar(
                indicatorColor: Colors.black,
                tabs: [
                  Tab(icon: Icon(Icons.home_outlined),),
                  Tab(icon: Icon(Icons.search),),
                  Tab(icon: Icon(Icons.ondemand_video_outlined),),
                  Tab(icon: Icon(Icons.favorite_border),),
                  Tab(icon: Icon(Icons.person),),
                ],),
            ),
          ),
        ],
      ),
    );
  }
}
