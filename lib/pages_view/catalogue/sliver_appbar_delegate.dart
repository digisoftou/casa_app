import 'package:flutter/cupertino.dart';

class SliverAppbarDelegate extends SliverPersistentHeaderDelegate {
  final double maxHeight;
  final double minHeight;
  final Widget child;

  SliverAppbarDelegate(
      {Key? key, required this.maxHeight, required this.minHeight, required this.child});


  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) => SizedBox.expand(child: child,);

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(SliverAppbarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }

}