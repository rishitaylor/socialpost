import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:newflutter/util/string.dart';

import '../util/helper.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({super.key});

  @override
  State<EditAccount> createState() => _EditAccountState();
}

class _EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.arrow_back_sharp),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    AppString.menu,
                    style: Helper.textStylePrimary(
                        16, FontWeight.bold, Colors.black),
                  ),
                ),
                Spacer(),
                Text(
                  'Save',
                  style:
                      Helper.textStylePrimary(16, FontWeight.bold, Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const TestScreen()),
                // );
              },
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
                radius: 50,
              ),
            )
          ],
        ),
      )),
    );
  }
}
