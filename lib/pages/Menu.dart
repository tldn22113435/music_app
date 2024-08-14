import 'package:flutter/material.dart';

import 'SleepTimerScreen.dart'; // Import trang Sleep Timer

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: Icon(Icons.favorite_border, color: Colors.white),
        actions: [
          Icon(Icons.add, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          Container(
            width: 240,
            height: 230,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage('assets/images/song1_image.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'grainy days',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'moody.',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          SizedBox(height: 40),
          Expanded(
            child: ListView(
              children: [
                menuItem(Icons.playlist_add, 'Add to playlist'),
                menuItem(Icons.queue_music, 'Add to queue'),
                menuItem(Icons.remove_circle_outline, 'Remove from playlist'),
                menuItem(Icons.label_outline, 'Modify tags'),
                menuItem(Icons.person_outline, 'View Artist'),
                menuItem(Icons.album_outlined, 'View Album'),
                menuItem(Icons.info_outline, 'Show Credits'),
                menuItem(Icons.download_outlined, 'Download'),
                menuItem(Icons.share_outlined, 'Share'),
                menuItem(Icons.qr_code, 'Generate QR Code'),
                menuItem(Icons.timer_outlined, 'Sleep Timer', context),
                menuItem(Icons.visibility_off_outlined, 'Hide song'),
                menuItem(Icons.radio, 'Go to Song Radio'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget menuItem(IconData icon, String title, [BuildContext? context]) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
      onTap: () {
        if (title == 'Sleep Timer' && context != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SleepTimerScreen()),
          );
        } else {
          // Xử lý sự kiện khi nhấn vào các item khác
        }
      },
    );
  }
}
