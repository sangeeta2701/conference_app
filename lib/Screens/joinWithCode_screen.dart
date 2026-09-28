import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:video_conference_app/Constants/appColors.dart';
import 'package:video_conference_app/Constants/appTextStyle.dart';
import 'package:video_conference_app/Constants/sizedBox.dart';

class JoinWithCodeScreen extends StatelessWidget {
   JoinWithCodeScreen({super.key});

  TextEditingController codeController = TextEditingController();

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
                Image.asset("assets/images/code.jpg", fit: BoxFit.cover,height: 150.h,),
                height20,
                Text("Enter meeting code below", style: blackContentHeadingStyle,),
                height20,
                Card(
                  elevation: 2,
                  color: grey.shade300,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: TextField(
                    controller: codeController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Example: abc-efg-dhi"
                      
                    ),
                  ),
                ),
                height20,
                 ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(20.r),
                  ),
                ),
                onPressed: () {},
               child: Text("Join", style: whiteButtonTextStyle.copyWith(fontSize: 14.sp),),
               
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}