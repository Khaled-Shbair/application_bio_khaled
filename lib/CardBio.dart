import 'package:flutter/material.dart';

class CardBio extends StatelessWidget {
  final double marginBottom;
  final IconData leadingIcon;

  //final IconData trailingIcon;
  final String title;
  final String subtitle;
  final void Function() onPressedFunction;

  const CardBio({
    required this.leadingIcon,
    required this.subtitle,
    required this.title,
    // required this.trailingIcon,
    required this.onPressedFunction,
    this.marginBottom = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      margin: EdgeInsetsDirectional.only(
        start: 40,
        end: 40,
        bottom: marginBottom,
      ),
      child: ListTile(
        leading: IconButton(
          onPressed: onPressedFunction,
          icon: Icon(
            leadingIcon,
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}