import 'package:flutter/material.dart';

class SavedProfilePosts extends StatelessWidget {
  const SavedProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height/3,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Image.asset(
              'assets/profile_photo/image${index + 1}.jpg',
              fit: BoxFit.cover,
            ),
          );
        },
      ),

    );
  }
}
