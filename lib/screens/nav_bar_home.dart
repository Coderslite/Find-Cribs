import 'package:find_cribs/components/constants.dart';
import 'package:find_cribs/screens/chats_screen.dart';
import 'package:find_cribs/screens/favorite_page.dart';
import 'package:find_cribs/screens/home_page.dart';
import 'package:find_cribs/screens/user_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({Key? key}) : super(key: key);

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  final _screens = [
    const HomePageScreen(),
    const FavoritesScreen(),
    const ChatScreen(),
    const UserProfileScreen(),
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        height: 64.h,
        width: 64.w,
        child: FloatingActionButton(
          elevation: 9,
          backgroundColor: mobileButtonColor,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 27.73,
          ),
        ),
      ),
      body: IndexedStack(
        children: _screens,
        index: selectedIndex,
      ),
      bottomNavigationBar: SizedBox(
        height: 64.h,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          backgroundColor: Colors.white,
          currentIndex: selectedIndex,
          elevation: 10,
          onTap: (int value) {
            setState(() {
              selectedIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Color(0xFF8A99B1),
              ),
              label: 'Home',
              activeIcon: SvgPicture.asset(
                'assets/icons/Vectorhome.svg',
                color: mobileButtonColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
                color: Color(0xFF8A99B1),
              ),
              label: 'Accounts',
              activeIcon: SvgPicture.asset(
                'assets/icons/Vectorlikes.svg',
                color: mobileButtonColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/Vectorchat.svg',
                color: Color(0xFF8A99B1),
              ),
              label: 'Subscriptions',
              activeIcon: SvgPicture.asset(
                'assets/icons/Vectorchat.svg',
                color: mobileButtonColor,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Vectorprofile.svg',
                  color: Color(0xFF8A99B1)),
              label: 'Profile',
              activeIcon: SvgPicture.asset(
                'assets/icons/Vectorprofile.svg',
                color: mobileButtonColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
