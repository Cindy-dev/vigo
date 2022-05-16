import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        shadowColor: Colors.white24,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('asset/image/vigo.jpeg'),
        ),
        leadingWidth: double.infinity,
        actions: [Icon(Icons.file_copy, color: Color(0xff000000))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Image.asset('asset/image/Frame 50.png'),
              title: Text(
                'robertfax',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                '3 hours ago',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Divider(
              color: Color(0xffF3F4F8),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat tristique in morbi nunc enim vitae. Gravida facilisis sit lobortis eget. Lorem faucibus vulputate purus viverra eu elit nec nisl.',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Image.asset('asset/image/Frame 237670.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text(' 2.5k'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline),
                  Text(' 250'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            Divider(
              color: Color(0xffF3F4F8),
            ), 
            ListTile(
              leading: Image.asset('asset/image/Frame 51.png'),
              title: Text(
                'darleneemily',
                style: TextStyle(
                    fontSize: 14, 
                    fontFamily: 'Nunito',
                    color: Color(0xff282A3A),
                    fontWeight: FontWeight.w400),
              ),
              subtitle: Text(
                '3 hours ago',
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito', 
                    fontWeight: FontWeight.w400),
              ),
              trailing: Icon(Icons.more_vert),
            ),
            Divider(
              color: Color(0xffF3F4F8),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0), 
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Feugiat tristique in morbi nunc enim vitae.',
                // textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w400),
              ),
            ),
            Image.asset('asset/image/unsplash.png'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  Text(' 2.5k'),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.chat_bubble_outline),
                  Text(' 250'),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
