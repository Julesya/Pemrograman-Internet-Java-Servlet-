create user ecommerce identified by 'ecommerce';
drop database if exists dbecommerce;
create database dbecommerce;
use dbecommerce;
grant all on dbecommerce.* to ecommerce;

create table categories (
    category_id varchar(5) not null,
    category_name varchar(30) not null,
    category_description varchar(100) not null,
    primary key(category_id)
);

insert into `categories` (`category_id`, `category_name`, `category_description`) VALUES
('1', 'Fiksi', 'Berisi buku buku pelajaran'),
('2', 'Non Fiksi', 'Berisi novel, buku cerita dan lain lain'),
('3', 'Biografi', 'Berisi tentang biografi atau kehidupan seseorang'),
('4', 'Komik', 'Kumpulan komik komik dari negri sakura'),
('5', 'Ensiklopedi', ' berisi penjelasan mengenai setiap cabang ilmu pengetahuan');


create table products (
    product_id varchar(5) not null,
    title varchar(200) not null,
    author varchar(100) not null,
    description varchar(1000) not null,
    price int not null,
    category_id varchar(5) not null,
    image varchar(256) not null,
    primary key(product_id),
    foreign key(category_id) references categories(category_id)
);

insert into `products` (`product_id`, `title`, `author`, `description`, `price`, `category_id`, `image`) VALUES
('1', 'Otodidak Pemula Python', 'Jubilee Enterprise', 'Buku ini membahas pemrograman Python untuk para pemula.', 42900, '2', 'https://images-na.ssl-images-amazon.com/images/I/41DuV3YlJkL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_SCLZZZZZZZ_FMpng_BG255%2C255%2C255.jpg'),
('2', 'Si Anak Pintar', 'Tere Liye', 'Buku ini tentang Pukat, si anak paling pintar dalam keluarga. Masa kecilnya dipenuhi petualangan seru dan kejadian kocak.', 70000, '1', 'https://cdn.gramedia.com/uploads/items/9786025734502_si-anak-pinta.jpg'),
('3', 'Soekarno : biografi singkat, 1901-1970', 'Taufik Adi Susilo', 'Soekarno adalah founding father, orator ulung, berwibawa, kharismatik, cendikiawan, ideolog.', 70000, '3', 'https://cdn.gramedia.com/uploads/items/soekarno_0bGwltW.jpg'),
('4', 'One Piece ', 'Eiichiro Oda', 'Waktu penentuan untuk pertarungan ekstrem telah tiba!! Inilah kisah petualangan di lautan, One Piece', 25000, '4', 'https://cdn.gramedia.com/uploads/items/9786230001642_Cov_One_Piece.jpg'),
('5', 'Konflik Bersejarah : Ensiklopedi pendudukan Jepang di Indonesia', 'Nino Oktorino', 'Buku ini memberikan informasi lengkap mengenai zaman pendudukan Jepang di Indonesia.', 110000, '5', 'https://cdn.gramedia.com/uploads/items/ID_EMK2013MTH12KBEPJDI_C_.jpg');

create table promotion (
    promotion_id varchar(5) not null,
    product_id varchar(5) not null,
    primary key(promotion_id),
    foreign key(product_id) references products(product_id)
);

INSERT INTO `promotion` (`promotion_id`, `product_id`) VALUES
('3', '1'),
('4', '2'),
('1', '3'),
('2', '4'),
('5', '5');
