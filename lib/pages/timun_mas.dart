import 'dart:ui';
import 'package:flutter/material.dart';

class TimunMas extends StatelessWidget {
  const TimunMas({super.key});

  static const List<String> cerita = [
    'Pada masa lalu tersebutlah seorang janda yang hidup sebatang kara. Wanita yang akrab dipanggil Mbok Randa itu sudah lama menginginkan anak untuk menemani hidupnya.',
    'Suatu hari, muncullah seorang raksasa. Dia mengetahui keinginan Mbok Randa dan berjanji untuk mewujudkannya. Raksasa itu memberikan biji mentimun kepada Mbok Randa.',
    'Raksasa itu menyuruh Mbok Randa menanam biji mentimun itu. Kelak, dia akan menemukan sesosok bayi di dalamnya.',
    '"Tapi dengan syarat, saat dia berumur enam tahun kau harus menyerahkannya kepadaku untuk kusantap," kata raksasa itu.',
    'Besarnya keinginan untuk memiliki anak membuat Mbok Randa menyanggupi syarat tersebut.',
    'Perintah raksasa itu dilaksanakan dengan patuh. Ditanamnya biji mentimun itu dan dirawatnya dengan baik.',
    'Di antara beberapa buah yang tumbuh, Mbok Randa menemukan salah satu mentimun yang berukuran sangat besar berwarna kuning keemasan. Saat dipetik dan dibelah, terdapat sesosok bayi mungil di dalamnya.',
    'Mbok Randa lantas merawat bayi yang diberi nama Timun Mas itu dengan penuh kasih sayang. Bayi itu tumbuh menjadi anak yang cantik.',
    'Enam tahun sudah berlalu. Timun Mas sudah tumbuh menjadi anak yang cantik. Mbok Randa sangat menyayanginya.',
    'Namun, kebahagiaannya terusik dengan kedatangan raksasa yang menagih janjinya. Mbok Randa keberatan jika Timun Mas diambil oleh raksasa itu untuk dimakan. Dia pun memutar otak.',
    'Dia lantas meminta raksasa untuk bersabar hingga dua tahun lagi. Mbok Randa beralasan tubuh Timun Mas masih terlalu kecil sehingga tidak enak untuk dimakan. Ternyata, raksasa itu menyetujuinya.',
    'Setelah itu, Mbok Randa akhirnya pergi menemui seorang petapa. Dia menceritakan permasalahan yang dihadapinya dan meminta bantuan petapa itu.',
    'Sang Petapa memberi beberapa bungkusan berisi biji mentimun, jarum, garam dan terasi kepada Mbok Randa. Benda-benda itu nantinya bisa untuk menangkal kejahatan raksasa tersebut.',
    'Dua tahun kemudian, raksasa itu kembali datang menagih janji. Mbok Randa langsung menyuruh Timun Mas lari sambil membawa bungkusan pemberian dari petapa sakti.',
    'Raksasa itu pun mengejarnya. Timun Mas yang sudah kelelahan lantas mengeluarkan bungkusan berisi biji mentimun.',
    'Ajaib, pohon mentimun dengan ukuran-ukuran raksasa tiba-tiba tumbuh dan melilit tubuh raksasa itu. Kesempatan itu dimanfaatkan oleh Timun Mas untuk lari. Namun, beberapa saat kemudian raksasa itu mampu membebaskan diri dan mengejar Timun Mas.',
    'Jarak keduanya semakin dekat. Timun Mas mengambil bungkusan berisi jarum dan menyebarkannya. Tiba-tiba tanaman bambu tumbuh dengan lebatnya.',
    'Tanaman bambu itu menghambat langkah raksasa itu. Kakinya berdarah tertusuk bambu. Namun, raksasa itu enggan menyerah. Meski terluka, dia masih terus mengejar gadis cilik itu.',
    'Timun Mas mengambil bungkusan ketiga. Disebarnya garam pemberian petapa sakti itu. Tiba-tiba, tanah di belakangnya menjadi lautan.',
    'Namun, raksasa itu ternyata masih bisa menyeberangi lautan tersebut. Dia kembali mengejar Timun Mas yang tinggal memiliki satu senjata.',
    'Akhirnya, Timun Mas mengeluarkan bungkusan terakhirnya. Disebarnya terasi dalam bungkusan itu yang kemudian menjadi lautan lumpur. Ternyata, raksasa itu tidak mampu melintasinya dan tenggelam di dalamnya.',
    'Timun Mas kemudian kembali pulang dan hidup bahagia dengan Mbok Randa.',
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
                colors: [Colors.green, Colors.yellow, Colors.orange],
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
                image: AssetImage('assets/timun1.jpg'),
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
                          'Timun Mas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
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
                  'assets/timun2.jpg',
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
                  'assets/timun3.jpg',
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
