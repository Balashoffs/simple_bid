// import 'package:cada/src/presentation/common/skeletons/core/shimmer.dart';
// import 'package:flutter/material.dart';
// import '../core/skeleton.dart' show _SkeletonWidget;
//
// class SkeletonTile extends StatelessWidget {
//   final Widget child;
//
//   const SkeletonTile({
//     Key? key,
//     required this.child,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     if (Shimmer.of(context) == null) {
//       return ShimmerWidget(
//         child: _SkeletonWidget(
//           isLoading: true, skeleton: child,
//           //  child: SizedBox()
//         ),
//       );
//     }
//
//     return child;
//   }
// }
