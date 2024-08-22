import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'HkNova',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).scaffoldBackgroundColor, // Set the status bar color here
      statusBarIconBrightness: Brightness.dark, // Set the status bar icons' color (light/dark)
    ));
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RoundedTextFieldWithIcon(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/apsara_bg.png', // Replace with the path to your image
                        width: double.infinity,
                        fit: BoxFit.fitWidth, // Set your desired width
                        height: 180, // S t your desired height
                      ),
                      Scroll()
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Scroll extends StatelessWidget {
  const Scroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Live Vote Results",
              style: TextStyle(fontSize: 28, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            const Text(
              "Winner Contestant",
              style: TextStyle(fontSize: 18, color: Color.fromRGBO(248, 182, 76, 1), fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomRectangleWithIcon(),
            const SizedBox(
              height: 15,
            ),
            total_votes_row(),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: const Text(
                "Others Contestant",
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            const user_tile(
              userImg: 'assets/user1.png',
              name: 'Chester Chang',
              votes: '196 Votes',
              percent: '35%',
              color: Color.fromRGBO(161, 210, 245, 1),
            ),
            const SizedBox(
              height: 18,
            ),
            const user_tile(
                userImg: 'assets/user2.png',
                name: 'Robert Soliman',
                votes: '56 Votes',
                percent: '10%',
                color: Color.fromRGBO(161, 245, 211, 1)),
            const SizedBox(
              height: 18,
            ),
            const user_tile(
                userImg: 'assets/user3.png',
                name: 'Kristine Kim',
                votes: '28 Votes',
                percent: '5%',
                color: Color.fromRGBO(187, 245, 161, 1)),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "Contest Videos",
                style: TextStyle(fontSize: 18, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "https://www.youtube.com/watch?v=aLtXzKyNxkY",
                style: TextStyle(fontSize: 14, color: Color.fromRGBO(0, 0, 0, 1), fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "Upcoming Events",
              style: TextStyle(fontSize: 30, color: Colors.black, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 22,
            ),
            event_tile(userImg: 'assets/event1.jpeg', name: 'Music Festivals'),
            const SizedBox(
              height: 18,
            ),
            event_tile(userImg: 'assets/event2.jpg', name: 'Sports Event'),
            SizedBox(height: 146),

          ],
        ),
      ),
    );
  }

  Row total_votes_row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(4, 151, 255, 1),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(39, 71, 87, 0.12),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Votes",
                    style:
                        TextStyle(fontSize: 20, color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "560",
                    style:
                        TextStyle(fontSize: 32, color: Color.fromRGBO(255, 255, 255, 1), fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Container(
              height: 140,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(124, 173, 191, 1),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(39, 71, 87, 0.12),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.all(16),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Total Votes",
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "50%",
                    style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}

class event_tile extends StatelessWidget {
  const event_tile({
    super.key,
    required this.userImg,
    required this.name,
  });

  final String userImg;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(39, 71, 87, 0.12),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(1, 1), // changes position of shadow
          ),
        ],
      ),
      padding: EdgeInsets.only(right: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Person image on the left
          Container(
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(image: AssetImage(userImg), fit: BoxFit.fill),
            ),
          ),
          SizedBox(width: 16), // Space between  the image and the text column
          // Column with two lines of text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              SizedBox(height: 6),
              const Text(
                'Date : 30/09/2024',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
          Spacer(),
          Center(
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Color.fromRGBO(39, 71, 87, 1),
                borderRadius: BorderRadius.circular(882),
              ),
              child: Icon(
                CupertinoIcons.arrow_right,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class user_tile extends StatelessWidget {
  const user_tile(
      {super.key,
      required this.userImg,
      required this.name,
      required this.votes,
      required this.percent,
      required this.color});

  final String userImg;
  final String name;
  final String votes;
  final String percent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(39, 71, 87, 0.12),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(1, 1), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Person image on the left
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Image.asset(
                userImg, width: 70, // Replace with the path to your person image
              ),
            ),
            SizedBox(width: 1), // Space between the image and the text column
            // Column with two lines of text
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  votes,
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Spacer(),
            Center(
              child: Text(
                percent,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomRectangleWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Background rectangle
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromRGBO(245, 161, 161, 1),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromRGBO(39, 71, 87, 0.12),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Person image on the left
                  Image.asset(
                    'assets/dr_image.png', width: 95, // Replace with the path to your person image
                  ),
                  SizedBox(width: 16), // Space between the image and the text column
                  // Column with two lines of text
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Omar D. Regalado',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Lorem ipsum loremispum',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // 40x40 icon at the top right corner
            Positioned(
              top: -15,
              right: -15,
              child: Image.asset(
                'assets/medal.png',
                width: 52,
                height: 52,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedTextFieldWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30.0),
        child: TextField(
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: 'vote.org.my',
            hintStyle: TextStyle(
              color: Colors.black54,
            ),
            filled: true,
            fillColor: Colors.grey[200],
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            suffixIcon: IconButton(
              icon: Icon(Icons.share_outlined, color: Colors.black54),
              onPressed: () {
                // Define your share functionality here
              },
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
    );
  }
}
