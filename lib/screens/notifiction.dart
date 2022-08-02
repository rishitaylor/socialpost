import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newflutter/util/string.dart';

import '../util/helper.dart';

class NotiScreen extends StatefulWidget {
  const NotiScreen({super.key});

  @override
  State<NotiScreen> createState() => _NotiScreenState();
}

class _NotiScreenState extends State<NotiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_sharp),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    AppString.notifications,
                    style: Helper.textStylePrimary(
                        16, FontWeight.bold, Colors.black),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Image.asset('assets/Rectangle.png'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('The North Face Image is ready to',
                        style: Helper.textStylePrimary(
                            16, FontWeight.bold, Colors.black)),
                    Text('download now.',
                        style: Helper.textStylePrimary(
                            16, FontWeight.bold, Colors.black)),
                    Text('Amet minim mollit non deserunt',
                        style: Helper.textStylePrimary(
                            16, FontWeight.normal, Colors.grey)),
                    Text('ullamco est sit aliqua dolor do',
                        style: Helper.textStylePrimary(
                            16, FontWeight.normal, Colors.grey)),
                    Text('amet sint.',
                        style: Helper.textStylePrimary(
                            16, FontWeight.normal, Colors.grey)),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('2 minutes ago',
                    style: Helper.textStylePrimary(
                        16, FontWeight.normal, Color(0xff999999)))
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.black,
            )
          ],
        ),
      )),
    );
  }
}
