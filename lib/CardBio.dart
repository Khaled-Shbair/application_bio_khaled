import 'package:flutter/material.dart';

class CardBio extends StatelessWidget {
  final double marginBottom;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final String title;
  final String subtitle;
  final void Function() onPressedFunction;

  const CardBio({
    required this.leadingIcon,
    required this.subtitle,
    required this.title,
    required this.trailingIcon,
    required this.onPressedFunction,
    this.marginBottom = 0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsetsDirectional.only(
        start: 40,
        end: 40,
        bottom: marginBottom,
      ),
      child: ListTile(
        leading: Icon(leadingIcon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: IconButton(
          onPressed: onPressedFunction,
          icon: Icon(trailingIcon),
        ),
      ),
    );
  }
}
