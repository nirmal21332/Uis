import 'package:flutter/material.dart';

class SocialButtonsDemo extends StatelessWidget {
  const SocialButtonsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Social Login Buttons")),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // Google Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Google login logic
                },
                icon: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/281/281764.png",
                  height: 24,
                  width: 24,
                ),
                label: Text("Continue with Google"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  side: BorderSide(color: Colors.grey.shade300),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 1),

            // Facebook Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () {
                  // Facebook login logic
                },
                icon: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/124/124010.png",
                  height: 24,
                  width: 24,
                ),
                label: Text("Continue with Facebook"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1877F2), // FB Blue
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
