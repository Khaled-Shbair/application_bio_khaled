import 'package:flutter/material.dart';
import 'CardBio.dart';

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
            color: Colors.yellow,
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.network(
            'image/Untitled-1.png',
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('image/خالد.jpg'),
                radius: 40,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Khaled Shbair',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                'Flutter Coruse - Vision Plus',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w300,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.black,
                thickness: 1,
                indent: 40,
                endIndent: 40,
              ),
              CardBio(
                leadingIcon: Icons.account_circle,
                onPressedFunction: () {
                  print('Full name: Khaled Shbair');
                },
                title: 'Full name',
                subtitle: 'Khaled Shbair',
                marginBottom:10,
              ),
              CardBio(
                leadingIcon: Icons.collections_bookmark_outlined,
                onPressedFunction: () {
                  print('Course Name: Flutter');
                },
                title: 'Course Name',
                subtitle: 'Flutter',
                marginBottom: 10,
              ),
              CardBio(
                leadingIcon: Icons.email,
                onPressedFunction: () {
                  print('Email : khaled.shbair12@gmail.com');
                },
                title: 'Email',
                subtitle: 'khaled.shbair12@gmail.com',
                marginBottom:10,
              ),
              CardBio(
                leadingIcon: Icons.phone,
                onPressedFunction: () {
                  print('Full name: +970599724037');
                },
                title: 'Mobile',
                subtitle: '+970599724037',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
