import 'package:flutter/material.dart';

class CardImage extends StatelessWidget {
  const CardImage({required this.image, this.onPressed, Key? key})
      : super(key: key);

  final ImageProvider image;
  final Function()? onPressed;
  final _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 300,
      height: 180,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _image(),
          _customInkwell(),
        ],
      ),
    );
  }

  Widget _image() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_borderRadius),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(_borderRadius),
        child: Image(
          image: image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _customInkwell() {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(_borderRadius),
        onTap: onPressed,
      ),
    );
  }
}
