import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:untitled3/business_logic/home_logic/home_logic.dart';

import '../../style/colors-dx.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  late TabController myControl;
  late HomeLogic cubit;
  @override
  void initState() {
    cubit = HomeLogic.get(context);
    myControl =
        TabController(length: 4, vsync: this, initialIndex: cubit.pageSelect);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeLogic, HomeState>(
      builder: (context, state) {
        return Scaffold(
          key: _key,
          backgroundColor: barcolor,
          appBar: AppBar(
            backgroundColor: backgroundColor,
            elevation: 0,
            centerTitle: false,
            title: Text(
              "Whats App",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1.sp,
                  fontSize: 14.sp),
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 23.sp,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 23.sp,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 23.sp,
                  ))
            ],
            bottom: TabBar(
                controller: myControl,
                indicatorColor: floatingActionButtonColor,
                isScrollable: false,
                indicatorWeight: 3.sp,
                labelColor: floatingActionButtonColor,
                onTap: (index) => cubit.selectPage(index)
                ,
                tabs: [
                  SizedBox(
                    width: 10.w,
                    child: const Tab(child: Icon(Icons.groups)),
                  ),
                  SizedBox(
                    width: 19.w,
                    child: const Tab(
                      child: Text("Chat"),
                    ),
                  ),
                  SizedBox(
                    width: 19.w,
                    child: const Tab(
                      child: Text("State"),
                    ),
                  ),
                  SizedBox(
                    width: 19.w,
                    child: const Tab(
                      child: Text("Calls"),
                    ),
                  ),
                ]),
          ),
          body: cubit.changePage(),
        );
      },
    );
  }
}
