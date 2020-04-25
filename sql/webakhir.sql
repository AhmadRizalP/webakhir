-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2020 at 05:35 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webakhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(3) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `ringkasan` text NOT NULL,
  `cover` varchar(50) DEFAULT NULL,
  `stok` int(3) NOT NULL,
  `id_kategori` int(3) DEFAULT NULL,
  `tgl_terbit` date NOT NULL,
  `harga` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penerbit`, `pengarang`, `ringkasan`, `cover`, `stok`, `id_kategori`, `tgl_terbit`, `harga`) VALUES
(22, 'Selena', 'Gramedia Pustaka Utama', 'Tere Liye', '\"Selena\" dan \"Nebula\" adalah buku ke-8 dan ke-9 yang menceritakan siapa orangtua Raib dalam serial petualangan dunia paralel. Dua buku ini sebaiknya dibaca berurutan. Kedua buku ini juga bercerita tentang Akademi Bayangan Tingkat Tinggi, sekolah terbaik di seluruh Klan Bulan. Tentang persahabatan tiga mahasiswa, yang diam-diam memiliki rencana bertualang ke tempat-tempat jauh. Tapi petualangan itu berakhir buruk, saat persahabatan mereka diuji dengan rasa suka, egoisme, dan pengkhianatan. Ada banyak karakter baru, tempat-tempat baru, juga sejarah dunia paralel yang diungkap. Di dua buku ini kalian akan berkenalan dengan salah satu karakter paling kuat di dunia paralel sejauh ini. Tapi itu jika kalian bisa menebaknya. Dua buku ini bukan akhir. Justru awal terbukanya kembali portal menuju Klan Aldebaran', 'selena.jpg', 20, 1, '2020-03-16', 82000),
(23, 'Nebula', 'Gramedia Pustaka Utama', 'Tere Liye', 'SELENA dan NEBULA adalah buku ke-8 dan ke-9 yang menceritakan siapa orangtua Raib dalam serial petualangan dunia paralel. Dua buku ini sebaiknya dibaca berurutan. Kedua buku ini juga bercerita tentang Akademi Bayangan Tingkat Tinggi, sekolah terbaik di seluruh Klan Bulan. Tentang persahabatan tiga mahasiswa, yang diam-diam memiliki rencana bertualang ke tempat-tempat jauh. Tapi petualangan itu berakhir buruk, saat persahabatan mereka diuji dengan rasa suka, egoisme, dan pengkhianatan. Ada banyak karakter baru, tempat-tempat baru, juga sejarah dunia paralel yang diungkap. Di dua buku ini kalian akan berkenalan dengan salah satu karakter paling kuat di dunia paralel sejauh ini. Tapi itu jika kalian bisa menebaknya. Dua buku ini bukan akhir. Justru awal terbukanya kembali portal menuju Klan Aldebaran.', 'nebula.jpg', 22, 1, '2020-03-16', 82000),
(24, 'Komet Minor', 'Gramedia Pustaka Utama', 'Tere Liye', 'Pertarungan melawan si Tanpa Mahkota akan berakhir di sini. Siapa pun yang menang, semua berakhir di sini, di Klan Komet Minor, tempat aliansi para pemburu pernah dibentuk, dan pusaka hebat pernah diciptakan. Dalam saga terakhir melawan si Tanpa Mahkota, aku, Seli, dan Ali menemukan teman seperjalanan yang hebat. Bersama-sama kami melewati berbagai rintangan, memahami banyak hal, berlatih teknik baru, dan bertarung bersama-sama. Inilah kisah kami. Tentang persahabatan sejati. Tentang pengorbanan. Tentang ambisi. Tentang memaafkan. Namaku Raib, dan aku bisa menghilang.', 'komet.jpg', 100, 1, '2019-03-11', 82000),
(25, 'Koala And Her Story', ' Elex Media Komputindo', 'Puteri Raka', 'Di suatu siang di koridor kelas, Aldan Dirgantara tiba-tiba “menembak” Kumala Aruna, membuat Kumala merasa berbunga-bunga—tapi itu semua ternyata hanyalah tantangan Truth or Dare! Setelah kejadian itu, Bara, sosok paling dingin dan pintar dari geng pertemanan Aldan, mulai mendekati Kumala. Kumala jelas menghindar, karena tidak mau mengulangi rasa malu yang sama. Bara tidak peduli dengan penolakan Kumala dan malah terus mendekat. Bara bahkan sampai menyuruh Kumala mengerjakan buku soal SBMPTN, padahal Kumala cuma pintar di pelajaran Kimia. Seiring berjalannya waktu, banyak hal yang terkuak. Apa yang terjadi antara Kumala dengan trio cogan di sekolahnya ternyata tidak sesederhana yang Kumala pikirkan. Lalu apa yang membuat Bara terus-terusan mendekatinya?', 'koala.jpg', 100, 3, '2020-03-09', 87000),
(26, 'Bausastra Lelembut', ' Elex Media Komputindo', 'Lentera Nusantara', 'Buku ini menyorot beragam jenis hantu, dedemit, dan roh-roh lain dalam budaya Nusantara. Dengan gambar yang menarik dan penjelasan yang ringkas, \"Bausastra Lelembut\" mengundang para pembaca untuk bisa menjadi lebih akrab dengan bermacam-macam lelembut.', 'bausastra.jpg', 100, 1, '2019-10-30', 90000),
(27, 'Segi Tiga', 'Gramedia Pustaka Utama', 'Sapardi Djoko Damono', 'Percayakah kau pada ganasnya cinta pertama? Pernahkah kau berpikir bahwa cinta pertama diciptakan Juru Dongeng agar perempuan seperti kita ini tidak henti-hentinya kacau pikirannya, agar gadis-gadis baik seperti kita ini sering sekali tidak bisa tidur nyenyak? Kisah yang dirakit Juru Dongeng untukku itu mungkin tidak berlaku untuk semua gadis sepertimu, namun seandainya pada suatu ketika nanti dirakit untukmu oleh Juru Dongeng janganlah kau menganggap itu hanya terjadi padamu dan karenanya membuatmu merasa ciut atau malah mengobarkan marahmu dan membusuk-busukkan Juru Dongeng kita itu. Ia ada sebab kita ada, atau sebaliknya: kita ada dan karenanya Sang Juru Dongeng itu ada.', 'segitiga.jpg', 100, 1, '2020-03-23', 95000),
(28, 'Antipanik! Buku Panduan Virus Corona', ' Elex Media Komputindo', 'dr. Jaka Pradipta, Sp.P dan dr. Ahmad Muslim Nazar', 'Tepat 11 Maret 2020, WHO secara resmi menyatakan COVID-19 sebagai pandemi. Pandemi adalah wabah atau penyakit yang berjangkit secara bersamaan dengan penyebaran secara global di seluruh dunia. Semua warga dunia dihimbau agar lebih meningkatkan kewaspadaan dalam mencegah maupun menangani COVID-19. Anda tidak perlu panik! Sejatinya penyakit ini dapat sembuh dengan imunitas tubuh yang baik. Langkah perlindungan yang menjadi tanggung jawab kita adalah lindungi diri sendiri, lindungi keluarga kita, dan lindungi rumah kita dengan berbagai cara yang dapat Anda baca selengkapnya dalam buku ini.', 'corona.jpg', 50, 2, '2020-04-20', 60000),
(29, 'Catatan Harian Sang Pembunuh', ' Gramedia Pustaka Utama', 'Kim Young-Ha', '\"Terakhir kali aku membunuh seseorang adalah 25 tahun yang lalu—atau 26 tahun yang lalu? Kurang-lebih begitulah.\" Kim Byeong-su adalah mantan pembunuh berantai berumur 70 tahun yang mulai hilang ingatan akibat demensia. Demi mempertahankan ingatan yang tersisa, ia pun mencatat semua yang terjadi pada dirinya, termasuk kehadiran kekasih putrinya yang dicurigainya sebagai pembunuh berantai yang kini mengincar wanita-wanita di desa tempat tinggal mereka. Kim Byeong-su harus memastikan putrinya tidak menjadi korban berikut. Ia pun memutuskan membunuh pria itu, sebelum ingatannya hilang seluruhnya.', 'catatan.jpg', 99, 2, '2020-04-16', 58000),
(30, 'Alien Of Rex Regum Qeon', ' Elex Media Komputindo', 'Lemon', 'Good Game, Lemon!—begitulah sorak-sorai para fans setiap kali Lemon memenangkan pertandingan. Lemon, yang juga dijuluki `Alien`, sudah begitu banyak memenangkan kejuaraan hingga namanya pun mendunia. Tapi, bagaimana sih sebenarnya kehidupan Lemon di balik cemerlangnya prestasi yang dia tunjukkan? Dan apa yang akan Lemon lakukan setelah `gantung ponsel` nanti? Lemon: Alien of Rex Regum Qeon akan menguaknya untuk kamu.', 'alien.jpg', 99, 2, '2020-03-16', 85000),
(31, 'MetroPop: Belok Kiri Langsing', 'Gramedia Pustaka Utama', 'Achi TM', 'Kayak digeprek dengan sambal level sepuluh rasanya saat Gendis diputusin Herman. Sudah lama pacaran, nyicil rumah barengan, eh malah ambyar. Katanya Gendis kegemukan. Katanya Herman mau hijrah dan nggak bisa pacaran lagi. Makan ayam geprek adalah cara Gendis mengobati patah hati sambil meratapi nasib. Kini ia cuma bisa lari dari kenyataan ketika jarum timbangan terus bergeser ke kanan. Sampai suatu saat, Gendis mengetahui fakta mengejutkan. Dimas, cowok ganteng pemilik warung ayam geprek langganannya, ternyata peserta maraton yang dulu pernah ia bully karena kegemukan. Cowok yang pernah menyumpahi dan mendoakannya supaya gemuk! Ya Allah… Dan semakin mengenal Dimas, Gendis merasa harus segera berbelok untuk menemukan tujuan hidupnya yang baru.', 'belok.jpg', 99, 1, '2020-04-07', 87000),
(32, 'MetroPop: Resign!', 'Gramedia Pustaka Utama', 'Almira Bastari', 'Kompetisi sengit terjadi di sebuah kantor konsultan di Jakarta. Empat anggota The Cungpret, alias kacung kampret, tak ada yang mengincar penghargaan pegawai terbaik, jabatan tertinggi, atau bonus terbesar. Namun mereka bertaruh dan saling sikut untuk resign!\r\n\r\nCungpret #1: Alranita Pegawai termuda tapi paling lama bertahan di sebuah tim yang dipimpin Bos Galak.\r\n\r\nCungpret #2: Carlo Pegawai yang baru menikah dan ingin mencari pekerjaan dengan gaji lebih tinggi.\r\n\r\nCungpret #3: Karenina Pegawai senior yang selalu dianggap tidak becus tapi terus-menerus dijejali proyek baru.\r\n\r\nCungpret #4: Andre Pegawai senior kesayangan si bos yang berniat resign demi dapat menikmati kehidupan keluarga yang lebih normal dan seimbang.\r\n\r\nSang Bos: Tigran Genius, misterius, dan galak, tapi sukses dipercaya untuk memimpin timnya sendiri di usianya yang masih cukup muda.\r\n\r\nResign harusnya tidak sulit dilakukan, kecuali kamu memiliki bos yang punya radar kelas kakap dan mampu menjegal setiap usaha The Cungpret untuk segera hengkang dari kepemimpinannya. Pertanyaannya, siapakah yang akan memenangkan taruhan dan terbebas dari hukuman yang sudah ditentukan?', 'resign.jpg', 99, 2, '2018-02-02', 68000),
(33, 'MetroPop: The Player', 'Gramedia Pustaka Utama', 'Aliazalea', 'Aku diundang ke pernikahan sahabatku, dan di situlah aku akan bertemu untuk pertama kalinya setelah bertahun-tahun dengan cinta matiku, yang menolakku mentah-mentah. Itu seperti mimpi buruk. Sayangnya, itulah hidupku, Hanna. Tapi aku ingin menunjukkan kepada cowok itu bahwa aku sudah melupakannya. So what kalau aku harus dibantu Pierre, si playboy, personel boyband yang digilai kaum wanita? Aku yakin rencana ini aman, karena toh Pierre bukan tipeku, dan aku jelas bukan tipenya. Kami hanya perlu melakukan ini beberapa hari, dan setelah itu kami bisa melanjutkan hidup masing-masing. Player, itulah julukan banyak orang untukku, Pierre, karena tidak ada orang yang tidak mencintaiku. Tapi mereka salah, karena ada satu orang yang sepertinya tidak peduli sama sekali padaku. Cewek seksi yang mengabaikanku karena dia tergila-gila dengan cowok lain. Aku tidak bisa membiarkannya seperti ini, dan aku hanya memiliki beberapa hari untuk mengubah perasaannya.', 'player.jpg', 99, 3, '2020-04-07', 99000),
(34, 'Harlequin: Kembalinya Rafe Mackade ', 'Gramedia Pustaka Utama', 'Nora Roberts', 'Sepuluh tahun setelah meninggalkan Antietam, Maryland, Rafe MacKade akhirnya kembali ke kampung halamannya. Meski sekarang ia pengusaha sukses alih-alih bocah pencari masalah, Rafe masih terlihat tampan dan berbahaya, yang membuatnya menjadi bahan gosip terkini warga Antietam. Sang pendatang baru yang cantik, Regan Jones, tak mampu menyangkal bahwa rasa penasarannya tergelitik. Pria macam apa yang bisa membuat penduduk kota kecil ini heboh? Namun, Regan ternyata tidak perlu menunggu lama untuk mencari tahu...', 'nora.jpg', 99, 3, '2020-04-21', 72000),
(35, 'Sweetheart in Your Ear', '	Elex Media Komputindo', 'Kincirmainan', 'Milo Sayaka mulai merasa tersisih saat sahabat yang selalu\r\n\r\nmenjadi bayang-bayangnya akhirnya memiliki tambatan\r\n\r\nhati. Sudah belasan tahun ia selalu ada untuk melindungi\r\n\r\nKiera Zelma karena keterbatasan gadis itu, tapi tak sekali\r\n\r\npun Saya menyangka akan ada hari ketika sang sahabat\r\n\r\ndiinginkan oleh orang lain.\r\n\r\nKiara yang biasanya selalu tampak sedih tiap kali Saya\r\n\r\nbersama pacar-pacarnya, kini tersenyum ceria karena\r\n\r\nkehadiran Herjuna.\r\n\r\nTak akan ada lagi gadis bersuara sumbang yang\r\n\r\nmengkhawatirkan kesehatan Saya, atau mempertanyakan\r\n\r\nkesetiaan gadis yang sedang bersamanya. Awalnya Saya\r\n\r\npikir dia tak akan bisa jatuh cinta kepada sahabatnya.\r\n\r\nBukan karena Kiara tidak manis, tidak baik, atau tidak layak\r\n\r\ndicintai, melainkan karena dia tuli.', 'sweet.jpg', 99, 3, '2020-04-07', 90000),
(36, 'Heal Me', 'GWP', 'Ria N. Badaria', 'Reynando terbelenggu rasa bersalah karena kematian Marta, kekasihnya. Ia menjadi menutup diri. Kariernya sebagai penyanyi dan penulis lagu pun berakhir. Saat Reynando berada di titik terendah usaha penyembuhannya, ia bertemu dengan Lili, sepupu jauh sekaligus pasien Hadi yang lain. Sama dengan Rey, Lili terbelenggu rasa bersalah semenjak keluarganya meninggal karena kecelakaan.', 'heal.jpg', 100, 3, '2020-04-06', 50000),
(37, 'Tokyo dan Perayaan Kesedihan', 'Gramedia Pustaka Utama', 'Ruth Priscillia Angelina', 'Joshua Sakaguchi Widjaja meneruskan perjalanan ke Tokyo untuk sejenak menjadi pecundang dalam hidupnya. Dia mengimpikan duduk-duduk santai bersama kopi di dekat taman dan menemukan gadis cantik untuk dijadikan teman menyenangkan. Tapi, di Tokyo yang menyambutnya dengan hangat, dia malah dipertemukan dengan Shira yang banyak bersedih dan meninggalkan banyak surat. Untuk pertama kali dalam hidupnya, alih-alih menjadi pecundang, Joshua malah sibuk menjawab banyak pertanyaan yang tak pernah dia pertanyakan.\r\n\r\nShira Hidajat Nagano melarikan diri ke Tokyo untuk menemukan penyelesaian paling terencana dalam hidupnya.\r\n\r\nDia membayangkan terjebak di lautan hutan bersama berbagai penyesalan untuk selama-lamanya ditenggelamkan. Namun, di Tokyo yang menggigilkan hatinya, dia justru bertemu Joshua yang semarak dan mampu memvalidasi keputusasaannya. Untuk kali terakhir dalam hidupnya, bukan mengerjakan penyelesaian, Shira dihentikan sejenak oleh jawaban-jawaban yang tak pernah dia kira akan didapatkannya.', 'tokyo.jpg', 99, 3, '2020-04-15', 75000),
(38, 'CR: Dark Wild Night', 'Elex Media Komputindo', 'Christina Lauren', 'YANG TERJADI DI VEGAS\r\n\r\nBIARLAH JADI RAHASIA\r\n\r\nYANG TIDAK TERJADI DI VEGAS\r\n\r\nAKAN SULIT UNTUK DITERIMA\r\n\r\nLola dan Oliver bertemu di Las Vegas dalam keadaan mabuk\r\n\r\nparah. Kecocokan di antara keduanya akhirnya membuat\r\n\r\nmereka jadi \'teman dekat\'.\r\n\r\nPada kenyataannya, Lola menyukai Oliver semenjak pertama\r\n\r\nkali bertemu. Aksen Aussie Oliver membuatnya merona,\r\n\r\nsikap protektif Oliver membuatnya meleleh.\r\n\r\nNamun ketika jalan kehidupannya mulai lebih cerah,\r\n\r\nLola tak pernah menyangka bahwa Oliver akan membebani\r\n\r\npikirannya. Dia harus dihadapkan pada dua pilihan sulit:\r\n\r\nmembangun karier yang cemerlang atau memperbaiki\r\n\r\nkehidupan cintanya yang selalu berantakan.', 'dark.jpg', 99, 3, '2020-04-09', 95000),
(39, 'HR: Her Enemy at The Altar', 'Elex Media Komputindo', 'Virginia Heath', 'Sekali menjadi wanita tanpa pasangan dansa, Lady Constance Stuart tetap sendiri dalam setiap acara dansa. Namun, dalam semalam, skandal merebak dan menghebohkan kalangan bangsawan ketika Lady Constance tertangkap basah\r\n\r\nberada dalam pelukan Aaron Wincanton, putra musuh terbesar keluarganya!\r\n\r\nSkandal tetaplah skandal. Sebelum matahari terbit keesokan\r\n\r\nharinya, Lady Constance terpaksa menikahi Aaron Wincanton\r\n\r\ndengan berbekal surat izin khusus. Tapi tidak hanya itu.\r\n\r\nLady Constance juga diusir dari rumahnya dan diasingkan\r\n\r\noleh keluarganya karena menikahi musuh bebuyutan ayahnya!\r\n\r\nAkan seperti apa nasib Lady Constance?\r\n\r\nBagaimana masa depan pernikahannya dengan Aaron Wincanton? Hidup bahagia selamanya atau justru memeluk malapetaka?\r\n\r\nEdisi Rekomendasi', 'her.jpg', 99, 3, '2020-04-09', 90000),
(40, 'City Lite: Geronimo', 'Elex Media Komputindo', 'Indah Hanaco', '“Love gives you wings. It makes you fly. I don’t even call it love. I call it Geronimo.”\r\n\r\n(Jerry Fletcher – Conspiracy Theory)\r\n\r\nTara Solange dan Maxwell Ravindra terikat oleh pertemuan dan pertemanan yang unik. Sejak awal mereka tahu jika terhubung oleh satu kisah masa lampau yang tak indah untuk dikenang. Hubungan keduanya rumit. Mungkin seperti rahasia makam Putri Dai atau Tutankhamum. Namun, atas nama cinta yang meluap-luap, segala rintangan berubah menjadi debu. Tak ada yang mustahil untuk diatasi. Termasuk godaan orang ketiga atau restu keluarga yang tidak sepenuhnya turun. Akan tetapi, ketika kecemburuan membaur dengan kesalahpahaman, masih diimbuhi dengan kekelaman masa lalu yang sulit untuk dimaklumi, semua menjadi lebih kusut. Tara pernah berbuat salah. Maxwell pun tak kalah berdosanya. Mungkinkah ada jalan kembali?\r\n\r\n“Aku nggak kenal istilah ‘cinta tak harus memiliki’. Bullshit itu.”\r\n\r\n(Tara Solange)\r\n\r\n“Saya nggak yakin bisa nemuin orang kayak Tara di masa depan. Mungkin terdengar gombal dan emosional, tapi buat saya Tara adalah soulmate. Belahan jiwa saya.”\r\n\r\n(Maxwell Ravindra)', 'geronimo.jpg', 99, 3, '2019-10-09', 100000),
(41, 'Citylite : Dua Jejak', 'Elex Media Komputindo', 'Aqessa Aninda', 'Katanya, untuk beranjak dan melanjutkan kehidupan kadang perlu dibantu orang lain.\r\n\r\n“Aku ngerti, dia berarti banget buat kamu dan kamu nggak bisa dapetin dia, aku tahu. Makanya kamu pilih aku. Waktu kamu ajak aku jalan, aku tahu aku bukan pilihan pertama kamu. Aku udah siap dengan semua konsekuensi itu...”\r\n\r\nDan menjadi realistis katanya adalah pilihan yang tepat.\r\n\r\n“Terima kasih sudah menjaga aku tetap waras....”\r\n\r\nTapi bukankah kebahagiaan seharusnya kita yang ciptakan sendiri?\r\n\r\n“Kinan ingin berterima kasih pada mereka dengan cara berhenti bersedih dan mulai belajar menjadi bahagia tanpa bertumpu dengan orang lain.Kinan tahu ini mungkin nggak masuk akal buat sebagian orang. Tapi Kinan yang paling tahu diri Kinan sendiri. Kapan Kinan harus lari, kapan Kinan harus berhenti.”\r\n\r\nDan menjadi realistis itu tetap harus jujur dengan perasaan kita sendiri bukan?\r\n\r\n“Gue pengin memiliki lo bukan karena berkompetisi dengan siapa pun. Bukan juga karena gue butuh seseorang di samping gue. Bukan pengin punya seseorang yang bisa gue pamerin ke orang-orang. Jadi jelasin sebelah mananya gue anggap lo barang? Menurut lo selama ini gue ngapain? Apa lo nggak sadar sama sekali? Does he love you better than I do?”\r\n\r\nIni adalah bagian akhir dari kisah empat orang yang harus mengurai benang kusut di antara mereka. Karena setiap orang punya ruang khusus untuk untuk seseorang yang sulit untuk digantikan oleh orang lain. Mereka mengukirnya sedemikian rupa hingga tak ada senyawa apa pun yang mampu menghapusnya begitu saja.', 'dua.jpg', 99, 3, '2019-09-23', 93000),
(42, 'Throne of Jade: Takhta Negeri Tiongkok', 'Elex Media Komputindo', 'Naomi Novik', '“Temeraire adalah naga sepanjang masa.”\r\n\r\n—TeryBrooks\r\n\r\nKetika Inggris mengadang sebuah kapal Prancis beserta muatannya yang berharga—sebutir telur naga yang belum menetas — Kapten Will Laurence dari HMS Reliant tanpa disangka-sangka menjadi penunggang dan pemimpin seekor naga hebat yang dinamainya Temeraire.\r\n\r\nSebagai anggota baru di Korps Udara Inggris, Laurence dan Temeraire dengan segera membuktikan keberanian mereka dalam pertarungan sengit melawan tentara invasi Bonaparte.\r\n\r\nKini Tiongkok sudah mengetahui bahwa hadiah langka mereka, yang dimaksudkan untuk Napoleon, jatuh ke tangan Inggris—dan delegasi dari Tiongkok bersumpah akan mengambil kembali sang naga agung. Namun, Laurence menolak untuk bekerja sama. Terancam hukuman gantung karena pembangkangannya, Laurence tak punya pilihan selain menemani Temeraire kembali ke Timur Jauh— sebuah perjalanan panjang yang penuh bahaya, intrik, serta teror misterius dari lautan dalam. Namun begitu mereka berdua sampai di istana kekaisaran Tiongkok, lebih banyak lagi\r\n\r\npenemuan mengejutkan serta kemarahan yang lebih gelap\r\n\r\nmenanti mereka.', 'jade.jpg', 99, 1, '2020-04-21', 72000),
(43, 'Melangkah', 'Grasindo', 'JS Khairen', 'Listrik padam di seluruh Jawa dan Bali secara misterius! Ancaman nyata kekuatan baru yang hendak menaklukkan Nusantara. Saat yang sama, empat sahabat mendarat di Sumba, hanya untuk mendapati nasib ratusan juta manusia ada di tangan mereka! Empat mahasiswa ekonomi ini, harus bertarung melawan pasukan berkuda yang bisa melontarkan listrik! Semua dipersulit oleh seorang buronan tingkat tinggi bertopeng pahlawan yang punya rencana mengerikan. Ternyata pesan arwah nenek moyang itu benar-benar terwujud. “Akan datang kegelapan yang berderap, bersama ribuan kuda raksasa di kala malam. Mereka bangun setelah sekian lama, untuk menghancurkan Nusantara. Seorang lelaki dan seorang perempuan ditakdirkan membaurkan air di lautan dan api di pegunungan. Menyatukan tanah yang menghujam, dan udara yang terhampar.” Kisah tentang persahabatan, tentang jurang ego anak dan orangtua, tentang menyeimbangkan logika dan perasaan. Juga tentang melangkah menuju masa depan. Bahwa, apa pun yang menjadi luka masa lalu, biarlah mengering bersama waktu.', 'melangkah.jpg', 15, 1, '2020-04-02', 93000),
(44, 'Pemanggil Cahaya ', 'Gramedia Pustaka Utama', 'V.E. Schwab', 'Kegelapan menyelimuti kerajaan Maresh. Keseimbangan kekuasaan di antara keempat London, yang sejak awal memang rapuh, mencapai titik genting.\r\n\r\nKarena suatu tragedi, Kell––dianggap sebagai Antari terakhir––mulai goyah akibat tekanan persaingan mereka.\r\n\r\nLila Bard, sang pencuri, berhasil bertahan dan bertumbuh berkat serangkaian percobaan sihir. Tapi kini ia harus belajar\r\n\r\nmengendalikan sihir, sebelum sihir mengurasnya habis.\r\n\r\nSementara itu, Kapten Night Spire Alucard Emery, yang namanya tercemar, mengumpulkan kru.\r\n\r\nBersama-sama, ketiganya mencoba berpacu melawan waktu\r\n\r\ndemi melakukan sesuatu yang mustahil: memerangi musuh kuno yang kembali untuk merebut mahkota, sekaligus menyelamatkan dunia dari kebusukan.', 'pemanggil.jpg', 99, 1, '0000-00-00', 165000),
(45, 'Bocah Keranjang', 'Deepublish', 'Nurasiah', '\"Ini adalah sebuah desa kecil di Kabupaten Magelang. Berada di cekungan pegunungan dengan curah hujan yang cukup tinggi membuat daerah ini memiliki iklim sejuk dan cadangan air tanah yang cukup baik. Lahan pertanian atau garapan seperti padi dan sayuran menjadi hasil terbesar dari daerah ini. Itulah sebab angka pekerjaan masyarakat sebagai petani menduduki persentase terbesar sebanyak 63%.\r\n\r\nDi desa kecil inilah, Nenek Sumi hidup bersama kedua cucunya Pandu dan Pandi. Ayah kedua anak itu, merupakan anak pertama dari Nenek Sumi yang hilang kabarnya sejak ia memutuskan merantau ke kota besar dua tahun silam. Sama halnya seperti ibu kedua anak itu, sudah lima tahun tidak ada kabar tentangnya sejak ia menjadi TKI. Sebab-sebab tersebut menyebabkan Pandu dan Pandi menjadi tanggungan Nenek Sumi sekarang.\r\n\r\nSebagai tulang punggung yang menghidupi kedua cucunya, Nenek Sumi hanya bisa bekerja sebagai pencabut gulma di persawahan milik masyarakat sekitar. Berupahkan tiga ribu rupiah per hari, Nenek Sumi bekerja dari pagi hingga petang. Kerasnya kehidupan membuatnya tetap bekerja meskipun telah berada di usia senja.\"', 'bocah.jpg', 99, 1, '2020-01-14', 50000),
(46, 'Katharsis', 'Yayasan Pustaka Obor Indonesia', 'Alvin Hadiwono', 'Karena seluruh semesta ini adalah satu mahluk, maka hal yang paling buruk dari manusia adalah bagian diriku juga, sehingga aku tidak akan menjauh dari mereka, aku tidak membenci mereka, melainkan selalu memaafkan-nya ... Agar pada akhirnya semua manusia menyadari bahwa kita semua adalah Satu beserta semesta ini ... seperti ke - Utuhan diriku.', 'katharis.jpg', 100, 2, '2017-02-21', 50000),
(47, 'Memorizing Like an Elephant', 'Kepustakaan Populer Gramedia', 'Yudi Lesmana', 'Yudi Lesmana adalah satu di antara 149 Grandmaster of Memory di dunia. Dia sangat bersemangat dalam memajukan olahraga daya ingat (memory sport) di Indonesia; dia mengirim tim Indonesia untuk mengikuti beberapa kejuaraan daya ingat, seperti Japan\r\n\r\nFriendly dan Philippine Open, dan memen angi beberapa medali emas. Prestasi ini memperlihatkan bahwa kemampuan untuk mengingat sesuatu bisa dipelajari, dilatih, dan diajarkan.\r\n\r\nBuku memori ini, tak diragukan, ditulis oleh seorang yang berpengalaman dan ahli di bidangnya, karena Yudilah satu-satunya orang Indonesia yang mampu masuk dalam peringkat 50 besar dunia. Buku i ni menjelaskan bagaimana mengingat dengan benar, sebagaimana dilakukan oleh atlet-atlet daya ingat dalam kejuaraan dunia daya ingat, World Memory Championship. Disajikan dengan cara yang ringan, kocak, dan mudah dipahami. Selamat melatih daya ingat dan selamat bergabung dengan “brain stars club“.', 'memori.jpg', 15, 2, '2017-07-14', 65000),
(48, 'Hukum yang Bergerak', 'Yayasan Pustaka Obor Indonesia', 'Sulistyowati Irianto', 'Hukum memiliki banyak wajah, dan berada dalam bentangan aktivitas masyarakat yang luas, dan merasuk dalam setiap sendi kehidupan. Oleh karenanya hukum harus dipelajari dengan menempatkannya pada konteks sosial, budaya, ekonomi, dan politik secara holistik. Banyak persoalan hukum dan kemasyarakatan yang sangat rumit dan tidak bisa dijawab secara normatif tekstual, oleh karenanya pendekatan ilmu sosial, khususnya antropologi sangat menolong untuk dapat menjelaskan tentang bagaimanakah hukum bekerja dan beroperasi dalam keseharian hidup masyarakat. Berbagai tulisan dalam buku ini memperlihatkan studi Antropologi Hukum Indonesia yang sedang berkembang memasuki ranah baru karena terjadinya pertemuan antara berbagai sistem hukum dalam ranah global. Para aktor telah menyumbangkan kepada terjadinya pergerakan hukum dari segala arah menuju ke segala arah. Imbas pergerakan hukum global juga dapat diamati dalam kajian pluralisme hukum Indonesia. Adanya wacana akses keadilan, hak asasi manusia, perempuan dan masyarakat adat, pemberantasan korupsi, sumberdaya alam dan lingkungan, menampakkan konstelasi pluralisme hukum global dalam konteks lokal. Buku ini mengajak pembaca, khususnya mereka yang memberi perhatian pada masalah hukum dan kemasyarakatan, baik kalangan akademisi, praktisi, maupun warga masyarakat luas, untuk memahami bagaimana pentingnya mempelajari hukum dengan menempatkannya dalam konteks kemasyarakatan dan kebudayaan  di mana hukum itu berada.', 'hukum.jpg', 100, 2, '2017-02-21', 71000),
(49, 'Almost 10 Years Ago', 'Kepustakaan Populer Gramedia', 'Trini', 'Mana mungkin aku tertarik padanya?\r\n\r\nDia membuatku takut.”\r\n\r\n“Itulah masalahmu. Kau jarang terlihat bahagia. Karena saat kau menyesapnya, kau langsung menguburnya secepat\r\n\r\nperasaan itu datang.”\r\n\r\n“Kau sepertinya sangat ahli tentangku,” kataku datar.\r\n\r\n“Jika kau tidak mau terlihat mendung sepanjang waktu, mulailah dengan hal kecil seperti berterima kasih saat orang memujimu, bukan malah menatapnya curiga.”\r\n\r\nJangan salahkan Anna Mollan yang selalu memandang sinis\r\n\r\nkehidupan. Sepuluh tahun lalu, umurnya baru sembilan. Di\r\n\r\nmusim panas yang seharusnya menyenangkan, ibu dan kakaknya meninggal dalam kecelakaan. Ayahnya memang selamat, tapi mengalami gangguan kejiwaan. Itu sebabnya Anna tidak percaya lagi pada kebahagiaan, termasuk yang hadir dalam bentuk cinta.\r\n\r\nTidak pada Joshua Madison—psikiater tampan yang menangani ayahnya, tidak juga pada Nolan Vervain—bassist keren yang tergila-gila padanya. Tidak pada siapa pun sampai pria misterius itu datang memberinya bunga setiap hari, lalu tiba-tiba menghilang saat Anna mulai membuka diri, dan kembali hanya untuk membuat hidup Anna terhempas sekali lagi.', 'almost.jpg', 99, 2, '2020-04-21', 45000),
(50, 'Parents Gamer Juga bisa Sukses', 'Gramedia Pustaka Utama', 'Caezario Rei Kyrksen', 'Berbagai macam kiat dan strategi sudah dipaparkan para ahli tentang bagaimana menghadapi fenomena kecanduan dan kegilaan pada game. Namun banyak orangtua tetap resah karena kegilaan anak pada game tidak berubah. Penulis buku\r\n\r\nini adalah seorang pecandu game akut yang terbebaskan, dan kini sukses dalam kehidupannya. Buku ini menjadi pembeda, karena ditulis oleh seorang pelaku yang juga sangat menggilai ilmu teknologi pikiran bawah sadar. Ia mengungkap rahasia bagaimana menerapkan strategi dalam permainan game, dan menggunakannya untuk meraih sukses dalam kehidupan. Hal yang jarang kita temui di buku parenting gamers lainnya. Sebuah buku parenting dan pengembangan diri yang layak dibaca, baik oleh orangtua, anak-anak, maupun seorang gamer.', 'game.jpg', 99, 2, '2020-04-06', 65000),
(51, 'Seribu Wajah Ayah', 'Grasindo', 'Azhar Nurun Ala', 'Ketika sang ayah pergi meninggalkan dunia ini, anak pulang ke kampung halamannya dengan perasaan sedih yang mendalam. Di kamar ayahnya, ia menemukan buku album biru usang yang berisi 10 foto. Setiap foto mengisahkan perjalanan hidupnya dan sang ayah tunggal dari mulai anak dilahirkan hingga pertemuan mereka yang terakhir yang berakhir dengan pertengkaran. Sang anak mengingat kembali momen-momen penting dalam hidupnya bersama sang ayah dan pelajaran yang diberikan sang ayah semasa hidupnya.', 'ayah.jpg', 15, 2, '2020-04-02', 55000);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(3) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'Fiksi & Sastra'),
(2, 'Non Fiksi'),
(3, 'Remaja');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(10) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `id_buku` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subtotal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang2`
--

CREATE TABLE `keranjang2` (
  `id_keranjang2` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `subtotal` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang2`
--

INSERT INTO `keranjang2` (`id_keranjang2`, `id_buku`, `jumlah`, `subtotal`) VALUES
(40, 47, 1, 65000);

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `nama`, `username`, `password`) VALUES
(6, 'Ahmad Rizal', 'rizal', 'rizal'),
(7, 'rizal', 'asek', 'asek');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(50) NOT NULL,
  `id_pengguna` int(5) NOT NULL,
  `total_bayar` int(50) NOT NULL,
  `tgl_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `harga` (`harga`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `jumlah` (`jumlah`),
  ADD KEY `subtotal` (`subtotal`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- Indexes for table `keranjang2`
--
ALTER TABLE `keranjang2`
  ADD PRIMARY KEY (`id_keranjang2`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `barang` (`total_bayar`),
  ADD KEY `pembeli` (`id_pengguna`,`total_bayar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `keranjang2`
--
ALTER TABLE `keranjang2`
  MODIFY `id_keranjang2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `keranjang2`
--
ALTER TABLE `keranjang2`
  ADD CONSTRAINT `keranjang2_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pengguna`) REFERENCES `pengguna` (`id_pengguna`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
