import 'package:flutter/material.dart';

class FolderScreen extends StatelessWidget {
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
            Navigator.pop(context); // Go back to the previous screen
          },
          color: Colors.white,
        ),
        title: Text(
          'Moods',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sort By',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white54,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Recently played',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.cyan,
                      ),
                    ),
                    Icon(
                      Icons.import_export,
                      color: Colors.cyan,
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 40), // Adjusted height
            Expanded(
              child: ListView(
                children: [
                  addNewPlaylist(),
                  folderItem('current favorites', '20 songs',
                      'assets/images/song7_image.png'),
                  folderItem('3:00am vibes', '18 songs',
                      'assets/images/song8_image.png'),
                  folderItem(
                      'Lofi Loft', '63 songs', 'assets/images/song_image.png'),
                  folderItem('rain on my window', '32 songs',
                      'assets/images/song9_image.png'),
                  folderItem('Anime OSTs', '20 songs',
                      'assets/images/song10_image.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget addNewPlaylist() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 12.0), // Adjusted vertical padding
      child: Row(
        children: [
          Container(
            height: 70, // Increased size
            width: 70, // Increased size
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.cyan,
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 36, // Increased icon size
            ),
          ),
          SizedBox(width: 20), // Increased width
          Text(
            'Add New Playlist',
            style: TextStyle(
              fontSize: 20, // Increased font size
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget folderItem(String title, String subtitle, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 12.0), // Adjusted vertical padding
      child: Row(
        children: [
          Container(
            height: 80, // Increased size
            width: 80, // Increased size
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius:
                  BorderRadius.circular(12), // Increased border radius
            ),
          ),
          SizedBox(width: 20), // Increased width
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 20, // Increased font size
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 6), // Increased space
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 16, // Increased font size
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          Spacer(),
          Icon(
            Icons.more_vert,
            color: Colors.white54,
          ),
        ],
      ),
    );
  }
}
