import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/presentation/style/colors-dx.dart';

class ItemChatView extends StatelessWidget {
  final String name;
  final String msg;
  final String image;
  final bool point;
  const ItemChatView({Key? key, required this.name, required this.msg, required this.image, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        width: 100.w,
        height: 8.h,
        margin: EdgeInsets.all(5.sp),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.sp)),
        child: Row(
          children: [
            Expanded(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage:  AssetImage(image),
                  radius: 20.sp,
                )),
            Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      msg,
                      style: TextStyle(
                          color: Colors.white54, fontSize: 9.sp),
                    ),
                  ],
                )),
            Expanded(
                child:Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.sp),
                      child: const Text("12:00",style: TextStyle(color: textsColor),),
                    ),
                    Visibility(
                      visible: point,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 8.sp,
                        child: const Text("1",style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
