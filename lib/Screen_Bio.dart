import 'package:flutter/material.dart';

class Screen_Bio extends StatelessWidget {
  const Screen_Bio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Bio',
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.black,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'https://media.istockphoto.com/vectors/sunbeams-bright-rays-background-vector-id1285308552?k=20&m=1285308552&s=170667a&w=0&h=miA83drtvWjs0rt5fA21v1yqrexe47r-j-aFO6_Ivnw=',
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          CircleAvatar(
            backgroundImage: ,
            radius: 40,
          ),
        ],
      ),
    );
  }
}
