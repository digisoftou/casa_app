
import 'dart:math';
import 'package:casa_app/CasaColors.dart';
import 'package:casa_app/pages_view/splash_screen/promo_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget  {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
 late AnimationController animationController;
 late Tween<double> tween;
 late Animation<double> animation;
 late Animation<double> fadeAnimation;
 late AnimationController controller;

 @override
 void dispose() {
   animationController.dispose();
   super.dispose();
 }

 @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this,
      duration: Duration(seconds: 3)
    );
    fadeAnimation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);
    controller.forward();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    tween = Tween<double>(begin: 10, end: 3);
    final Animation<double> curve = CurvedAnimation(
        parent: animationController,
        curve: Curves.ease);
    animation = tween.animate(curve);
    animationController.repeat(reverse: true);



  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;


    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PromoPage()),
        );
      }
    });

    return Scaffold(
      backgroundColor: CasaColors.whiteBackground,
      body: Stack(
        children: [
          CustomPaint(
            painter: SplashPainter(animation, screenSize.height, screenSize.width),
            child: SizedBox.expand(),
          ),
          Center(
            child: Container(
              width: screenSize.width - 40,
              height: screenSize.width - 40,
              child: StatefulBuilder(
                builder: (context, setState) {
                  return FadeTransition(
                    opacity: fadeAnimation,
                    child: Image.asset('assets/logo/9cd85e748dd94a37d9e800b321312986.png'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SplashPainter extends CustomPainter {
  Animation<double> anim;
  List<Offset> path = [];
  List<Offset> path2 = [];
  double screenWidth;
  double screenHeight;

  SplashPainter(this.anim, this.screenHeight, this.screenWidth) : super(repaint: anim) {
    _generate();
  }

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < path.length; i++) {
      Color circleColor;
      if (i < 13) {
        circleColor = CasaColors.black;
      } else if (i >= 13 && i < 20) {
        circleColor = CasaColors.iconsColor;
      } else if (i >= 20 && i < 27) {
        circleColor = CasaColors.dividerGrey;
      } else {
        circleColor = CasaColors.grey;
      }

      final p = Path();
      p.addOval(
        Rect.fromCircle(
          center: Offset(
            path[i].dx - ((path[i].dx - path2[i].dx) / anim.value),
            path[i].dy - ((path[i].dy - path2[i].dy) / anim.value),
          ),
          radius: i.isEven ? 10 : 7,
        ),
      );
      canvas.drawPath(p, Paint()..color = circleColor);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(covariant CustomPainter oldDelegate) => true;

  void _generate() async {
    for (var i = 0; i < 40; i++) {
      path.add(Offset(Random().nextDouble() * screenWidth * 1.5,
          Random().nextDouble() * screenHeight * 1.5));
      path2.add(Offset(Random().nextDouble() * screenWidth * 1.5,
          Random().nextDouble() * screenHeight * 1.5));
    }
  }
}
