create database warungmakan_3618
use warungmakan_3618

create table makanan_3618(
id_makanan char(10) primary key not null,
nama_makanan varchar (20) not null,
harga_makanan numeric,
stok int
)

create table minuman_3618(
id_minum char(10) primary key not null,
nama_minum varchar (20) not null,
harga_minum numeric,
stok int
)

create table customer_3618(
id_customer char(10) primary key not null,
nama_customer varchar (30) not null,
alamat varchar (50),
gender char(1) check (gender = 'L' or gender = 'P'),
)

create table karyawan_3618(
id_karyawan char(10) primary key not null,
nama_karyawan varchar (30) not null,
alamat varchar (50),
gender char(1) check (gender = 'L' or gender = 'P'),
gaji numeric
)
alter table karyawan_3618 add jabatan varchar (20)


create table pesan_3618(
id_pesan char(10) primary key not null foreign key references pemesan_3618 (id_pesan),
id_makanan char(10) foreign key references makanan_3618 (id_makanan),
id_minum char(10) foreign key references minuman_3618 (id_minum),
jml_minuman int,
jml_makanan int,
harga_mkn numeric,
harga_mnm numeric
)

create table pemesan_3618(
id_pesan char(10) primary key not null,
id_customer char(10) foreign key references customer_3618 (id_customer),
id_karyawan char(10) foreign key references karyawan_3618 (id_karyawan),
tgl_pesan datetime
)

INSERT INTO makanan_3618 VALUES ('MK-001','Magelangan',10000,25)
INSERT INTO makanan_3618 VALUES ('MK-002','Soto',6000,100)
INSERT INTO makanan_3618 VALUES ('MK-003','Mie Jawa',10000,70)
INSERT INTO makanan_3618 VALUES ('MK-004','Sup',6000,100)
INSERT INTO makanan_3618 VALUES ('MK-005','Orek Tempe',5000,50)
INSERT INTO makanan_3618 VALUES ('MK-006','Nasi Goreng',10000,100)
INSERT INTO makanan_3618 VALUES ('MK-007','Telur Balado',8000,40)
INSERT INTO makanan_3618 VALUES ('MK-008','Orak Arik',6000,50)

INSERT INTO minuman_3618 VALUES ('MN-001','Es Teh',3000,100)
INSERT INTO minuman_3618 VALUES ('MN-002','Teh Hangat',2000,100)
INSERT INTO minuman_3618 VALUES ('MN-003','Es Jeruk',3000,60)
INSERT INTO minuman_3618 VALUES ('MN-004','Jeruk Hangat',2000,60)
INSERT INTO minuman_3618 VALUES ('MN-005','Soda Gembira',6000,50)
INSERT INTO minuman_3618 VALUES ('MN-006','Es Lemon Tea',4000,70)
INSERT INTO minuman_3618 VALUES ('MN-007','Lemon Tea Hangat',3000,70)
INSERT INTO minuman_3618 VALUES ('MN-008','Nutrisari',3000,30)

INSERT INTO customer_3618 VALUES ('C-0001','Supri','Yogyakarta','L')
INSERT INTO customer_3618 VALUES ('C-0002','Suyono','Jakarta','L')
INSERT INTO customer_3618 VALUES ('C-0003','Bento','Solo','L')
INSERT INTO customer_3618 VALUES ('C-0004','Painem','Yogyakarta','P')
INSERT INTO customer_3618 VALUES ('C-0005','Kenjey','Jakarta','P')
INSERT INTO customer_3618 VALUES ('C-0006','Made','Bali','L')
INSERT INTO customer_3618 VALUES ('C-0007','Sri','Surabaya','P')
INSERT INTO customer_3618 VALUES ('C-0008','Joko','Yogyakarta','L')
INSERT INTO customer_3618 VALUES ('C-0009','Kinan','Surabaya','P')
INSERT INTO customer_3618 VALUES ('C-0010','Yuya','Solo','P')

INSERT INTO karyawan_3618 VALUES ('K-0001','Yuwono','Solo','L',1700000,'Pelayan')
INSERT INTO karyawan_3618 VALUES ('K-0002','Pablo','Yogyakarta','L',1700000,'Pelayan')
INSERT INTO karyawan_3618 VALUES ('K-0003','Sari','Solo','P',1900000,'Kasir')
INSERT INTO karyawan_3618 VALUES ('K-0004','Dewi','Klaten','P',1700000,'Pelayan')
INSERT INTO karyawan_3618 VALUES ('K-0005','Alex','Yogyakarta','L',1700000,'Pelayan')
INSERT INTO karyawan_3618 VALUES ('K-0006','Movic','Klaten','L',1700000,'Pelayan')
INSERT INTO karyawan_3618 VALUES ('K-0007','Lasmini','Kendal','P',1900000,'Kasir')
INSERT INTO karyawan_3618 VALUES ('K-0008','Jarot','Yogyakarta','L',1600000,'Keamanan')
INSERT INTO karyawan_3618 VALUES ('K-0009','Nyujiyem','Solo','P',1800000,'Koki')
INSERT INTO karyawan_3618 VALUES ('K-0010','Mendring','Yogyakarta','P',1800000,'Koki')

