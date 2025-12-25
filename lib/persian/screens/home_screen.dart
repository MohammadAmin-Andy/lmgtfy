import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lmgtfy/persian/model/constants/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(color: greyColor),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ),
                    child: Text(
                      ":: کسی به جای گوگل کردن از شما سوال پرسیده؟ چیزی که باید گوگل می کرد رو بنویسید، کلیک کنید و لینکی که تولید می شه رو براش بفرستین(:",
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Image.asset('assets/images/mouse_arrow.png'),
              ],
            ),
            Spacer(),
            Image.asset('assets/images/logo.png'),

            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide(
                      style: BorderStyle.solid,
                      color: greyColor,
                    ),
                  ),
                  prefixIcon: Icon(Icons.search, color: Colors.black45),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Center(
                    child: Text(
                      "I'm Feeling Lucky",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  decoration: BoxDecoration(
                    color: greyColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Center(
                    child: Text(
                      "Google Search",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('مَمین'),
                      SizedBox(width: 10),
                      Text("سایت اصلی"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/github.svg'),
                      SizedBox(width: 10),
                      Text("GOOGLE is a trademark of Google Inc."),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
