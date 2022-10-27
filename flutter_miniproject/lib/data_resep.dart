class resep {
  String nama, desk, bahan, cara, image;

  resep(
      {required this.nama,
      required this.desk,
      required this.bahan,
      required this.cara,
      required this.image});
}

List<resep> dataResep = [
  resep(
      nama: 'Jajangmyeon',
      desk: 'Mie dengan saus pasta kacang kedelai hitam.',
      bahan:
          '50 ml minyak sayur, 200 ml air, 100 gram chujang atau pasta kedelai hitam Korea, 250 gram dada ayam tanpa tulang, potong dadu 1 buah bawang bombai, cincang kasar 1 sdm bawang putih, cincang  1 buah zukini, potong korek api (bisa diganti timun), 3 batang daun bawang ukuran sedang potong kecil ukuran 2 cm, 1 sdt gula, 2 sdm tepung maizena larutkan dengan dua sendok air, 1 sdm minyak wijen',
      cara:
          '1. Saus jajang: Dalam wajan, panaskan minyak dengan menggunakan api sedang. Saat minyak hampir berasap, kecilkan apinya lalu tumis bawang putih dan daun bawang.  Masak hingga kecoklatan, selama tiga sampai lima menit. Angkat, sisihkan, dan saring minyaknya. 2. Tambahkan sedikit minyak ke wajan bekas menumis, masukkan chujang. Masak sambil diaduk cepat, kurang lebih selama satu menit. Angkat dan sisihkan. 3. Tumis daging ayam hingga kecokelat, selama tiga sampai lima menit. Masukkan tumisan bawang putih dan daun bawang. Tambahkan pula saus chujang-nya. 4. Tambahkan air, lalu masukkan bawang bombai yang sudah dipotong. Kecilkan apinya, masukkan tepung maizena yang sudah dilarutkan, gula, dan minyak wijen.  Aduk rata selama tiga menit.  5. Didihkan air, beri satu sendok teh garam, masukkan mi ke dalamnya. Rebus hingga lunak sesuai petunjuk kemasan. Tiriskan.  6. Tata mi di atas piring saji, tuang saus jajang, kemudian beri potongan zukini. Jajangmyeon halal ala rumahan siap disajikan.',
      image: 'images/jajangmyeon.png'),
  resep(
      nama: 'Kimbap',
      desk: 'Nasi yang dibungkus dengan rumput laut.',
      bahan:
          '4 centong nasi pulen panas secukupnya atau sesuai selera, 1 sendok makan minyak wijen, 1/4 sendok teh garam, 4 lembar nori atau rumput laut lembaran, Minyak goreng secukupnya, Biji wijen panggang secukupnya, 1 buah wortel ukuran sedang, 1/2 ikat sayur bayam, 2 buah telur ayam, 8 buah crab stick, 1 buah mentimun ukuran sedang',
      cara:
          '1. Kupas dan cuci bersih wortel. Lalu potong-potong tipis panjang sesuai selera. Tumis wortel dengan sedikit minyak dan garam sampai matang. Angkat dan sisihkan. 2. Potong-potong sayur bayam sesuai selera dan cuci sampai bersih. Tumis bayam dengan sedikit minyak dan garam sampai layu. Angkat dan sisihkan. 3. Kocok telur sampai berbusa dan tambahkan sedikit garam. Lalu goreng telur dengan teflon kecil. Setelah matang, angkat telur dan potong-potong memanjang. Sisihkan. 4. Goreng crab stick sebentar. Angkat dan sisihkan. 5. Cuci bersih dan kupas mentimun. Potong daging mentimun memanjang sesuai selera. Sisihkan. 6. Untuk nasi isian kimbap, campurkan nasi pulen yang masih panas dengan minyak wijen dan sedikit garam dalam wadah besar. Aduk nasi agar bumbu merata. 7. Kemudian siapkan alat penggulung sushi dan taruh selembar nori di atasnya. 8. Ambil nasi yang masih agak panas dan taruh di atas nori. Ratakan nasi sambil sedikit ditekan di atas nori agar merata dan tidak terlalu tebal. 9. Susun isian yang sudah kamu buat sesuai selera (wortel, bayam, telur, crab stick goreng, dan mentimun). 10. Lalu gulung nori secara perlahan sambil sedikit ditekan agar kimbap menjadi padat dan menempel saat digulung. 11. Jika sudah jadi, potong-potong kimbap sesuai selera. Taburkan biji wijen panggang di atasnya. Kimbap ala Korea sederhana siap disajikan.',
      image: 'images/kimbap.png'),
  resep(
      nama: 'Churros',
      desk: 'Kue panjang berbahan tepung yang digoreng.',
      bahan:
          '50 ml air, 100 gram mentega tawar atau margarin, 150 gram tepung terigu protein sedang, 1/4 sendok teh garam, 3 butir telur minyak untuk menggoreng',
      cara:
          '1. Rebus air bersama dengan butter dan garam. Masukkan bahan tersebut, tunggu hingga air mendidih dan mentega meleleh. 2. Masukkan tepung, aduk hingga adonan menggumpal dan kalis. Aduk terus adonan hingga sudah tidak menempel pada panci. 4. Pindahkan adonan tepung ke dalam baskom, diamkan hingga dingin. Setelah itu masukkan telurnya. Sebab jika adonan yang panas langsung dimasukkan telur, maka telur akan cepat matang dan membuat adonan menjadi rusak. 5. Adonan bisa didiamkan di suhu ruang, jika sudah dingin bisa masukkan telur satu persatu secara bertahap sembari diaduk sampai rata. 6. Masukkan adonan ke dalam piping bag dengan ukuran spuit sesuai selera. 7. Selanjutnya panaskan minyak dalam wajan dengan api sedang. Jika minyak sudah panas bisa masukan adonannya. Saat menggoreng churros pun jangan gunakan api besar dan minyak jangan terlalu panas. Sebab churros yang digoreng dengan api besar dan minyak terlalu panas, maka bagian permukaannya akan cepat matang dan cepat gosong sedangkan bagian dalamnya masih mentah. 8. Masukkan adonan ke dalam wajan dengan ukuran panjang sesuai selera, lalu goreng hingga kuning kecoklatan. Churros bisa disajikan dengan berbagai macam cocolan seperti saus cokelat, karamel, atau gula bubuk.',
      image: 'images/churros.png'),
  resep(
      nama: 'Shouffle Pancake',
      desk: 'Kue Jepang dengan tekstur lembut.',
      bahan:
          '2 butir telur, 30 ml susu cair full cream, 33 gr terigu protein sedang, 30 gr gula pasir, 1/2 sdt vanilli bubuk, 1/2 sdt air jeruk nipis, Topping: Gula bubuk secukupnya, DIY cetakan: 1 lembar kertas HVS, Selotip',
      cara:
          '1. Ambil kertas HVS dan potong dengan lepas kurang lebih 6-7 cm beberapa buah. Gulung melingkar ujung satu bertemu dengan ujung lainnya lalu selotip bagian luar lingkaran. Cetakan souffle sudah jadi. 2. Pisahkan kuning dan putih telur. 3. Kocok kuning telur dan susu hingga tercampur rata dengan whisker. 4. Campurkan tepung terigu dan vanilli, ayak. Masukkan sedikit demi sedikit ke dalam campuran telur susu. Aduk rata. 5. Kocok putih telur hingga mengembang berbusa dengan mixer, masukkan gula secara bertahap sambil dikocok. Masukkan air jeruk nipis terakhir, aduk rata. Angkat mixer. 6. Di wadah lain, kocok kuning telur dengan sedikit garam. Ambil dan campurkan sedikit demi sedikit adonan putih telur ke dalam kuning telur, aduk balik dengan spatula atau solet. 7. Usahakan tidak mengaduk berlebihan agar adonan tidak turun. 8. Siapkan teflon anti lengket, panaskan. Letakkan cetakan kertas, kecilkan api hingga sangat kecil. Tuang adonan ke dalam cetakan, sisakan sekitar 3 cm karena adonan akan mengembang. Tutup teflon pakai tutupan yang tinggi agar bisa memberi ruang souffle mengembang ke atas. 9. Setelah matang atau krang lebih 8-10 menit, balik adonan dan panggang sekitar 1 menit. Angkat dan kupas cetakan kertasnya selagi masih panas sebelum dingin dan mengerut. Angkat dan tabur gula halus.',
      image: 'images/pancake.png'),
  resep(
      nama: 'Tonkatsu',
      desk: 'Daging tanpa tulang dengan tepung roti.',
      bahan:
          '4 pcs pork loin fillet / dada ayam fillet, Garam & merica secukupnya, 2 sdm tepung terigu, 50 gr butter, 200 ml susu cair, Bumbu saus : 4 sdm kecap inggris, 5 sdm saus tomat, 5 sdm gula, 400 ml air, Bahan Balur : secukupnya Tepung terigu, secukupnya telur, secukupnya tepung roti',
      cara:
          '1. Lapisi fillet dengan plastik, pukul2 hingga daging tipis. 2. kalau sudah tipis bumbui dengan garam dan merica. Ratakan di seluruh permukaan, biarkan selama 15 menit. 3. Campur semua bahan saus kedalam 1 mangkok, aduk rata. 4. Masukan daging ke adonan tepung, pastikan semua terkena tepung. 5. Masukan ke adonan telur. 6. Masukan ke adonan tepung roti. 7. Goreng hingga kuning kecoklatan, gunakan api kecil. Tiriskan. 8. Panaskan butter hingga cair, masukan tepung terigu. Aduk rata. 9. Terus aduk hingga warna berubah kecoklatan, tambahkan air sedikit bila perlu. (gunakan api kecil). 10. Masukan bumbu saus, aduk hingga rata. 11. Saat bumbu mendidih, masukan susu cair. Aduk hingga merata, tambahkan merica secukupnya. Koreksi rasa. Dan Tonkatsu siap disajikan',
      image: 'images/tonkatsu.png'),
  resep(
      nama: 'Bibimbap',
      desk: 'Nasi dengan campuran daging dan sayuran.',
      bahan:
          'Beras 1 gelas, Telur 3 butir Timun 1 buah buang biji lalu potong kotak panjang, Wortel 2 buah potong kotak panjang, Tauge 50 gram, Bayam siangi 2 ikat, Jamur enoki potong bagian akarnya 100 gram, Jamur champignon iris tipis 5 buah, Minyak wijen 4 sdt, Margarin 1 sdm, Garam secukupnya, Tumisan Daging: Daging iga iris panjang tipis 100 gram, Saus tiram 1,5 sdm, Minyak wijen 1 sdm, Kecap 1 sdm, Merica 1/2 sdt Minyak untuk menumis 2 sdm, Saus:Gochujang (saus sambal khas korea) 1 sdm, Minyak wijen 1 sdt,Gula palem 1 sdt, Cuka 1 sdt, Air matang 1 sdm',
      cara:
          '1. Masak beras seperti biasa hingga menjadi nasi. Sisihkan. 2. Masak beras seperti biasa hingga menjadi nasi. Sisihkan. 3. Remas-remas timun jepang/kyuri dengan sejumput garam hingga layu. Sisihkan. 4. Blansir masing-masing: (celupkan sebentar dalam air mendidih) wortel, tauge, bayam, dan jamur enoki, kemudian angkat dan tiriskan. Masing-masing kemudian dicampur dengan 1 sdt minyak wijen dan sejumput garam. Aduk rata lalu sisihkan. 5. Tumis irisan jamur champignon dengan 1 sdm margarin hingga wangi dan kecoklatan. Angkat lalu sisihkan. 6. Tumisan Daging: Panaskan minyak. Masukkan daging lalu tumis hingga sari-sari dagingnya keluar dan matang. Angkat lalu tiriskan. 7. Saus: Dalam wadah, campur semua bahan saus hingga rata. 8. Siapkan mangkuk saji. Masukkan nasi secukupnya. Susun melingkar aneka sayuran dan tumisan daging. Taruh telur goreng mata sapi di tengah mangkuk. Beri saus sesuai selera. Sebelum disantap, aduk seluruhnya hingga tercampur rata.',
      image: 'images/bibimbap.png'),
];
