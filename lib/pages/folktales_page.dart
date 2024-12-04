import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'tangkuban_perahu.dart'; // Import halaman detail
import 'malin_kundang.dart';
import 'danau_toba.dart'; // Import halaman Danau Toba
import 'roro_jonggrang.dart'; // Import halaman Roro Jonggrang
import 'timun_mas.dart'; // Import halaman Timun Mas

class FolktalesPage extends StatelessWidget {
  FolktalesPage({super.key});

  // Fungsi untuk membuka URL sosial media
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  // List of folktales and their descriptions in Indonesian
  final List<Map<String, String>> folktales = [
    {
      'title': 'Tangkuban Perahu',
      'description': 'Cerita rakyat Sunda tentang gunung berapi yang terkenal.',
      'image': 'assets/Tangkuba Perahu.jpg',
    },
    {
      'title': 'Malin Kundang',
      'description':
          'Cerita terkenal dari Minangkabau tentang seorang anak yang tidak menghormati ibunya.',
      'image': 'assets/malin kundang.jpg',
    },
    {
      'title': 'Legenda Danau Toba',
      'description':
          'Cerita tentang asal-usul terbentuknya Danau Toba di Sumatra.',
      'image': 'assets/danau toba.jpg',
    },
    {
      'title': 'Roro Jonggrang',
      'description':
          'Cerita Roro Jonggrang, seorang putri cantik yang menolak pinangan Bandung Bondowoso dan membuat 1000 candi dan 2 sumur dalam satu malam.',
      'image': 'assets/roro.jpg',
    },
    {
      'title': 'Timun Mas',
      'description':
          'Kisah seorang Nenek yang mendapatkan bayi cantik dari biji timun Ajaib yang diberikan oleh raksasa.',
      'image': 'assets/timun mas.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: AppBar(
          title: const Text(
            'Cerita Rakyat',
            style: TextStyle(
              color: Colors.white, // Warna teks menjadi putih
              fontWeight: FontWeight.bold, // Teks menjadi bold
              fontSize: 20, // Ukuran font disesuaikan
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.deepPurple,
                  Colors.pink,
                  Colors.orange,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          iconTheme: const IconThemeData(
              color: Colors.white), // Set back arrow to white
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.deepPurple,
                    Colors.pink,
                    Colors.orange,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/Profile.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Gendis Febrianti',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home,
                  color: Colors.white), // Set drawer icon color to white
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.facebook,
                  color: Colors.white), // Set drawer icon color to white
              title: const Text('Facebook'),
              onTap: () {
                _launchURL('https://www.facebook.com/gendis.febrianti');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt,
                  color: Colors.white), // Set drawer icon color to white
              title: const Text('Instagram'),
              onTap: () {
                _launchURL('https://www.instagram.com/gndis.fbrnti');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.library_books,
                  color: Colors.white), // Set drawer icon color to white
              title: const Text('Cerita Rakyat'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout,
                  color: Colors.white), // Set drawer icon color to white
              title: const Text('Logout'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            const Divider(),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: folktales.length,
          itemBuilder: (context, index) {
            final folktale = folktales[index];
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    folktale['image']!,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  folktale['title']!,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurple,
                  ),
                ),
                subtitle: Text(
                  folktale['description']!,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
                trailing: const Icon(Icons.arrow_forward_ios,
                    color: Colors.deepPurple),
                onTap: () {
                  if (folktale['title'] == 'Tangkuban Perahu') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TangkubanPerahu(),
                      ),
                    );
                  } else if (folktale['title'] == 'Malin Kundang') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MalinKundang(),
                      ),
                    );
                  } else if (folktale['title'] == 'Legenda Danau Toba') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DanauToba(),
                      ),
                    );
                  } else if (folktale['title'] == 'Roro Jonggrang') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RoroJonggrang(),
                      ),
                    );
                  } else if (folktale['title'] == 'Timun Mas') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TimunMas(),
                      ),
                    );
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
