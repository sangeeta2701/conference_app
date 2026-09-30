import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:video_conference_app/Constants/appColors.dart';
import 'package:video_conference_app/Constants/appTextStyle.dart';
import 'package:video_conference_app/Constants/sizedBox.dart';

class NewMeetingScreen extends StatelessWidget {
   const NewMeetingScreen({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: Icon(Icons.arrow_back_ios, color: black,size: 20.sp,)),
              ),

                height30,
                Image.asset("assets/images/new3.jpg", fit: BoxFit.cover,height: 150.h,),
                height20,
                Text("Your meeting is ready", style: blackContentHeadingStyle,),
                height20,
                Card(
                  elevation: 2,
                  color: grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  
                  child: ListTile(
                    leading: Icon(Icons.link),
                    title: SelectableText("hfbyh3", style: blackContentStyle,),
                    trailing: Icon(Icons.copy),
                  ),
                ),
                 Divider(color: grey, height: 40.h, indent: 40.w, endIndent: 40.w,),
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
                    "Share Invite",
                    style: whiteButtonTextStyle.copyWith(fontSize: 14.sp),
                  ),
                ),
                icon: Icon(Icons.arrow_drop_down, color: white),
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
                onPressed: () {
               
                },
                label: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text(
                    "Start Call",
                    style: themeButtonTextStyle.copyWith(fontSize: 14.sp),
                  ),
                ),
                icon: Icon(Icons.video_call),
              ),
                 
              
            ],
          ),
        ),
      ),
    );
  }
}