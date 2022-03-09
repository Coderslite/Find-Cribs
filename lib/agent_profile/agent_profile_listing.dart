import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SalesScreen extends StatefulWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends State<SalesScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        // appBar: PreferredSize(
        //   preferredSize: const Size.fromHeight(70),
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 8.0),
        //     child: AppBar(
        //       elevation: 2,
        //       backgroundColor: Colors.white,
        //       title: ,
        //     ),
        //   ),
        // ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFFF0F7F8),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black,
                        )),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "James Allen",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/svgs/star_spur.svg"),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "4.4  Ratings",
                                  style:
                                  TextStyle(color: Colors.grey, fontSize: 10),
                                )
                              ])
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: CircleAvatar(
                              radius: 25,
                              child:
                              Image.asset("assets/images/owner_picture.png")),
                        ),
                        Positioned(
                            left: 35,
                            right: 10,
                            top: 0,
                            child: Image.asset("assets/images/tick.png"))
                      ],
                    )
                  ],
                ),
                const TabBar(
                  indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 2.0,color: Colors.grey),
                      insets: EdgeInsets.symmetric(horizontal:5.0,)
                  ),
                  indicatorPadding:  EdgeInsets.only( bottom: 3),
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorColor: Colors.grey,
                  labelPadding: EdgeInsets.only(right: 90),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Sales',
                    ),
                    Tab(
                      text: 'Rent',
                    ),
                  ],
                ),
                Expanded(
                    child: TabBarView(
                      children: [
                        gridProperty(),
                        gridProperty(),
                      ],
                    ))
              ],
            ),
          ),
        ),

      ),
    );
  }
}

Widget gridProperty() {
  return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 3, mainAxisSpacing: 3),
      itemCount: 15,
      itemBuilder: (BuildContext context, index) {
        return Image.asset("assets/images/property_picture.png");
      });
}