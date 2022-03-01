import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Agent_Listings extends StatelessWidget {
  const Agent_Listings({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE0E0E0), width: .3,
        ),
        borderRadius: BorderRadius.circular(10),

      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 9, horizontal: 14),
        leading: const CircleAvatar(
          radius: 31,
          backgroundImage: AssetImage("assets/images/profile_picture.png")
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Joshua Olaribigbe", style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w700, color: Color(0xFF4F5E76)
            ),),
            const SizedBox(height: 3,),
            const Text("Property owner", style: TextStyle(
                fontSize: 10, fontWeight: FontWeight.w500, color: Color(0xFF4F5E76)
            ),),
            const SizedBox(height: 5,),
            Row(
              children: [
                SvgPicture.asset('assets/svgs/star_spur.svg'),
                const SizedBox(width: 4.33,),
                const Text("4.4 Ratings", style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF4F5E76)
                ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}