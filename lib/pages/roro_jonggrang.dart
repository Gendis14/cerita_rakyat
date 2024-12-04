import 'dart:ui';
import 'package:flutter/material.dart';

class RoroJonggrang extends StatelessWidget {
  const RoroJonggrang({super.key});

  static const List<String> cerita = [
    'Dahulu kala, di Desa Prambanan, ada sebuah kerajaan yang dipimpin oleh Prabu Baka. Ia memiliki seorang putri yang sangat cantik bernama Roro Jonggrang.',
    'Suatu ketika, Prambanan dikalahkan oleh Kerajaan Pengging yang dipimpin oleh Bandung Bondowoso. Prabu Baka tewas di medan perang. Dia terbunuh oleh Bandung Bondowoso yang sangat sakti.',
    'Bandung Bondowoso kemudian menempati Istana Prambanan. Melihat putri dari Prabu Baka yang cantik jelita yaitu Roro Jonggrang, timbul keinginannya untuk memperistri Roro Jonggrang.',
    'Roro Jonggrang tahu bahwa Bandung Bondowoso adalah orang yang membunuh ayahnya. Karena itu, ia mencari akal untuk menolaknya. Lalu, ia mengajukan syarat dibuatkan 1.000 buah candi dan dua buah sumur yang dalam. Semuanya harus selesai dalam semalam.',
    'Bandung Bondowoso menyanggupi persyaratan Roro Jonggrang. Ia meminta pertolongan kepada ayahnya dan mengerahkan balatentara roh-roh halus untuk membantunya pada hari yang ditentukan. Pukul empat pagi, hanya tinggal lima buah candi yang belum selesai dan kedua sumur hampir selesai.',
    'Mengetahui 1.000 candi telah hampir selesai, Roro Jonggrang ketakutan.',
    '"Apa yang harus kulakukan untuk menghentikannya?" pikirnya cemas membayangkan ia harus menerima pinangan Bandung Bondowoso yang telah membunuh orangtuanya.',
    'Akhirnya, ia pergi membangunkan gadis-gadis di Desa Prambanan dan memerintahkan untuk menghidupkan obor-obor dan membakar jerami, memukulkan alu pada lesung, dan menaburkan bunga-bunga yang harum. Suasana saat itu menjadi terang dan riuh. Semburat merah memancar di langit dengan seketika.',
    'Ayam jantan pun berkokok bersahut-sahutan. Mendengar suara itu, para roh halus segera meninggalkan pekerjaan. Mereka menyangka hari telah pagi dan matahari akan segera terbit. Pada saat itu hanya tinggal satu sebuah candi yang belum dibuat.',
    'Bandung Bondowoso sangat terkejut dan marah menyadari usahanya telah gagal. Dalam amarahnya, Bandung Bondowoso mengutuk Roro Jonggrang menjadi sebuah arca untuk melengkapi sebuah buah candi yang belum selesai.',
    'Batu arca Roro Jonggrang diletakkan di dalam ruang candi yang besar. Hingga kini, candi tersebut disebut dengan Candi Roro Jonggrang. Sementara itu, candi-candi di sekitarnya disebut dengan Candi Sewu (Candi Seribu) meskipun jumlahnya belum mencapai 1.000.'
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
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.blue, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/prambanan1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Content with blur effect
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                color: Colors.white.withOpacity(0.6),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(height: 16),
                        _buildImageRow(),
                        const SizedBox(height: 16),
                        const Text(
                          'Roro Jonggrang',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ..._buildStoryText(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildImageRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/roro.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/prambanan2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildStoryText() {
    return cerita
        .map(
          (paragraph) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              paragraph,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black87,
              ),
            ),
          ),
        )
        .toList();
  }
}
