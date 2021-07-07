<!-- WEBSITE NAME -->
www.takoen.com

<!-- ABOUT THE PROJECT -->
### About The Project

**Takoen** adalah situs forum interaktif sederhana di mana Anda dapat mendaftarkan akun dan membuat utas tentang pertanyaan, masalah, atau masalah Anda terkait topik yang Anda pilih. Anda juga dapat membalas, mengikuti, dan menyukai utas pengguna lainnya.

List beberapa fungsi
* Register account
* Create threads
* Reply on threads
* Like threads
* Follow threads dan dapat mendapatkan notifikasi dari penggunan lain.

### Built With

* [Laravel](https://laravel.com)
* [Vue.js](https://vuejs.org)
* SASS
<!-- * [Vue2Editor](https://www.vue2editor.com/) -->

<!-- GETTING STARTED -->
### Getting Started
Untuk memulai menyiapkan proyek Anda secara lokal. Untuk mengaktifkan dan menjalankan salinan lokal, ikuti langkah-langkah sederhana ini.



### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/wickeddd3/Forum.git
   ```
2. Install Composer packages
   ```sh
   composer install
   ```
3. Install NPM packages
   ```sh
   npm install
   ```
4. Create a copy of .env.example and rename it to .env
5. Inside .env fill up Database and Mail details.
   For development purposes you can use Mailtrap (https://mailtrap.io)
   as mail host.
6. Generate APP_KEY
   ```sh
   php artisan key:generate
   ```
7. Database Migration
   ```sh
   php artisan migrate --seed

   // --seed command will generate dummy data on your database
   ```
8. Link storage to public directory
   ```sh
   php artisan storage:link
   ```
9. Run locally
   ```sh
   php artisan serve
   ```
10. Compile assets
   ```sh
   npm run watch
   ```
