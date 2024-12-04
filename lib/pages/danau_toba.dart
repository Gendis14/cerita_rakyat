import 'dart:ui';
import 'package:flutter/material.dart';

class DanauToba extends StatelessWidget {
  const DanauToba({super.key});

  static const List<String> cerita = [
    'Alkisah pada zaman dahulu kala, terdapat seorang pemuda dengan nama Toba. Ia merupakan seorang yatim piatu. Untuk memenuhi kebutuhannya sehari-hari, Toba bekerja di ladang. Sesekali ia mencari ikan di sungai yang terletak tidak jauh dari gubugnya. Ikan hasil tangkapannya kerap dijadikan sebagai lauk dan bila berlebih, akan dijual ke pasar.',
    'Pada suatu hari sepulang dari ladang, Toba memancing ikan di sungai tersebut. Ia sangat berharap untuk memperoleh ikan yang besar yang dapat dengan segera dimasaknya untuk dijadikan sebagai lauk. Terpenuhilah harapannya tersebut. Tidak berselang lama, ia melemparkan pancingnya ke sungai. Mata kailnya langsung disambar oleh seekor ikan. Betapa gembiranya Toba saat menarik tali pancingnya dan melihat seekor ikan dengan ukuran yang besar tersangkut di mata pancingnya.',
    'Sejenak, Toba memperhatikan ikan besar yang berhasil ia pancing itu. "Ikan yang aneh." Gumannya. Seumur hidupnya, Toba belum pernah melihat ikan dengan bentuk seperti itu. Warna ikan tersebut kekuningan serta sisik-sisiknya kuning keemasan. Tampak berkilauan sisik-sisik tersebut saat terkena paparan sinar matahari.',
    'Saat Toba melepaskan mata kail dari mulut ikan tangkapannya tersebut, tiba-tiba terjadi sebuah keajaiban yang sama sekali tak pernah ia duga. Ikan aneh dengan sisik berwarna kuning keemasan tersebut berubah menjadi seorang perempuan yang manis dan elok parasnya.',
    'Toba terheran-heran ketika melihat keajaiban yang berlangsung di depan matanya itu. Ia hanya berdiri tak percaya dengan bola mata membulat serta mulut melongo.',
    '“Tuan.” Kata perempuan cantik jelmaan dari ikan kuning itu. “Aku adalah mahluk kutukan Dewa. Aku dikutuk karena telah melanggar larangan besarnya. Sudah ditakdirkan kepadaku, bahwa aku akan berubah bentuk dan menyerupai makhluk apa saja yang memegang atau menyentuhku. Karena tuan sudah memegangku, maka akupun berubah menjadi manusia. Seperti Tuan ini.”',
    'Toba lantas memperkenalkan namanya. Begitu juga dengan perempuan berwajah cantik itu. “Namaku Putri, tuan.”',
    'Toba lalu memikirkan sesuatu dan menjelaskan pemikirannya tersebut kepada Putri. Pemikirannya ialah untuk memperistri Putri karena Toba sangat terpesona dengan kecantikan si perempuan jelmaan ikan itu. "Bersediakah engkau menikah dengan ku?" tanya Toba setelah pembicaraannya beberapa saat.',
    '“Baiklah aku bersedia, tuan. Selama tuan bersedia juga untuk memenuhi satu syarat yang akan kuajukan.” Jawab Putri.',
    '“Syarat apa yang engkau inginkan? Sebutkanlah, aku pasti akan memenuhinya.”',
    '“Permintaanku hanya satu, pastikan bahwa tuan dapat menutup rapat-rapat rahasiaku. Jangan sekali-kali tuan menyebutkan bila aku adalah seekor ikan. Bila tuan menyatakan kesedian tuan untuk menjaga rahasia ini, aku bersedia menjadi istri tuan.”',
    '“Baiklah, aku berjanji akan menutup dengan rapat rahasimu ini. Rahasia ini akan hanya kita ketahui berdua.” Kata Toba.',
    'Toba dan Putri pun akhirnya menikah. Pasangan tersebut hidup rukun dan berbahagia walau dalam kesederhanaan. Kebahagian mereka serasa kian lengkap dengan kehadiran buah hati mereka. Seorang anak laki-laki yang diberi nama Samosir.',
    'Samosir tumbuh menjadi anak yang sehat dan memiliki tubuh yang kuat. Sayangnya, Samosir memiliki sifat yang pemalas dan agak nakal. Kehidupan Samosir sehari-harinya hanya tidur-tiduran. Ia seperti tak peduli dan tak ingin membantu sama sekali kerepotan ayahnya yang sibuk bekerja di ladang.',
    'Bahkan, untuk sekadar mengantar makanan dan minuman untuk ayahnya pun, Samosir sering kali menolak bila diminta. Seandainya mau, Samosir akan melakukannya dengan malas-malasan dan wajah yang bersungut-sungut. Kian hari, kian bertambah malas kelakuan Samosir. Hal tersebut dikarenakan ibunya terus memanjakannya. Apapun yang diminta oleh Samosir, akan selalu diusahakan oleh ibunya untuk dipenuhi.',
    'Samosir memiliki nafsu makan yang sangat kuat. Jatah makanan sehari untuk sekeluarga dapat dihabiskannya dalam waktu sekali makan. Toba merasa harus bekerja lebih keras lagi supaya bisa memenuhi keinginan makan anak semata wayangnya yang luar biasa itu.',
    'Pada suatu hari, Samosir diminta ibunya untuk mengantarkan makanan dan minuman untuk ayahnya yang sedang bekerja di ladang. Samosir yang sedang bermalas-malasan pada mulanya enggan untuk menjalankan perintah ibunya tersebut. Meski demikian, setelah ibunya memaksa dengan terus-menerus akhirnya Samosir bersedia untuk mengantarkan makanan dan minuman tersebut meski dengan wajah yang muram dan bersungut-sungut.',
    'Samosir membawa makanan dan minuman tersebut menuju ke ladang. Ditengah perjalanan, Samosir tiba-tiba merasa lapar. Dihentikannya langkah menuju kebun. Samosir lalu memakan makanan yang seharusnya akan diberikan untuk ayahnya tersebut. Makanan itu tidak dihabiskannya semua dan hanya disisakan sedikit. Dengan makanan dan minuman yang tersisa sedikit itu, Samosir lalu melanjutkan perjalanannya menuju ke ladang. Saat telah tiba di ladang, Samosir memberikan makanan dan minuman yang tinggal sedikit itu untuk ayahnya.',
    'Toba yang sudah sangat merasa lapar karena bekerja keras sejak pagi langsung membuka bekal dan sangat ingin memakannya. Terperanjatlah Toba ketika melihat makan siang untuknya sudah tinggal sedikit. "Mengapa jatah makanan dan minumanku tinggal sedikit?" tanya Toba dengan raut wajah marah.',
    'Dengan wajah yang polos seolah tak melakukan kesalahan, Samosir menjawab. “Tadi di jalan aku tiba-tiba merasa sangat lapar, Ayah. Maka dari itu, jatah makanan dan minuman ayah itu sudah kumakan sebagian. Akan tetapi, tidak semua kuhabiskan, bukan? Masih ada sedikit makanan dan minuman untuk makan siang ayah.”',
    '“Dasar anak yang tidak tahu diuntung!” Makian Toba kepada anaknya.',
    'Kemarahan Toba seketika kian meninggi. Serasa tak dapat lagi ia bersabar dan menahannya, umpatan Toba pun seketika itu meluncur. “Dasar kau, anak keturunan ikan!”',
    'Samosir sangat ketakutan dan terkejut ketika mendengar umpatan dari ayahnya. Ia dengan cepat langsung berlari ke rumah sembari menangis. Pada saat sudah sampai di rumah dan bertemu dengan ibunya, Samosir langsung menceritakan semua cacian dan makian dari ayahnya yang menyebutkan bahwa dirinya adalah keturunan dari seekor ikan.',
    'Mendengar pengaduan dari anaknya itu, ibu Samosir menjadi sangat sedih. Tak disangka, bila suaminya yang sangat ia sayang telah melanggar sumpah untuk tak menyebutkan bahwa Putri adalah mahluk yang berasal dari ikan.',
    'Tak berselang lama, Samosir dan ibunya saling berpegangan tangan. Dalam hitungan sekejap, kedua ibu dan anak itu menghilang dan keajaiban pun terjadi. Pada bekas pijakan kaki Samosir dan ibunya, tiba-tiba menyembur air yang sangat deras. Dari dalam tanah, air yang disemburkan keluar seakan tiada henti.',
    'Semakin lama tak semakin berkurang semburan air tersebut, malah semakin besar adanya. Dalam waktu yang cepat, permukaan tanah di daerah itu pun tergenang. Permukaan air kian meninggi dan tak berapa lama kemudian lembah yang digunakan oleh Toba sebagai tempat tinggal pun sudah penuh dengan genangan air. Hingga pada akhirnya, terbentuklah sebuah danau yang sangat luas di tempat itu.',
    'Penduduk sekitar lalu menamakan danau tersebut sebagai Danau Toba. Adapun pulau kecil yang terletak ditengah-tengah Danau Toba itu disebut sebagai Pulau Samosir sebagai penanda bahwa itu merupakan tempat di mana Samosir dan ibunya berpijak untuk terakhir kalinya.',
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
                colors: [Colors.blue, Colors.cyan, Colors.lightBlueAccent],
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
                          'Danau Toba',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
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
                  'assets/toba1.jpg',
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
                  'assets/toba2.jpg',
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
