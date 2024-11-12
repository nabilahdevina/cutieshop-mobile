TUGAS 7
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
- StatelessWidget : Widget yang tidak memiliki "state" (keadaan) yang dapat berubah setelah dibuat. Artinya, tampilan atau data yang ditampilkan widget ini tetap sama selama aplikasi berjalan. Widget ini cocok untuk konten yang tidak memerlukan pembaruan atau perubahan UI setelah tampil. Contoh: Text, Icon, atau widget statis seperti Container dengan konten tetap.
- StatefulWidget : Widget yang memiliki "state" dan dapat berubah selama runtime. Widget ini bisa merespon interaksi pengguna, data yang diperbarui, atau kejadian lain yang mengubah tampilan atau logika. StatefulWidget digunakan ketika ada bagian UI yang perlu diperbarui atau disegarkan saat data berubah. Contoh: widget yang menerima input pengguna, seperti TextField atau Checkbox.
- Perbedaan: StatelessWidget bersifat statis, sementara StatefulWidget bersifat dinamis karena state-nya bisa berubah. Pada StatefulWidget, kita menggunakan setState() untuk memperbarui UI, sedangkan pada StatelessWidget tidak ada metode untuk memperbarui tampilan karena tampilannya tetap sama.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
- AppBar: Bagian header di bagian atas halaman yang menampilkan judul atau elemen lainnya.
Scaffold: Menyediakan struktur utama halaman, termasuk AppBar di bagian atas dan area body untuk konten.
- Row: Menyusun widget secara horizontal dalam satu baris, misalnya untuk menempatkan beberapa InfoCard.
- Column: Menyusun widget secara vertikal, memungkinkan elemen-elemen tampil dalam satu kolom.
- Card: Menampilkan konten dalam kotak dengan bayangan, memberikan efek seperti kartu.
- GridView: Membuat tata letak grid untuk menampilkan item secara teratur, misalnya dalam grid dengan tiga kolom.
- Material: Membungkus ItemCard untuk menerapkan gaya material design, termasuk efek InkWell.
- InkWell: Menambahkan efek klik pada widget, misalnya untuk menampilkan SnackBar ketika ItemCard ditekan.
- SnackBar: Menampilkan pesan singkat di bagian bawah layar saat suatu aksi dilakukan, seperti menekan tombol.
- Icon: Menampilkan ikon di dalam ItemCard sesuai fungsi yang dimaksudkan.
- Text: Menampilkan teks pada berbagai widget untuk memberi label atau informasi.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
Fungsi setState() pada StatefulWidget digunakan untuk memberi tahu Flutter bahwa ada perubahan pada "state" yang memerlukan pembaruan UI. Ketika setState() dipanggil, Flutter akan me-refresh bagian UI yang terkait perubahan tersebut, memastikan tampilan terbaru muncul sesuai dengan data terbaru. Variabel yang dapat terdampak oleh setState() adalah variabel-variabel yang dideklarasikan dalam objek State dari StatefulWidget. Variabel-variabel ini biasanya menyimpan data atau status yang menentukan tampilan pada UI. Contohnya, jika sebuah variabel counter diperbarui melalui setState(), maka bagian UI yang menampilkan nilai counter tersebut akan diperbarui dengan nilai terbaru. Contoh variabel lain yang bisa terpengaruh mencakup teks yang perlu diubah, nilai input form, status checkbox, atau elemen lain dalam "state" yang berfungsi mengendalikan tampilan UI.

