import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          // Back Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xffb1e6c7),
              minimumSize: const Size(40, 50),
              maximumSize: const Size(70, 70),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              shadowColor: Colors.black,
              elevation: 0,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xff4bb87b),
            ),
          ),
      
          // Center text with Spacer
          const Spacer(),
          Text(
            'Cart',
            style: GoogleFonts.montserrat(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class TopSearch extends StatelessWidget {
  const TopSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
    Row(
    children: [
    // Search Box
    Expanded(
    child: Container(
      height: 50, // fixed height for input
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_rounded, color: Color(0xffb5b5b5)),
          suffixIcon: Icon(Icons.bolt, color: Color(0xffb5b5b5)),
          hintText: "Vegetable",
          hintStyle: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: Color(0xffb5b5b5),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          fillColor: Color(0xffdfdfdf).withOpacity(0.3),
          filled: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
    ),
        ),

        SizedBox(width: MediaQuery.of(context).size.width * 0.04),

        // Search Button
        ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xff4bb87b),
        minimumSize: const Size(50, 50),
        maximumSize: const Size(70, 70),
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        ),
        shadowColor: Colors.black,
        elevation: 0,
        ),
        child: const Icon(Icons.add, color: Colors.white),
        ),
        ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.015),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // ✅ force children left
          children: [
            Row(
              children: [
                // your search box + button
              ],
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Search results for ',
                    style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const TextSpan(
                    text: " 'vegetable'",
                    style: TextStyle(
                      color: Color(0xff4bb87b),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ],
        );
  }
}

class VegDesign extends StatelessWidget {
  final String title;
  final String price;
  final String image;

  const VegDesign({
    super.key,
    required this.title,
    required this.image,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image fixed height
          SizedBox(
            height: 130,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Center(
                child: Image.network(image, fit: BoxFit.cover),
              ),
            ),
          ),
SizedBox(height:MediaQuery.of(context).size.height*0.015),
          // 👇 Expanded content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.w700)),
                  const Text("Fresh Fruits",
                      style: TextStyle(fontSize: 10, color: Colors.grey)),

                  const Spacer(), // ✅ Push price & button bottom par

                  Row(
                    children: [
                      Text(price,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff4bb87b),
                          fixedSize: const Size(40, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          padding: const EdgeInsets.all(8),
                        ),
                        child: const Icon(Icons.add, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );

  }
}
