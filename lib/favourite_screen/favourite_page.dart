import 'package:find_cribs/favourite_screen/favourite_agent.dart';
import 'package:find_cribs/favourite_screen/favourite_listings.dart';
import 'package:find_cribs/widgets/agent_listings.dart';
import 'package:find_cribs/widgets/property_listings.dart';
import 'package:flutter/material.dart';
import 'package:find_cribs/components/constants.dart';
class FavouritePageScreen extends StatelessWidget {
  const FavouritePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text("Favourite Agents", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700
                    )
                    ),
                  ),
                  ElevatedButton(
                    // Connect EndPoint
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavouriteAgentScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(86, 25),
                        primary: mobileButtonColor),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonTextColor,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 14,),

            // agent lists
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(19, 0, 19, 15),
                    child: Agent_Listings()
                  );
                },
              ),
            ),
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                      child: Text("Favourite Listings", style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w700
                      )
                    ),
                  ),
                  ElevatedButton(
                    // Connect EndPoint
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FavouriteListingScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(86, 25),
                        primary: mobileButtonColor),
                    child: const Text(
                      'View All',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          color: mobileButtonTextColor,
                          fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            // property lists
            const SizedBox(height: 14),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.fromLTRB(19, 0, 19, 15),
                    child: Property_Listings()
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
