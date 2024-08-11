import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 10.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "All",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 25.0,
                  height: 5.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(3.0)),
                )
              ],
            ),
            SizedBox(
              height: 4.0,
            ),
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: CachedNetworkImage(
                            imageUrl:
                                'https://picsum.photos/${200 + index}/${(index % 2 + 1) * 205}',
                        fit: BoxFit.cover,),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.more_horiz,size: 20.0,),
                      )
                    ],
                  );
                },
              ),
            )
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
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.home,
                        color: Colors.black,
                        size: 30.0.sp,
                      ),

                    Text(
                        "Home",
                        style: TextStyle(color: Colors.black),
                      ),

                  ],
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.only(left: 13.r),
                minWidth: 10.w,
                onPressed: () {
                },
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
                onPressed: () {
                },
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
                onPressed: () {
                },
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
                onPressed: () {
                  Get.toNamed('/profile');
                  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: Colors.grey,
                      size: 30.0.sp,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.grey),
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
