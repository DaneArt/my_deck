import 'package:flutter/cupertino.dart';

class CroppedClipper extends CustomClipper<Path> {
  final double leftTopCropRadius;
  final double rightTopCropRadius;
  final double rightBottomCropRadius;
  final double leftBottomCropRadius;

  CroppedClipper(
      {this.leftTopCropRadius = 0,
      this.rightTopCropRadius = 0,
      this.rightBottomCropRadius = 0,
      this.leftBottomCropRadius = 0});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, leftTopCropRadius);
    path.lineTo(leftTopCropRadius, 0);
    path.lineTo(size.width - rightTopCropRadius, 0);
    path.lineTo(size.width, rightTopCropRadius);
    path.lineTo(size.width, size.height - rightBottomCropRadius);
    path.lineTo(size.width - rightBottomCropRadius, size.height);
    path.lineTo(leftBottomCropRadius, size.height);
    path.lineTo(0, size.height - leftBottomCropRadius);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
