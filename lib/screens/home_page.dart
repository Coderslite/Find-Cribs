import 'package:find_cribs/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mobileBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 47),
              child: Row(
                children: [
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: SizedBox(
                      height: 32.h,
                      child: Text(
                        'FindCribs',
                        style: TextStyle(
                            fontFamily: kFontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 24.sp),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      'assets/icons/Vectorsearch.svg',
                      height: 15.83.h,
                      width: 15.83.w,
                    ),
                  ),
                  SizedBox(
                    width: 25.5.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 33.w),
                    child: IconButton(
                      iconSize: 18,
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_none,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25.h),
            Row(
              children: [
                StoryContainer(
                  statusName: 'Pick a favourite',
                  statusContent: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
            Divider(),
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Row(
                children: [
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontFamily: kFontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
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

class StoryContainer extends StatelessWidget {
  final Widget statusContent;
  final String statusName;
  const StoryContainer({
    Key? key,
    required this.statusName,
    required this.statusContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 20.w),
          height: 75.h,
          width: 75.w,
          decoration: BoxDecoration(
            color: mobileButtonColor,
            border: Border.all(
              width: 1.5,
              color: mobileButtonColor,
            ),
            shape: BoxShape.circle,
          ),
          child: statusContent,
        ),
        SizedBox(
          height: 8.h,
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            statusName,
            style: TextStyle(
                fontFamily: kFontFamily,
                fontWeight: FontWeight.w400,
                fontSize: 10.sp),
          ),
        ),
      ],
    );
  }
}
