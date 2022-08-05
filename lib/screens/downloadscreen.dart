import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newflutter/util/string.dart';

import '../util/helper.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppString.allyourdesigns,
                style:
                    Helper.textStylePrimary(22, FontWeight.bold, Colors.black)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Image.asset('assets/ImgBox.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ImgBox.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ImgBox.png'),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset('assets/ImgBox.png'),
                SizedBox(
                  width: 5,
                ),
                Image.asset('assets/ImgBox.png'),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
