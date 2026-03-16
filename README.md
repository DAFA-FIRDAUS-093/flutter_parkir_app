# Aplikasi Manajemen Data Parkir Mobil

## Deskripsi Aplikasi
Aplikasi ini merupakan aplikasi mobile yang dibuat menggunakan Flutter untuk mengelola data parkir mobil. 
Aplikasi ini terhubung dengan database Supabase sehingga data kendaraan dapat disimpan dan ditampilkan secara online.

## Fitur Aplikasi
- Menampilkan data kendaraan dari database Supabase
  <img width="1365" height="632" alt="image" src="https://github.com/user-attachments/assets/9bca5fe1-9761-4a77-a308-a4c432d5807d" />

- Menambahkan data kendaraan baru
  1. menamahkan data
     <img width="1365" height="632" alt="image" src="https://github.com/user-attachments/assets/d254d8e7-4b04-4ed8-9404-54134df42a6f" />
  2. hasilnya
     <img width="1365" height="632" alt="image" src="https://github.com/user-attachments/assets/5f89eba0-49ef-4cf6-aa6e-eba6b30943f6" />


- Mengedit data kendaraan
  1. sebelum di edit
     <img width="1365" height="633" alt="image" src="https://github.com/user-attachments/assets/0a6e89b2-e7d4-45d8-93d4-6b0f5b00d510" />
  2. sesudah di edit
     <img width="1365" height="632" alt="image" src="https://github.com/user-attachments/assets/9c3623ce-bb46-4b06-a328-23105e042868" />
  3. hasilnya
     <img width="1365" height="633" alt="image" src="https://github.com/user-attachments/assets/e3d915bf-e2af-4f07-8120-d14640422cd5" />



- Menghapus data kendaraan
  1. sebelum dihapus
     <img width="1365" height="632" alt="image" src="https://github.com/user-attachments/assets/58731ac0-645b-40ee-aec0-00cb52ffab60" />
  2. sesudah dihapus
     <img width="1365" height="631" alt="image" src="https://github.com/user-attachments/assets/edebe792-77a3-4b8c-8f67-c5f48c8efcaa" />


- Navigasi antar halaman (List Data dan Form)
  1. Aplikasi ini memiliki navigasi antar halaman menggunakan widget Navigator pada Flutter. Halaman utama menampilkan daftar data kendaraan yang diambil dari database Supabase, sedangkan halaman kedua merupakan halaman form yang digunakan untuk menambah dan mengedit data mobil seperti plat nomor, jenis kendaraan, dan jam masuk. Navigasi dari halaman daftar ke halaman form dilakukan menggunakan Navigator.push(), sedangkan untuk kembali ke halaman sebelumnya digunakan Navigator.pop().
