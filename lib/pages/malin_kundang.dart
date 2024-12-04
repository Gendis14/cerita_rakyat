import 'dart:ui';
import 'package:flutter/material.dart';

class MalinKundang extends StatelessWidget {
  const MalinKundang({super.key});

  static const List<String> cerita = [
    'Dahulu di sebuah dusun nelayan, tepatnya di Sumatra Barat, hiduplah seorang anak laki-laki bernama Malin Kundang. Ia tinggal bersama ibundanya, Mande Rubayah. Sang ayah telah lama pergi meninggalkan ibu dan anak semata wayangnya itu.',
    'Malin tumbuh menjadi anak yang cerdas dan pemberani, tapi sedikit nakal. Mereka hidup serba kekurangan. Hingga suatu ketika saat Malin beranjak dewasa, ia berpikir untuk mencari peruntungan di negeri seberang. Dengan harapan nantinya saat kembali ke kampung halaman, ia sudah menjadi saudagar kaya raya.',
    'Malin tertarik dengan ajakan seorang nahkoda kapal dagang yang dulunya miskin sekarang sudah menjadi seorang yang kaya raya. Tekadnya semakin kuat, Malin meminta izin kepada ibundanya. Mande Rubayah sempat tidak setuju dengan keinginan anaknya, tetapi karena Malin terus mendesak akhirnya ia mengizinkan.',
    '"Anakku, jika engkau sudah berhasil dan menjadi orang yang berkecukupan, jangan lupa dengan ibumu dan kampung halamanmu ini, Nak," pesan dari ibunya.',
    'Ternyata keberadaan Malin di kapal itu sangat disukai. Selain karena ia sangat rajin dan selalu siap menolong, ia juga seorang pekerja keras.',
    'Beberapa tahun berlalu, kini Malin telah menjadi seorang nahkoda yang mengepalai banyak kapal dagang. Ia pun berhasil memperistri salah seorang putri raja yang cantik jelita. Kabar kesuksesannya sampai kepada ibunda Malin. Setiap hari Mande Rubayah menyempatkan diri pergi ke dermaga berharap bisa bertemu putranya, Malin. Suatu ketika, sampailah kapal mereka di kampung tempat Malin dulu dibesarkan. Malin Kundang pun turun dari kapal. Kemudian disambut oleh ibundanya.',
    '"Malin Kundang, anakku, mengapa kau pergi begitu lama tanpa mengirimkan kabar," katanya sambil memeluk Malin.',
    'Malin Kundang justru malah segera melepaskan pelukan tersebut dan mendorong ibundanya hingga terjatuh.',
    '"Wanita tidak tahu diri, sembarangan saja mengaku sebagai ibuku," kata Malin kepada ibunya. Malin berpura-pura tidak mengenal ibunya, karena malu melihat ibunya yang sudah tua dan memakai baju compang-camping.',
    '"Wanita itu ibumu?," tanya istri Malin. "Tidak, ia hanya seorang pengemis yang pura-pura mengaku sebagai ibuku agar mendapatkan hartaku," sahut Malin.',
    'Melihat tingkah Malin yang congkak di depan istrinya, Mande Rubayah sangat sakit hati. Ia melihat kapal anaknya yang bertolak dari pantai, sambil berdoa dalam hatinya agar Tuhan menghukum anaknya.',
    'Badai besar kemudian menerjang kapal Malin Kundang sampai seluruh isinya hancur berhamburan. Ternyata serpihan kapal ini berubah menjadi batu karang, termasuk sosok Malin Kundang yang sedang bersimpuh.',
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
                colors: [Colors.deepPurple, Colors.pink, Colors.orange],
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
                image: AssetImage('assets/malin1.jpg'),
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
                          'Malin Kundang',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
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
                  'assets/malin3.jpg',
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
                  'assets/malin2.jpg',
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
