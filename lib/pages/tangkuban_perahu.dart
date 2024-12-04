import 'dart:ui';
import 'package:flutter/material.dart';

class TangkubanPerahu extends StatelessWidget {
  const TangkubanPerahu({super.key});

  static const List<String> cerita = [
    'Pada zaman dahulu, hiduplah seorang putri kerajaan di Jawa Barat bernama Dayang Sumbi. Ia tinggal bersama anak laki-lakinya, Sangkuriang, dan anjing kesayangan mereka yang bernama Tumang. Sangkuriang sering berburu di hutan dan selalu ditemani oleh Tumang, meskipun ia tidak tahu bahwa Tumang sebenarnya adalah ayah kandungnya yang merupakan titisan dewa.',
    'Suatu hari, saat berburu, Tumang tidak mau mengikuti perintah Sangkuriang untuk mengejar hewan buruan. Hal ini membuat Sangkuriang marah dan mengusir Tumang ke dalam hutan. Ketika kembali ke kerajaan, ia menceritakan kejadian ini kepada ibunya. Dayang Sumbi, marah besar, memukul kepala Sangkuriang dengan sendok nasi. Sangkuriang, yang kecewa, pergi mengembara.',
    'Bertahun-tahun kemudian, Sangkuriang yang telah menjadi pemuda tampan kembali ke tanah airnya. Tanpa disadarinya, ia jatuh cinta pada Dayang Sumbi, yang awet muda karena karunia dewa. Dayang Sumbi, yang tidak mengenali Sangkuriang sebagai anaknya, juga jatuh cinta. Namun, ia akhirnya menyadari identitas Sangkuriang dari bekas luka di kepalanya.',
    'Untuk menggagalkan pernikahan mereka, Dayang Sumbi memberikan dua syarat kepada Sangkuriang: membendung Sungai Citarum dan membuat perahu besar dalam semalam. Dengan bantuan makhluk gaib, Sangkuriang hampir menyelesaikan tugasnya. Namun, Dayang Sumbi menipu Sangkuriang dengan menggelar kain merah di timur, sehingga ia mengira fajar telah tiba.',
    'Marah karena merasa ditipu, Sangkuriang menjebol bendungan, menyebabkan banjir besar, dan menendang perahu yang telah dibuatnya. Perahu itu terbalik dan menjadi Gunung Tangkuban Perahu, yang kini menjadi bagian dari legenda Jawa Barat.'
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
                image: AssetImage('assets/sangkuriang1.jpg'),
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
                          'Tangkuban Perahu',
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
                  'assets/sangkuriang2.jpg',
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
                  'assets/sangkuriang3.jpg',
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
