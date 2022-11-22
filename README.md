<p align="center">
</p>

<h1 align="center">Aplikasi Sistem Informasi Manajemen Burjo Berbasis Web</h1>

<span align="center">

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/139795be2c474f848c4994d7ecdc5924)](https://app.codacy.com/manual/haxorsprogramming/Nadha-Resto?utm_source=github.com&utm_medium=referral&utm_content=haxorsprogramming/Nadha-Resto&utm_campaign=Badge_Grade_Dashboard)
![CI](https://github.com/haxorsprogramming/Nadha-Resto/workflows/CI/badge.svg) ![GitHub last commit](https://img.shields.io/github/last-commit/haxorsprogramming/Nadha-Resto.svg) ![GitHub repo size in bytes](https://img.shields.io/github/repo-size/badges/shields.svg) [![License](https://img.shields.io/github/license/haxorsprogramming/Nadha-Laundry.svg)](LICENSE) 

</span>

<hr/>
<br/><br/>
<b>Komponen yang digunakan</b>
<ul>
<li>Front End : HTML, Bootstrap</li>
<li>Javascript : Vue JS, Native Javascript, & Jquery</li>
<li>Bootstrap Theme By <a href='https://demo.getstisla.com/index.html'>[Stisla]</a></li>
<li>Cloud Serverless & Realtime Event : Firebase</li>
</ul>
<br/>
<b>Library</b>
<ul>
<li>Axios (Resfull API Client)</li>
<li>Domp PDF (Report for PDF document)</li>
<li>PHP Mailer (Mail sender)</li>
<li>Socket Io</li>
<li>Google Chart</li>
<li>AWS Serveless (Coming soon)</li>
</ul>
<br/>
<b>Fitur</b>
<ul>
<li>Monitoring Aktivitas Restoran</li>
<li>Sistem Delivery Order</li>
<li>Manajemen Pesanan</li>
<li>Manajemen Pelanggan</li>
<li>Manajemen Meja</li>
<li>Manejemen Operator(Kasir, waiters, dapur) & Shift Pegawai</li>
<li>Manejemen Pembayaran</li>
<li>Manajemen Bahan Baku</li>
<li>Manajemen Promo & Diskon</li>
<li>Manajemen Pembukuan Restoran</li>
<li>Notifikasi Pesanan Email & Whatsapp (Terintegrasi dengan API WooWa)</li>
<li>Setting Front End Customer Page</li>
</ul>
<br/>
<b>Kelompok 7 | SIA</b>
<ul>
<li> Ahmad Najmudin Alfatih</li>
<li> Karunia Nur Apriyanti</li>
<li> Wanda Nur Halimah</li>
<li> Windi Pramesti</li>
</ul>

<h3>Tampilan Aplikasi</h3>

<table>
<!-- row -->
<tr>
<td>
<small>Home (Halaman Depan)</small>
</td>
<td>
<small>Menu Order</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Menu List</small>
</td>
<td>
<small>Cart</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Checkout</small>
</td>
<td>
<small>Notifikasi Email</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Beranda</small>
</td>
<td>
<small>Form Pesanan</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Pilih Menu</small>
</td>
<td>
<small>Pembayaran</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Data Menu</small>
</td>
<td>
<small>Form Tambah Menu</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Data Pelanggan</small>
</td>
<td>
<small>Pembelian Bahan Baku</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Form Pembelian Bahan Baku</small>
</td>
<td>
<small>Laporan Transaksi</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Arus Kas</small>
</td>
<td>
<small>Statistik</small>
</td>
</tr>
<!-- row -->
<tr>
<td>
<small>Setting Resto</small>
</td>
<td>
<small>Setting Front End</small>
</td>
</tr>
<!-- row -->
</table>

<h4><b>Tutorial Instalasi Ke Localhost Project SIA</b></h4>

<ul>
<li>Download Repository kami menggunakan gitdash dengan command "git clone https://projectsia-burjo.git.io"</li>
<li> Untuk menyesuaikan kembali database pada file <code>engine/rule/base.php</code></li>
<li> Lalu sesuaikan dengan database sebelumnya di file <code>engine/rule/database.php</code></li>
<li> Dan juga pada bagian file dengan format sql di file <code>database/burjo-sia.sql</code></li>
<li> setelah itu buat database baru pada phpmyadmin, akan tetapi pastikan terlebih dahulu konfigurasi path database ketiga file sebelumnya sama</li>
<li> Untuk printer cetak struk, tipe yang disarankan adalah (Epson TM-T82, Thermal Printer GP-5890XIII, Epson T-88IIIP, MiniPOS MP-RP58L), atau tipe lain yang mendukung sdk escopos</li>
<li> Untuk notifikasi ke whatsapp pelanggan, kami menggunakan integrasi melalui website yang tersedia https://woo-wa.com/, silahkan berlangganan untuk mendapatkan key & mengaktifkan di aplikasi ini.</li>
<li> Konfigurasi pengaturan burjo sebelum menggunakan aplikasi ini</li>
<li> Untuk mengaktifkan pemesanan delivery order membutukan service firebase, silahkan buat akun firebase & setting di menu aplikasi</li>
</ul>

<p>jika terdapat masalah atau kesalahan dalam aplikasi kami dapat menghubungi maupun memberikan masukan/issue melalui <b>https://github.com/evermore6/projectsia-burjo.github.io</b>. Aplikasi ini kami beri lisensi opensource (MIT) jadi teman teman bebas untuk menggunakan & mengembangkannya kembali. Apabila teman" menemukan bug yang ada di aplikasi ini,
kami berharap dapat membantu pemgembangan aplikasi ini untuk lebih bagus lagi.</p>
