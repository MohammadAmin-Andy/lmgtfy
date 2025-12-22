import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lmgtfy/persian/model/constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      body: SafeArea(
        child: Column(
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
                ),
              ),
            ),
            Image.asset('assets/images/logo.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: SvgPicture.asset('assets/images/search.svg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
