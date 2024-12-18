import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveIndicator extends StatelessWidget {
  const AdaptiveIndicator({
    super.key,
    required this.os,
    required this.color,
  });
  final String os;
  final Color color;

  @override
  Widget build(BuildContext context) {
    if (os == 'ios' || os == 'macos') {
      return CupertinoActivityIndicator(
        color: color,
      );
    } else {
      return CircularProgressIndicator(
        color: color,
      );
    }
  }
}
