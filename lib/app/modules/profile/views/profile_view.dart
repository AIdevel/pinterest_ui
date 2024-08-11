import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(Icons.arrow_back_ios_new)),
              IconButton(onPressed: () {}, icon: Icon(Icons.share))
            ],
          ),
          SizedBox(
            height: 30.0.h,
          ),
          CircleAvatar(
            radius: 65.0.r,
            backgroundColor: Color(0xffe0e0e0),
          ),
          SizedBox(
            height: 5.0.h,
          ),
          Text(
            "Payal",
            style: TextStyle(fontSize: 27.0.sp, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 10.0.r,
                backgroundImage: AssetImage("images/pinterest.png"),
              ),
              Text(
                " pk0471725",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0.sp),
              )
            ],
          ),
          SizedBox(
            height: 8.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "0 followers ",
                style: TextStyle(fontSize: 17.0.sp),
              ),
              Text(
                "· 0 following",
                style: TextStyle(fontSize: 17.0.sp),
              )
            ],
          ),
          SizedBox(
            height: 28.0.h,
          ),
          Container(
            height: Get.height*0.078,
            width: Get.width*0.32,
            decoration: BoxDecoration(
              color: Color(0xffe0e0e0),
              borderRadius: BorderRadius.circular(40.0.w)
            ),
            child: TextButton(
              onPressed: () {},
              child: Text("Edit Profile",style: TextStyle(fontSize: 17.0.sp,fontWeight: FontWeight.w500,color: Colors.black),),
            ),
          ),
          SizedBox(
            height: 26.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text("Created",style: TextStyle(fontSize: 18.0.sp,fontWeight: FontWeight.w600),),
                  Container(
                    height: 6.0.h,
                    width: Get.width*0.14,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8.0.w)
                    ),
                  )
                ],
              ),
              SizedBox(width: 11.0.w,),
              Column(
                children: [
                  Text("Saved",style: TextStyle(fontSize: 18.0.sp,fontWeight: FontWeight.w600),),
                  Container(
                    height: 6.0.h,
                    width: Get.width*0.16,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0.w)
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 35.0.h,
          ),
          Text("Inspire with a Pin",style: TextStyle(fontSize: 20.0.sp,fontWeight: FontWeight.w600),),
          SizedBox(
            height: 8.0.h,
          ),
          Container(
            // height: Get.height*0.078,
            // width: Get.width*0.32,
            decoration: BoxDecoration(
                color: Color(0xffd50000),
                borderRadius: BorderRadius.circular(40.0.w)
            ),
            child: TextButton(
              onPressed: () {},
              child: Text("Create",style: TextStyle(fontSize: 20.0.sp,fontWeight: FontWeight.w500,color: Colors.white),),
            ),
          ),
        ],
      ),
    ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.zero,
        height: 46.h,
        notchMargin: 0.0,
        child: Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 10.w,
                onPressed: () {
                  Get.toNamed('/home');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.grey,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.only(left: 13.r),
                minWidth: 10.w,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.only(left: 15.r),
                minWidth: 10.w,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.grey,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Create",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.only(left: 15.r),
                minWidth: 10.w,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.grey,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Notification",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.only(left: 15.r),
                minWidth: 10.w,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
