import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_conference_app/Constants/appColors.dart';
import 'package:video_conference_app/Constants/appTextStyle.dart';
import 'package:video_conference_app/Constants/sizedBox.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20.r),
                  ),
                ),
                onPressed: () {},
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "New Meeting",
                    style: whiteButtonTextStyle.copyWith(fontSize: 14.sp),
                  ),
                ),
                icon: Icon(Icons.add, color: white),
              ),
              height20,
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 20.w),
                child: Divider(color: grey),
              ),
              height20,
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: white,
                  side: BorderSide(color: themeColor, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20.r),
                  ),
                ),
                onPressed: () {},
                label: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "Join Via Code",
                    style: themeButtonTextStyle.copyWith(fontSize: 14.sp),
                  ),
                ),
                icon: Icon(Icons.pin),
              ),
              height30,
              Image.asset("assets/images/bg.jpg", fit: BoxFit.cover),
            ],
          ),
        ),
      ),
    );
  }
}
