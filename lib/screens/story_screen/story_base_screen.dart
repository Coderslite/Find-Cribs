import 'package:flutter/material.dart';


class StoryBaseScreen extends StatefulWidget {
  const StoryBaseScreen({Key? key}) : super(key: key);

  @override
  State<StoryBaseScreen> createState() => _StoryBaseScreenState();
}

class _StoryBaseScreenState extends State<StoryBaseScreen> {

  int _currentIndex = 0;



  @override
  Widget build(BuildContext context) {
    List<StoryItem> _storyItems = [
      StoryItem(StoryType.Text, "Get started by clicking on (Pick Favorite) on homepage to see who is posting. Pick as many as you can to never miss any update on Property Market.", "#FEC121"),
      StoryItem(StoryType.Image, "assets/images/onboarding1.png", "#FEC121"),
      StoryItem(StoryType.Text, "As Agent, Estate companies, consultants, Property owners, You can now share vital information to Clients on Properties Investment/ Sales, Daily Update and Offers", "#EEC1BB"),
      StoryItem(StoryType.Image, "assets/images/onboarding2.png", "#FEC121"),
    ];

    return Scaffold(
      body: Stack(
        children: [

          Positioned.fill(
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              itemCount: _storyItems.length,
              itemBuilder: (context, index) {
                final storyItem = _storyItems[index];
                return storyItem.storyType == StoryType.Text ? Container(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  // color: const Color(0xFFFEC121),
                  color: storyItem.backgroundColor.toColor(),
                  child: const Center(
                    child: Text("Watch videos and see what's happening in the Real Estate market today with your favorite Agents, Real Estate companies, Estate Consultants, Property managers and Property owners.", style: TextStyle(
                      color: Color(0xFFFFFFFF), fontSize: 24, fontWeight: FontWeight.w600
                    ), textAlign: TextAlign.center,),
                  ),
                ) : Container(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(storyItem.content)
                    )
                  ),
                );
              },
            ),
          ),

          Positioned(
            top: 43,
            left: 15, right: 15,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ...List.generate(_storyItems.length, (index) => Expanded(
                      child: Container(
                        height: 2,
                        margin: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index == _currentIndex ? Colors.white : const Color(0xFFFFFFFF).withOpacity(.30)
                        ),
                      ),
                    )),
                  ],
                ),
                const SizedBox(height: 7,),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 16,
                      backgroundImage: AssetImage('assets/images/image 10.png'),
                    ),
                    Spacer(),
                    Icon(Icons.more_horiz, color: Colors.white,),
                    SizedBox(width: 15,),
                    Icon(Icons.close, color: Colors.white,)
                  ],
                )
              ],
            ),
          ),

        ],
      ),
    );
  }
}


class StoryItem {
  StoryType storyType = StoryType.Text;
  String content = '';
  String backgroundColor = "";

  StoryItem(this.storyType, this.content, this.backgroundColor);
}

enum StoryType {Text, Image, Video}

extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}