4. Jelaskan perbedaan antara const dengan final.
- const: Digunakan untuk mendeklarasikan variabel atau objek yang nilainya sudah diketahui pada waktu kompilasi dan tidak akan berubah. Semua nilai atau properti dalam objek const juga harus tetap (konstan) dan tidak dapat diubah setelah inisialisasi. Contoh: const String title = "My App";
- final: Digunakan untuk variabel atau objek yang nilainya hanya bisa diinisialisasi satu kali dan akan bersifat tetap setelah itu, tetapi nilai ini dapat ditentukan saat runtime. Tidak seperti const, variabel final tidak harus diketahui nilainya pada waktu kompilasi. Contoh: final int currentTime = DateTime.now().millisecondsSinceEpoch;

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
- Membuat Project: Mulailah dengan membuat proyek bernama cutieshop menggunakan perintah flutter create. Perintah ini akan menghasilkan struktur proyek dasar Flutter di dalam direktori yang ditentukan.
- Membuat dan Mengedit File: Setelah proyek dibuat, buat file baru bernama menu.dart di dalam direktori proyek. Buka file main.dart yang dihasilkan secara default, lalu pindahkan beberapa baris kode bawaan yang diperlukan ke menu.dart sesuai dengan kebutuhan proyek. Hal ini akan membantu memisahkan tampilan utama dari konfigurasi awal proyek.
- Mengubah Widget: Di dalam file menu.dart, ubah widget utama menjadi StatelessWidget untuk memastikan tampilan tidak memiliki state yang dinamis. Ini cocok untuk bagian UI yang tidak memerlukan perubahan data selama runtime.
- Menambahkan Widget dan Styling: Tambahkan widget-widget yang diperlukan dalam menu.dart, lalu terapkan style yang diinginkan agar tampilan sesuai dengan desain yang telah direncanakan. Pastikan setiap elemen UI berfungsi dan tampil sebagaimana mestinya.
- Menjalankan Proyek: Gunakan perintah flutter run untuk menjalankan proyek dan melihat hasilnya pada emulator atau perangkat fisik. Tinjau tampilan dan pastikan semua komponen berfungsi sesuai keinginan.
- Menyimpan Perubahan ke GitHub: Setelah tampilan dan fungsionalitas sesuai, simpan perubahan ke GitHub untuk versi kontrol. Gunakan perintah git add untuk menambahkan perubahan, git commit -m "pesan perubahan" untuk membuat commit, dan git push untuk mengunggahnya ke repositori GitHub.

TUGAS 8
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Kegunaan const di Flutter:
- Immutability: Menggunakan const membuat objek atau nilai menjadi tidak dapat diubah setelah diinisialisasi, yang berarti objek tersebut bersifat tetap (immutable).
Performa: Objek yang dibuat dengan const tidak perlu dibuat ulang setiap kali aplikasi dibangun ulang, sehingga menghemat waktu dan sumber daya, meningkatkan efisiensi aplikasi.
Keuntungan Menggunakan const:
- Optimasi Performa: Karena objek const hanya dibuat sekali dan digunakan kembali, aplikasi akan berjalan lebih cepat dan lebih responsif, mengurangi waktu komputasi dan alokasi memori yang tidak perlu.
- Kode yang Lebih Bersih dan Mudah Dibaca: Penggunaan const secara eksplisit memberikan indikasi bahwa nilai atau objek tersebut tidak akan berubah selama eksekusi aplikasi, membuat kode lebih mudah dipahami dan lebih jelas.
Kapan Menggunakan const:
- Widget yang Tidak Berubah: Gunakan const untuk widget atau nilai yang sudah diketahui dan tidak berubah setelah diinisialisasi. Ini akan meningkatkan performa karena widget tersebut akan di-cache dan tidak perlu dibangun ulang.
Kapan Tidak Menggunakan const:
- Nilai yang Berubah: Jangan menggunakan const jika nilai objek tersebut perlu diubah selama runtime, karena objek const tidak dapat dimodifikasi setelah didefinisikan.
- Objek dengan Konstruktor yang Membutuhkan Logika atau Perhitungan: Jika konstruktor objek memerlukan logika atau perhitungan dinamis, seperti nilai yang dihitung berdasarkan variabel atau kondisi runtime, maka objek tersebut tidak bisa dideklarasikan sebagai const.

2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column digunakan untuk mengatur widget secara vertikal, menyusun elemen-elemen dari atas ke bawah. Widget ini sangat berguna untuk membuat tampilan yang membutuhkan elemen-elemen yang ditumpuk secara vertikal, seperti formulir atau daftar.
Row digunakan untuk mengatur widget secara horizontal, menyusun elemen-elemen dari kiri ke kanan. Widget ini cocok untuk tampilan yang memerlukan elemen-elemen berdampingan secara horizontal, seperti toolbar atau status bar.

3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan! 
Saya menggunakan beberapa elemen input Flutter untuk mengumpulkan informasi produk, yaitu:
- TextFormField untuk Nama: Untuk memasukkan nama produk.
- TextFormField untuk Harga: Untuk memasukkan harga produk dalam format angka.
- TextFormField untuk Deskripsi: Untuk memasukkan deskripsi produk.
- TextFormField untuk Rating: Untuk memasukkan rating produk dalam angka.
- TextFormField untuk Pairing: Untuk memasukkan informasi tentang pairing produk.

