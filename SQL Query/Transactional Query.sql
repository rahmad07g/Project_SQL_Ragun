-- Test 1
-- Mencari Kendaraan Tahun > 2015
select dp.product_id, dp.brand, dp.model, dp.year, fa.price_sell
from fact_advertisement fa 
join dim_product dp using(product_id)
where dp.year >= 2015

-- Test 2
-- Menambahkan satu data bid produk baru 

insert into dim_bid_buyer (bid_buyer_id ,user_id_buyer, product_id, bid_price, date_created)
values (301, 29,10,188888888,'2022-05-15 16:00:25.000')

-- Menampilkan hasil insert bid produk baru 
select * from dim_bid_buyer dbb 
order by bid_buyer_id desc 

-- Test 3
--Melihat semua mobil yg dijual 1 akun dari yg paling baru
--Contoh: Mobil yang dijual oleh akun oni putra

select dp.product_id , dp.brand , dp.model , dp."year" ,
fa.price_sell as price, fa.date_created as date_post
from fact_advertisement fa
join dim_product dp using (product_id)
join dim_user_seller dus  using (user_id)
where dus."name" = 'Oni Putra'
order by fa.date_created desc 

-- Test 4
-- Mencari mobil bekas yang termurah berdasarkan keyword
select dp.product_id , dp.brand , dp.model , dp."year" ,
fa.price_sell as price, fa.date_created as date_post
from fact_advertisement fa
join dim_product dp using (product_id)
join dim_user_seller dus  using (user_id)
where dp.model = 'Toyota Agya'
order by fa.price_sell asc 

-- Test 5
-- Mencari mobil bekas yang terdekat berdasarkan sebuah id kota, jarak terdekat dihitung berdasarkan latitude longitude
-- dengan catatan kota referensi tersebut dimasukan sehingga jarak yang dihitung adalah antar kota tersebut 
WITH city_location AS (
  -- CTE untuk menyimpan latitude dan longitude kota referensi
  SELECT longitude, latitude
  FROM dim_location
  WHERE location_id = 3173 -- id kota referensi
)
SELECT dp.product_id, dp.brand, dp.model, dp."year", fa.price_sell as price, 
       fa.date_created as date_post, dl.longitude, dl.latitude,
       SQRT(POW(dl.latitude - cl.latitude, 2) + POW(dl.longitude - cl.longitude, 2)) as jarak
FROM fact_advertisement fa
JOIN dim_product dp USING (product_id)
JOIN dim_user_seller dus USING (user_id)
JOIN dim_location dl ON dus.location_id = dl.location_id 
CROSS JOIN city_location cl -- melakukan cross join dengan CTE city_location
WHERE dus.location_id <> 3173 -- hanya mencari mobil bekas di luar kota referensi
ORDER BY jarak ASC -- mengurutkan hasil berdasarkan jarak dan harga jual

