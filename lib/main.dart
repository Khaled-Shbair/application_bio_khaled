import 'package:flutter/material.dart';
import 'Screen_Bio.dart';

void main()=>runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen_Bio(),
    );
  }
}





/**

        children: [
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Image.network(
              'https://media.istockphoto.com/vectors/sunbeams-bright-rays-background-vector-id1285308552?k=20&m=1285308552&s=170667a&w=0&h=miA83drtvWjs0rt5fA21v1yqrexe47r-j-aFO6_Ivnw=',
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('image/FB_IMG_1614252710095.jpg'),
              ),
              const Text(
                'Khaled Shbair',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'IBM Plex Sans Thai Looped',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Flutter Coruse - Vision Plus',
                style: TextStyle(
                  color: Colors.blue,
                  fontFamily: 'IBM Plex Sans Thai Looped',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                ),
              ),
              const Divider(
                thickness: 2,
                color: Colors.black,
                indent: 40,
                endIndent: 40,
              ),
              CardBio(
                leadingIcon: Icons.account_circle_outlined,
                title: 'Name',
                subtitlel: 'Khaled Shbair',
                trailingIcon: Icons.account_circle_outlined,
                onPressed: (){
                  print('HGGh');
                },
                marginBottom: 10,
              ),
              CardBio(
                leadingIcon: Icons.account_circle_outlined,
                title: 'Name',
                subtitlel: 'Khaled Shbair',
                trailingIcon: Icons.account_circle_outlined,
                onPressed: (){
                  print('HGGh');
                },                marginBottom: 10,
              ),
              CardBio(
                leadingIcon: Icons.account_circle_outlined,
                title: 'Name',
                subtitlel: 'Khaled Shbair',
                trailingIcon: Icons.account_circle_outlined,
                onPressed: (){
                  print('HGGh');
                },
                marginBottom: 10,
              ),
              CardBio(
                leadingIcon: Icons.account_circle_outlined,
                title: 'Name',
                subtitlel: 'Khaled Shbair',
                trailingIcon: Icons.account_circle_outlined,
                onPressed: (){
                  print('HGGh');
                },
              ),
              const Spacer(),
              const  Padding(
                padding: EdgeInsetsDirectional.only(bottom: 10),
                child: Text(
                  'Flutter',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),


          //
          // const PositionedDirectional(
          //   start: 20,
          //   end: 20,
          //   bottom: 10,
          //   child: Text(
          //     'Flutter',
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}

    import 'package:flutter/material.dart';

    class CardBio extends StatelessWidget {
    final IconData leadingIcon;
    final String title;
    final String subtitlel;
    final IconData trailingIcon;
    final double marginBottom;
    final void Function () onPressed;

    const CardBio({
    required this.leadingIcon,
    required this.title,
    required this.subtitlel,
    required this.trailingIcon,
    required this.onPressed,
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
    subtitle: Text(subtitlel),
    trailing: IconButton(
    onPressed: onPressed,
    icon: Icon(trailingIcon)
    ),

    ),
    );
    }
    }
 **/