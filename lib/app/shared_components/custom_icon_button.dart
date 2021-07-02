import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {required this.icon,
      required this.label,
      required this.onPressed,
      this.primary,
      this.onPrimary,
      Key? key})
      : super(key: key);

  final IconData icon;
  final String label;
  final Function() onPressed;
  final Color? primary;
  final Color? onPrimary;

  final double _borderRadius = 15;

  @override
  Widget build(BuildContext context) {
    final _defaultPrimary = Theme.of(context).buttonColor;
    final _defaultOnPrimary = Colors.white;

    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  (primary ?? _defaultPrimary).withOpacity(.8),
                  primary ?? _defaultPrimary
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(_borderRadius),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Icon(
                    icon,
                    size: 28,
                    color: onPrimary ?? _defaultOnPrimary,
                  ),
                ),
                onTap: onPressed,
                highlightColor:
                    (onPrimary ?? _defaultOnPrimary).withOpacity(.1),
                overlayColor: MaterialStateProperty.all(
                  (onPrimary ?? _defaultOnPrimary).withOpacity(.3),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
          Text(
            GetUtils.capitalizeFirst(label)!,
            style: TextStyle(fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
