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
