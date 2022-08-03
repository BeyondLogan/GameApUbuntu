cd

curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

wget -O - https://packages.sury.org/php/apt.gpg | sudo apt-key add -
echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/php.list
sudo apt-get update

git clone https://github.com/et-nik/gameap /var/www/gameap

cd /var/www/gameap

cp .env.12345678 .env

composer install --no-dev --optimize-autoloader

php artisan key:generate --force

php artisan migrate --seed

curl -sL https://deb.nodesource.com/setup_10.x | bash -
apt-get install -y nodejs

npm install

npm run prod

* * * * * cd /patch/to/gameap && php artisan schedule:run >> /dev/null 2>&1

cd /patch/to/gameap && php artisan schedule:run >> /dev/null 2>&1

touch /var/www/gameap/database.sqlite

cd public

php -S localhost:8080
