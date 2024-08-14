import 'package:flutter/material.dart';
import 'package:music_app/pages/Folder.dart';
import 'package:music_app/pages/Menu.dart';

class PlaylistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FolderScreen()));
          },
          color: Colors.white,
        ),
        title: Text(
          'FROM "PLAYLISTS"',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white54,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Add functionality here if needed
            },
            color: Colors.white,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Align to center
          children: [
            Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/song_image.png'), // Replace with your image asset
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Lofi Loft',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(height: 4),
            Text(
              'soft, chill, dreamy, lo-fi beats',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
              textAlign: TextAlign.center, // Center align text
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  playlistItem(context, 'grainy days', 'moody.',
                      'assets/images/song1_image.png'),
                  playlistItem(context, 'Coffee', 'Kainbeats',
                      'assets/images/song2_image.png'),
                  playlistItem(context, 'raindrops', 'rainyxxx',
                      'assets/images/song3_image.png'),
                  playlistItem(context, 'Tokyo', 'SmYang',
                      'assets/images/song4_image.png'),
                  playlistItem(context, 'Lullaby', 'iamfinenow',
                      'assets/images/song5_image.png'),
                  playlistItem(context, 'Hazel Eyes', 'moody.',
                      'assets/images/song6_image.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget playlistItem(
      BuildContext context, String title, String artist, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                artist,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MenuScreen()));
            },
          )
        ],
      ),
    );
  }
}