Selain itu, ada beberapa elemen input Flutter lainnya yang tidak digunakan dalam formulir ini, seperti:
- DropdownButtonFormField: Untuk memilih nilai dari daftar dropdown.
- CheckboxListTile: Untuk pilihan ya/tidak menggunakan kotak centang.
- RadioListTile: Untuk memilih satu opsi dari beberapa pilihan.
- SwitchListTile: Untuk memilih antara dua status menggunakan toggle switch.
- Slider: Untuk memilih nilai dalam rentang tertentu.
- Date & Time Pickers: Untuk memilih tanggal dan waktu.
  
4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Untuk menjaga konsistensi tema dalam aplikasi Flutter, kita bisa mendefinisikan tema di dalam widget MaterialApp menggunakan properti theme. Tema yang ditetapkan di sini akan secara otomatis diterapkan ke semua widget dalam aplikasi yang mendukung theming, sehingga menciptakan tampilan yang seragam dan konsisten. Melalui Theme.of(context), kita bisa mengakses properti tema yang sudah didefinisikan, seperti warna, font, dan gaya lainnya, yang dapat digunakan di berbagai widget sesuai kebutuhan.

Sebagai contoh, kita bisa menerapkan dan mengelola tema utama aplikasi di file main.dart. Dengan ini, seluruh tampilan aplikasi dapat mengikuti gaya yang diinginkan dengan mudah dan konsisten.

6. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
- Navigasi Dasar dengan Navigator.push dan Navigator.pop
Cara ini digunakan untuk navigasi sederhana, seperti berpindah ke halaman lain dan kembali. Navigator.pushmenambahkan halaman baru ke dalam stack navigasi, sementara Navigator.pop mengeluarkan halaman paling atas dari stack tersebut, sehingga kita kembali ke halaman sebelumnya.
- Named Routes
Named routes memungkinkan kita mendefinisikan rute dengan nama tertentu. Dengan cara ini, kita dapat menggunakan nama rute untuk berpindah antarhalaman, menjadikan navigasi lebih rapi dan terstruktur, terutama jika aplikasi memiliki banyak halaman.
- Mendefinisikan Routes di dalam MaterialApp
Pada widget MaterialApp, kita dapat mendefinisikan rute-rute aplikasi menggunakan properti routes. Dengan begitu, setiap rute atau halaman memiliki nama unik, dan kita dapat melakukan navigasi menggunakan Navigator.pushNameduntuk berpindah ke halaman tertentu. Ini membantu membuat navigasi lebih terorganisir.
- Nested Navigators
Untuk aplikasi yang lebih kompleks, seperti aplikasi dengan beberapa level navigasi (misalnya dengan tab atau drawer), kita bisa menggunakan navigasi bertingkat atau nested navigators. Dengan nested navigators, setiap bagian aplikasi memiliki stack navigasinya sendiri, sehingga pengguna dapat berpindah antarhalaman dalam bagian yang sama tanpa mengganggu stack navigasi utama.

Berikut adalah langkah-langkah ringkas untuk menambahkan Drawer Menu, membuat form input, dan menampilkan data di Flutter:
1. Menambahkan Drawer Menu untuk Navigasi
- Buat folder widgets di dalam lib/, lalu tambahkan file left_drawer.dart.
- Impor halaman-halaman yang ingin ditambahkan dalam navigasi Drawer.
- Tambahkan routing untuk masing-masing halaman ke dalam Drawer, termasuk fungsi untuk menutup drawer dan berpindah halaman.
- Tambahkan header untuk mempercantik drawer.
- Masukkan Drawer ke halaman yang diinginkan dengan menambahkannya sebagai parameter drawer dalam Scaffold.
  
2. Menambahkan Form dan Elemen Input
- Buat file baru productentry_form.dart di direktori lib.
- Buat kerangka dasar halaman form dengan desain material, termasuk layout yang dapat di-scroll, styling dasar, dan drawer.
- Tambahkan key (_formKey) untuk form agar dapat mengontrol form state, validasi, dan penyimpanan.
- Tambahkan field input dalam form, termasuk variabel untuk menyimpan setiap input serta validasi dan desain yang diperlukan.
- Tambahkan tombol yang dibungkus dengan padding dan align untuk menampilkan pop-up.
  
3. Menampilkan Data dengan Dialog
- Tambahkan fungsi showDialog() pada bagian onPressed() tombol untuk memunculkan data input dalam AlertDialog.
  
4. Menambahkan Navigasi pada Tombol
- Pastikan tombol dalam widget InkWell dapat melakukan navigasi ke halaman yang sesuai dengan route yang diinginkan.




