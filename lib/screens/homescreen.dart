import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutter/screens/accountscreen.dart';
import 'package:newflutter/screens/notifiction.dart';
import 'package:newflutter/util/helper.dart';
import 'package:newflutter/util/string.dart';

import 'editscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.welcome,
                          style: GoogleFonts.poppins(color: Colors.grey),
                        ),
                        Text(
                          'Leslie Alexander',
                          style: GoogleFonts.poppins(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    Icon(Icons.search_rounded),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NotiScreen()),
                            );
                          }),
                          child: Icon(Icons.notifications_none)),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountScreen()),
                        );
                      },
                      child: CircleAvatar(
                        child: Image.asset('assets/Splash.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                // Image.network(
                //
                //   width: 500,
                //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU',
                // ),
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    // color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(
                        // color: Colors.black,

                        ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppString.tranding,
                        style: Helper.textStylePrimary(
                            16, FontWeight.bold, Colors.black),
                      ),
                      Text(
                        AppString.see,
                        style: Helper.textStylePrimary(
                            16, FontWeight.normal, Colors.grey),
                      )
                    ],
                  ),
                ),

                //  Container(
                //
                //    height: 70,
                //   width: MediaQuery.of(context).size.width,
                //   child: ListView(
                //
                //      shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     padding: EdgeInsets.all(20),
                //     children: <Widget>[
                //       Container(
                //         color: Colors.black38,
                //         height: 65,
                //         width: 65,
                //       ),
                //
                //       Container(
                //         color: Colors.black38,
                //         height: 65,
                //         width: 65,
                //       ),
                //       Container(
                //         color: Colors.black38,
                //         height: 65,
                //         width: 65,
                //       )
                // // Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU')
                //     ],
                //   ),
                //  )
                //

                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return Card(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EditScreen()),
                            );
                          },
                          child: Container(
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU',
                              width: 75,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(AppString.upcoming,
                          style: Helper.textStylePrimary(
                              16, FontWeight.bold, Colors.black)),
                      Text(AppString.see,
                          style: Helper.textStylePrimary(
                              16, FontWeight.normal, Colors.grey))
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return Card(
                          child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU',
                        width: 75,
                        fit: BoxFit.cover,
                      ));
                    },
                  ),
                ),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppString.wish,
                        style: Helper.textStylePrimary(
                            16, FontWeight.bold, Colors.black),
                      ),
                      Text(AppString.see,
                          style: Helper.textStylePrimary(
                              16, FontWeight.normal, Colors.grey))
                    ],
                  ),
                ),
                Container(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, position) {
                      return Card(
                          child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZlf5lc5tX-0gY-y94pGS0mQdL-D0lCH2OQ&usqp=CAU',
                        width: 75,
                        fit: BoxFit.cover,
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
