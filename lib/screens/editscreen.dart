import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newflutter/screens/downloadscreen.dart';
import 'package:newflutter/util/string.dart';

import '../util/helper.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({Key? key}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_sharp),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/Republic.png',
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(AppString.like,
                      style: Helper.textStylePrimary(
                          22, FontWeight.bold, Colors.black)),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Save design or edit details below',
                      labelStyle: TextStyle(
                        color: Color(0xFF6200EE),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                    ),
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
                          backgroundColor: Colors.blueGrey[50],
                          fixedSize: const Size(double.maxFinite, 50),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.edit_off),
                            Text(
                              'Edit Business Details',
                              style: GoogleFonts.poppins(
                                color: Colors.blue,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                              // style: TextStyle(color: Colors.white),
                            ),
                          ],
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        // backgroundColor: Color(AppColors.primaryColor),
                        backgroundColor: Colors.blueAccent,
                        fixedSize: const Size(double.maxFinite, 50),
                      ),
                      onPressed: () {
                        showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 250,
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const DownloadScreen()),
                                        );
                                      },
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            AppString.png,
                                            style: Helper.textStylePrimary(16,
                                                FontWeight.bold, Colors.black),
                                          ),
                                          Text(
                                            'High quality image',
                                            style: Helper.textStylePrimary(16,
                                                FontWeight.normal, Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      AppString.jpg,
                                      style: Helper.textStylePrimary(
                                          16, FontWeight.bold, Colors.black),
                                    ),
                                    Text(
                                      'Small quality image',
                                      style: Helper.textStylePrimary(
                                          16, FontWeight.normal, Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    Text(
                                      AppString.pdf,
                                      style: Helper.textStylePrimary(
                                          16, FontWeight.bold, Colors.black),
                                    ),
                                    Text(
                                      'Print Quality Document Format',
                                      style: Helper.textStylePrimary(
                                          16, FontWeight.normal, Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    // ElevatedButton(
                                    //   child: const Text('Close BottomSheet'),
                                    //   onPressed: () => Navigator.pop(context),
                                    // )
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Text(
                        'Save Image As..',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        // style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
