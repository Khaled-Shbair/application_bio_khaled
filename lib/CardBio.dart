import 'package:flutter/material.dart';

class CardBio extends StatelessWidget {
  const CardBio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      margin: EdgeInsetsDirectional.only(
        start: 40,
        end: 40,
      ),
      child: ListTile(
        leading: Icon(Icons.account_circle_outlined),
        title: Text('Name'),
        subtitle: Text('Khaled'),
        trailing:Icon(Icons.account_circle_outlined),
      ),
    );
  }
}
