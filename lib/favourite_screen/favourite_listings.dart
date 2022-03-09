import 'package:find_cribs/favourite_screen/favourite_page.dart';
import 'package:flutter/material.dart';
import 'package:find_cribs/widgets/property_listings.dart';

class FavouriteListingScreen extends StatelessWidget {
  const FavouriteListingScreen({Key? key}) : super(key: key);

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
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.close, color: Color(0xFF0072BA),)
                  ),
                  Expanded(
                    child: Center(
                      child: Text("Favourite Listing", style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700
                      ),),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 14,),
            const Divider(color: Color(0xFFE0E0E0),),
            const SizedBox(height: 11,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Color(0xFFF9F9F9), filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none
                  ),
                  hintText: "Search for agent by name...",
                  prefixIcon: Icon(Icons.search, color: Color(0xFFB1B1B1))
                ),
              ),
            ),
            const SizedBox(height: 14,),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(0),
                itemCount: 10,
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

