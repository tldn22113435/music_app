import 'package:flutter/material.dart';
import 'package:music_app/pages/Menu.dart';
import 'package:music_app/pages/Playlist.dart';
import 'package:music_app/pages/Queue.dart'; // Import trang QueueScreen

class SongScreen extends StatelessWidget {
  Color button = Color(0xFF8A9A9D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLAYING FROM PLAYLIST',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white54,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'Lofi Loft',
                        style: TextStyle(
                            color: Color(0xFFA6F3FF),
                            fontSize: 18), // Tùy chỉnh kích thước chữ nếu cần
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down, color: Colors.white),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PlaylistScreen()));
                        },
                      )
                      // Biểu tượng mũi tên chỉ xuống
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MenuScreen()));
                },
                color: Colors.white54,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Artwork
          Container(
            margin: EdgeInsets.all(40.0),
            child: Image.asset(
              'assets/images/song1_image.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Song Title and Artist
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'grainy days',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'moody.',
                  style: TextStyle(
                    fontSize: 18,
                    color: button,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          // Progress Bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text('0:00', style: TextStyle(color: Colors.white)),
                Expanded(
                  child: Slider(
                    value: 0.5,
                    onChanged: (value) {},
                    activeColor: Colors.white,
                    inactiveColor: Colors.white24,
                  ),
                ),
                Text('2:43', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
          // Playback Controls
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 52),
              IconButton(
                icon: Icon(Icons.shuffle),
                onPressed: () {},
                color: Colors.white54,
              ),
              IconButton(
                icon: Icon(Icons.skip_previous),
                onPressed: () {},
                color: Colors.white,
              ),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.cyan,
                ),
                child: IconButton(
                  icon: Icon(Icons.play_arrow),
                  onPressed: () {},
                  iconSize: 36,
                  color: Colors.black,
                ),
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                onPressed: () {},
                color: Colors.white,
              ),
              IconButton(
                icon: Icon(Icons.equalizer),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              QueueScreen())); // Chuyển đến trang QueueScreen
                },
                color: Colors.white54,
              ),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: () {},
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(width: 52),
          Align(
            alignment: Alignment.centerRight, // Căn icon sang bên phải
            child: IconButton(
              icon: Icon(Icons.download),
              onPressed: () {},
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'LYRICS',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white54,
              ),
            ),
          ),

          // Lyrics
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 1.0),
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Color(0xFF25BCC3),
                  borderRadius: BorderRadius.circular(23.0), // Bo tròn góc
                ),
                alignment: Alignment.center, // Căn giữa văn bản
                child: Text(
                  'Cause you think it\'s too high\nYou never look at the sky\n'
                  'Cause you think it\'s too high\nYou never look at the stars\n'
                  'Cause you think they\'re too far',

                  style: TextStyle(color: Colors.white),

                  textAlign: TextAlign.center,
                  // Căn giữa dòng chữ
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