INSERT INTO pesan_3618 VALUES ('P-0001','MK-002','MN-001',2,2,6000,3000)
INSERT INTO pesan_3618 VALUES ('P-0002','MK-001','MN-004',1,1,10000,2000)
INSERT INTO pesan_3618 VALUES ('P-0003','MK-002','MN-003',1,2,6000,3000)
INSERT INTO pesan_3618 VALUES ('P-0004','MK-007','MN-008',1,1,8000,3000)
INSERT INTO pesan_3618 VALUES ('P-0005','MK-008','MN-001',3,3,6000,3000)
INSERT INTO pesan_3618 VALUES ('P-0006','MK-004','MN-006',1,2,6000,4000)
INSERT INTO pesan_3618 VALUES ('P-0007','MK-002','MN-001',2,2,6000,3000)
INSERT INTO pesan_3618 VALUES ('P-0008','MK-003','MN-002',2,3,10000,2000)

INSERT INTO pemesan_3618 VALUES ('P-0001','C-0001','K-0002','2022-05-01')
INSERT INTO pemesan_3618 VALUES ('P-0002','C-0004','K-0001','2022-05-01')
INSERT INTO pemesan_3618 VALUES ('P-0003','C-0006','K-0005','2022-05-03')
INSERT INTO pemesan_3618 VALUES ('P-0004','C-0003','K-0002','2022-05-04')
INSERT INTO pemesan_3618 VALUES ('P-0005','C-0002','K-0004','2022-05-04')
INSERT INTO pemesan_3618 VALUES ('P-0006','C-0007','K-0005','2022-05-06')
INSERT INTO pemesan_3618 VALUES ('P-0007','C-0005','K-0001','2022-05-06')
INSERT INTO pemesan_3618 VALUES ('P-0008','C-0010','K-0006','2022-05-06')



select * from customer_3618
select * from makanan_3618
select * from karyawan_3618




select customer_3618.nama_customer as Nama,  pemesan_3618.id_pesan, tgl_pesan, pesan_3618.id_makanan, id_minum,jml_makanan, jml_minuman,harga_mkn,harga_mnm ,((jml_makanan * harga_mkn) + (jml_minuman * harga_mnm)) as sub_total 
from customer_3618 inner join pemesan_3618 on customer_3618.id_customer = pemesan_3618.id_customer inner join pesan_3618 on pemesan_3618.id_pesan = pesan_3618.id_pesan

--- 1
select  nama_makanan  from makanan_3618 where id_makanan NOT IN
( select id_makanan from pesan_3618)

--2
select customer_3618.id_customer, nama_customer as Nama,  pemesan_3618.id_pesan, tgl_pesan
from customer_3618 inner join pemesan_3618 on customer_3618.id_customer = pemesan_3618.id_customer

--3
select customer_3618.nama_customer as Nama,  pemesan_3618.tgl_pesan, karyawan_3618.nama_karyawan
from customer_3618 inner join pemesan_3618 on customer_3618.id_customer = pemesan_3618.id_customer 
inner join karyawan_3618 on pemesan_3618.id_karyawan = karyawan_3618.id_karyawan

--4
select id_karyawan , nama_karyawan  from karyawan_3618 where nama_karyawan IN
(select nama_karyawan from karyawan_3618 where nama_karyawan like'%w%' or nama_karyawan like '%o%')

--5
create trigger tg_tambah_data on karyawan_3618
for insert
as
	declare @data_input varchar (30)
	declare @table varchar (30)
begin 
	select @data_input = nama_karyawan from inserted
	print 'Penambahan data pada karyawan_3618 dengan data ' +@data_input+ ' berhasil diinputkan'
end
insert into karyawan_3618(id_karyawan, nama_karyawan) values ('K-0011','Steve')

--6
--=horisontal
create view customer_warung
as
select * from customer_3618 where alamat = 'Yogyakarta'
select * from customer_warung

--vertical
create view customer_warung_vertical
as
select id_customer, nama_customer from customer_3618 where alamat = 'Yogyakarta'
select * from customer_warung_vertical

--view on view 
create view customer_warung
as
select * from customer_3618 where alamat = 'Yogyakarta'

create view customer_warung_view
as
select id_customer, nama_customer from customer_warung

select * from customer_warung_view

ALTER TABLE karyawan_3618 ADD INDEX(id_karyawan);



 (nama_table) dengan data (data_input) berhasil di inputkan” 





 ('G012', 'SUSU SEGAR')