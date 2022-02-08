import 'package:flutter/cupertino.dart';
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
          Image.asset(
            'image/Untitled-1.png',
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('image/khaled.jpg'),
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
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                color: Colors.transparent,
                indent: 40,
                endIndent: 40,
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(
                    start: 40, end: 40, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(41),
                      offset: const Offset(0, 3),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: ListTile(
                  leading: const Icon(
                    Icons.account_circle,
                    size: 30,
                  ),
                  title: const Text(
                    'Engineer',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: const Text(
                    'Momen M.Reyad Sisalem',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    print('Engineer: Momen M.Reyad Sisalem');
                  },
                ),
              ),
              CardBio(
                leadingIcon: Icons.email,
                onPressedFunction: () {
                  print('Email : khaled.shbair12@gmail.com');
                },
                title: 'Email',
                subtitle: 'khaled.shbair12@gmail.com',
                marginBottom: 10,
              ),
              CardBio(
                leadingIcon: Icons.phone,
                onPressedFunction: () {
                  print('Full name: +970599724037');
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: const Text(
                      'Send call',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    backgroundColor: Colors.white,
                    duration: const Duration(seconds: 3),
                    behavior: SnackBarBehavior.floating,
                    margin: const EdgeInsetsDirectional.all(20),
                    dismissDirection: DismissDirection.horizontal,
                    padding: const EdgeInsetsDirectional.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    action: SnackBarAction(
                      label: 'ok',
                      onPressed: () {
                        print('OK');
                      },
                      textColor: Colors.blue,
                    ),
                  ));
                },
                title: 'Mobile',
                subtitle: '+970599724037',
                marginBottom: 60,
              ),
              const PositionedDirectional(
                start: 20,
                end: 20,
                bottom: 20,
                child: Text(
                  'Flutter - 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
