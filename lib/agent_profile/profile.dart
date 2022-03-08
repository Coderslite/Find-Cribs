import 'package:find_cribs/agent_profile/agent_profile_listing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const    SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Row(
                children: [
                  Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          color: const Color(0xFFF0F7F8),
                          borderRadius: BorderRadius.circular(8)),
                      child:  const Icon(Icons.arrow_back_ios)),
                ],
              ),
            ),
            const  SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                const   CircleAvatar(
                    radius: 70,
                    backgroundImage:
                    AssetImage("assets/images/owner_picture.png")),
                Positioned(
                    top: 0,
                    left: 100,
                    right: 5,
                    child: Image.asset("assets/images/tick.png")),
              ],
            ),
            const    Text(
              "James Allen",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const     SizedBox(
              height: 5,
            ),
            const   Text(
              "Property owner",
              style: TextStyle(color: Colors.grey),
            ),
            const  SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset("assets/svgs/star_spur.svg"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "4.4 Ratings",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            const  SizedBox(
              height: 20,
            ),
            const Divider(
              height: 1,
              color: Colors.grey,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.w600,),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Lorem Ipsum is a simpl  y dummy text of the printing and typesetting\n"
                  "industry. Lorem ipsum has been the industry's standard dummy text\n"
                  "ever since the 1500s, when an unknown printer took a galley of type\n"
                  "             and scrambled it to make a type specimen book",
              style: TextStyle(color: Colors.grey, fontSize: 10,),
            ),
            const    SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFF0072BA), width: 1)),
                  child: const Icon(
                    Icons.call,
                    color: Color(0xFF0072BA),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color:  const Color(0xFF0072BA), width: 1)),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Color(0xFF0072BA),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFF0072BA), width: 1)),
                  child: Center(
                    child: SizedBox(
                      child: SvgPicture.asset("assets/svgs/chat.svg"),
                      height: 24,
                    ),
                  ),

                ),

                const    SizedBox(
                  width: 10,
                ),
                Container(
                  width: 60,
                  height: 1,
                  color: Colors.grey,
                ),
              ],
            ),
            const    SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SalesScreen()));},
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey.withOpacity(0.2))),
                child: Row(
                  children: [
                    const  SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/house.png"),
                    const    SizedBox(
                      width: 15,
                    ),
                    const   Text(
                      "All listings",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    const   SizedBox(
                      width: 150,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const    SizedBox(
                      width: 16,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.3),)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {},
              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1,
                        color: Colors.grey.withOpacity(0.2))),
                child: Row(
                  children: [
                    const   SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/play.png"),
                    SizedBox(width:8),
                    const     Text(
                      "View Story",
                      style: TextStyle(fontWeight: FontWeight.w400),
                    ),
                    const   SizedBox(
                      width: 140,
                    ),
                    Container(
                      width: 30,
                      height: 20,
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Center(
                          child: Text(
                            "12",
                            style: TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                          )),
                    ),
                    const  SizedBox(
                      width:15,
                    ),
                    Icon(Icons.arrow_forward_ios,color: Colors.grey.withOpacity(0.3))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}