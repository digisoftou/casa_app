import 'package:flutter/material.dart';


class GridPhotosMainScreen extends StatelessWidget {
  const GridPhotosMainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: screenSize.height/5,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image1.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: screenSize.height/3,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topRight: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image2.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: screenSize.height/5,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image3.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 8),
              height: screenSize.height/3,
              width: screenSize.width * 0.58,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      bottomRight:  Radius.circular(20),
                      bottomLeft: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image4.jpg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              height: screenSize.height/2.5,
              width: screenSize.width * 0.58,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: const BorderRadius.only(
                      topLeft:  Radius.circular(20),
                      topRight: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image5.jpg',
                  fit: screenSize.height < 700
                    ? BoxFit.fitWidth
                    : BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              height: screenSize.height/5,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image6.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: screenSize.height/3,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image7.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 8),
              height: screenSize.height/5,
              width: screenSize.width * 0.208,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.4),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20)
                  )
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  'assets/main_images/main_image8.jpg',
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
