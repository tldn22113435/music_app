import 'package:flutter/material.dart';
import 'package:music_app/pages/Folders.dart';
import 'package:music_app/pages/Playlists.dart'; // Import the Playlists page

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  int selectedIndex = -1;

  final List<Widget> pages = [
    Folders(),
    Playlists(), // Playlists page
    Center(child: Text('Artists Page', style: TextStyle(color: Colors.white))),
    Center(child: Text('Albums Page', style: TextStyle(color: Colors.white))),
    Center(
        child: Text('Podcasts & Shows Page',
            style: TextStyle(color: Colors.white))),
  ];

  Widget buildTextButton(int index, String label) {
    bool isSelected = selectedIndex == index;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Text(
        label,
        style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13,
            color: Colors.white,
            letterSpacing: 0.6),
      ),
      style: TextButton.styleFrom(
          side: BorderSide(color: Colors.white, width: 1),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          backgroundColor: isSelected ? Color(0xFF39C0D4) : Color(0xFF121111)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121111),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/logo1.png'),
                    width: 60,
                    height: 60,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Your Library',
                    style: TextStyle(
                      color: Color(0xFF06A0B5),
                      fontSize: 27,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.search, size: 30, color: Colors.white),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    buildTextButton(0, 'Folders'),
                    SizedBox(width: 20),
                    buildTextButton(1, 'Playlists'), // Playlists button
                    SizedBox(width: 20),
                    buildTextButton(2, 'Artists'),
                    SizedBox(width: 20),
                    buildTextButton(3, 'Albums'),
                    SizedBox(width: 20),
                    buildTextButton(4, 'Podcasts & Shows'),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: selectedIndex == -1
                    ? SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF39C0D4),
                                  radius: 25,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add, color: Colors.black),
                                    iconSize: 30,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Add New Playlist',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xFF39C0D4),
                                  radius: 25,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.heart_broken,
                                        color: Colors.black),
                                    iconSize: 20,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Your Like Songs',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_downward_outlined,
                                  color: Colors.blueGrey,
                                ),
                                Icon(
                                  Icons.arrow_upward_outlined,
                                  color: Colors.blueGrey,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  'Recently played',
                                  style: TextStyle(
                                      color: Color(0xFF39C0D4),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/library1.png'),
                                  radius: 30,
                                ),
                                SizedBox(width: 10),
                                Text(
                                  'Conan Gray',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/library2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      '3:00am vibes',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '18 songs',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/library3.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Wiped Out!',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'The Neighbourhood',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: <Widget>[
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/library4.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Extra Dynamic',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      'Update Aug 10 * ur mom ashley',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : pages[selectedIndex],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
