import 'package:flutter/material.dart';

class Property_Listings extends StatelessWidget {
  const Property_Listings({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFFE0E0E0), width: .3,
        ),
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        children: [
          Image.asset('assets/images/property_image.png', height: 100, width: 126,),
          const SizedBox(width: 24.06),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("\$40,000,000", style: TextStyle(
                    fontSize: 17, fontWeight: FontWeight.w700, color: Color(0xFF09172D)
                ),),
                const SizedBox(height: 7,),
                const Text("34, Koforidua Street,", style: TextStyle(
                    fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF304059)
                ),),
                const Text("Wuse, Abuja", style: TextStyle(
                    fontSize: 10, fontWeight: FontWeight.w400, color: Color(0xFF8A99B1)
                ),),
                const SizedBox(height: 8.64,),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF8FEFF),
                      borderRadius: BorderRadius.circular(7)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.bed_rounded, color: Color(0xFF8A99B1), size: 9,),
                      const SizedBox(width: 3,),
                      const Text("x2", style: TextStyle(
                          color: Color(0xFF8A99B1), fontSize: 9, fontWeight: FontWeight.w700
                      ),),

                      const SizedBox(width: 14,),

                      const Icon(Icons.bathroom_rounded, color: Color(0xFF8A99B1), size: 9,),
                      const SizedBox(width: 3,),
                      const Text("x2", style: TextStyle(
                          color: Color(0xFF8A99B1), fontSize: 9, fontWeight: FontWeight.w700
                      ),),

                      const SizedBox(width: 14,),

                      const Icon(Icons.crop_square, color: Color(0xFF8A99B1), size: 9,),
                      const SizedBox(width: 3,),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(text: "764", style: TextStyle(
                                color: Color(0xFF8A99B1), fontSize: 9, fontWeight: FontWeight.w700
                            ),),
                            TextSpan(text: " sqft", style: TextStyle(
                                color: Color(0xFF8A99B1), fontSize: 5, fontWeight: FontWeight.w500
                            ),),
                          ]
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          )
        ],
      ),
    );
  }
}