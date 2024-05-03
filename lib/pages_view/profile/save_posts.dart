import 'package:flutter/material.dart';

import '../../models/posts_model.dart';

class SavedProfilePosts extends StatelessWidget {
  const SavedProfilePosts({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      height: screenSize.height,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 1,
          crossAxisSpacing: 1,
        ),
        itemCount: postsList.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            child: Image.asset(
              postsList[index].image,
              fit: BoxFit.cover,
            ),
          );
        },
      ),

    );
  }
}
