import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutter/screens/editaccount.dart';
import 'package:newflutter/util/string.dart';

import '../util/helper.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              AppString.menu,
              style: Helper.textStylePrimary(22, FontWeight.bold, Colors.black),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  maxRadius: 25,
                  minRadius: 20,
                  child: Image.asset('assets/profile.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Leslie Alexander',
                        style: Helper.textStylePrimary(
                            18, FontWeight.bold, Colors.black),
                      ),
                      Text(
                        'Dyson Industrie',
                        style: Helper.textStylePrimary(
                            18, FontWeight.normal, Colors.grey),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditAccount()),
                    );
                  },
                  child: Text('Edit',
                      style: Helper.textStylePrimary(
                          18, FontWeight.bold, Colors.blue)),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Icon(Icons.image_outlined),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('My Designs',
                      style: Helper.textStylePrimary(
                          18, FontWeight.normal, Colors.black)),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.diamond_outlined),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Refer and Earn',
                      style: Helper.textStylePrimary(
                          18, FontWeight.normal, Colors.black)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.language),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('My Designs',
                      style: Helper.textStylePrimary(
                          18, FontWeight.normal, Colors.black)),
                )
              ],
            ),
            Row(
              children: [
                Icon(Icons.feedback_outlined),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Feedback',
                      style: Helper.textStylePrimary(
                          18, FontWeight.normal, Colors.black)),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    // backgroundColor: Color(AppColors.primaryColor),
                    backgroundColor: Colors.grey[300],
                    fixedSize: const Size(double.maxFinite, 50),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.paid,
                        color: Color(0xffF0AF07),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Get Pro Access',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    // backgroundColor: Color(AppColors.primaryColor),
                    backgroundColor: Colors.red[100],
                    fixedSize: const Size(double.maxFinite, 50),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Logout',
                        style: GoogleFonts.poppins(
                          color: Color(0xffFF2727),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        // style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.logout_outlined,
                        color: Color(0xffFF2727),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.center,
                child: Text(
                  'App Version 1.0',
                  style: Helper.textStylePrimary(
                      18, FontWeight.normal, Colors.grey),
                ))
          ],
        ),
      )),
    );
  }
}
