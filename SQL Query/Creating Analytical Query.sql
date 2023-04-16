-- Test 1
-- Ranking popularitas model mobil berdasarkan jumlah bid
with product_bid as (
select product_id, count(product_id) as count_bid_product from dim_bid_buyer dbb 
group by product_id order by count(product_id) desc 
),
product_sell as 
(
select product_id , count(product_id) as count_product_sell from fact_advertisement
group by product_id 
)
select product_id, count_bid_product, count_product_sell
from product_bid
join product_sell using (product_id)
order by count_bid_product desc

-- Test 2
-- Membandingkan harga mobil berdasarkan harga rata-rata per kota
SELECT dl.city, dp.brand, dp.model, dp."year",
       AVG(fa.price_sell) OVER (PARTITION BY dl.city) AS avg_price
FROM fact_advertisement fa
JOIN dim_product dp USING (product_id)
JOIN dim_user_seller dus USING (user_id)
JOIN dim_location dl ON dus.location_id = dl.location_id
order by dp."year" desc 

-- Test 3
-- Dari penawaran suatu model mobil, cari perbandingan tanggal user melakukan bid 
-- dengan bid selanjutnya beserta harga tawar yang diberikan
with cte as 
(
SELECT dp.model, dbb.user_id_buyer, dbb.date_created AS bid_date, 
       LEAD(dbb.date_created) OVER (PARTITION BY dp.model, dbb.user_id_buyer ORDER BY dbb.date_created) AS next_bid_date,
       dbb.bid_price, 
       LEAD(dbb.bid_price) OVER (PARTITION BY dp.model, dbb.user_id_buyer ORDER BY dbb.date_created) AS next_bid_price
FROM dim_bid_buyer dbb
JOIN dim_product dp ON dbb.product_id = dp.product_id
WHERE dp.model = 'Toyota Yaris' 
)
select * from cte 
where next_bid_date is not null and next_bid_price is not null
ORDER BY cte.user_id_buyer, cte.bid_date;

-- Test 4
-- Membandingkan persentase perbedaan rata-rata harga mobil berdasarkan modelnya 
-- dan rata-rata harga bid yang ditawarkan oleh customer pada 6 bulan terakhir 

WITH cte_avg_price AS (
-- Menghitung Harga Rata-Rata mobil
  SELECT dp.brand, dp.model, AVG(fa.price_sell) AS avg_price
  FROM fact_advertisement fa
  JOIN dim_product dp USING (product_id)
  GROUP BY dp.brand, dp.model
), 
cte_avg_bid AS (
SELECT dp.brand, dp.model, 
AVG(dbb.bid_price) AS avg_bid_6month
FROM dim_bid_buyer dbb
JOIN dim_product dp ON dbb.product_id = dp.product_id
WHERE dbb.date_created >= NOW() - INTERVAL '6 months'
group by dp.brand, dp.model
)
select 
cte_avg_price.brand, 
cte_avg_price.model, 
ROUND(cte_avg_price.avg_price,2) as avg_price,
ROUND(cte_avg_bid.avg_bid_6month,2) as avg_bid_6month,
ROUND(cte_avg_price.avg_price - cte_avg_bid.avg_bid_6month, 2) AS difference,
ROUND(((cte_avg_price.avg_price - cte_avg_bid.avg_bid_6month) / cte_avg_price.avg_price ) * 100, 2) AS difference_percent
from cte_avg_price
join cte_avg_bid using (model)
order by cte_avg_price.brand

-- Test 5
-- Membuat  rata-rata harga bid sebuah merk dan model mobil selama 6 bulan terakhir
SELECT dp.brand, dp.model,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' AND NOW() 
                THEN dbb.bid_price ELSE NULL END) AS m_min_1,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' - INTERVAL '1 month' AND NOW() - INTERVAL '1 month'
                THEN dbb.bid_price ELSE NULL END) AS m_min_2,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' - INTERVAL '2 months' AND NOW() - INTERVAL '2 months'
                THEN dbb.bid_price ELSE NULL END) AS m_min_3,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' - INTERVAL '3 months' AND NOW() - INTERVAL '3 months'
                THEN dbb.bid_price ELSE NULL END) AS m_min_4,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' - INTERVAL '4 months' AND NOW() - INTERVAL '4 months'
                THEN dbb.bid_price ELSE NULL END) AS m_min_5,
       AVG(CASE WHEN dbb.date_created BETWEEN NOW() - INTERVAL '6 months' - INTERVAL '5 months' AND NOW() - INTERVAL '5 months'
                THEN dbb.bid_price ELSE NULL END) AS m_min_6
FROM dim_bid_buyer dbb
JOIN dim_product dp ON dbb.product_id = dp.product_id
WHERE dbb.date_created >= NOW() - INTERVAL '6 months'
GROUP BY dp.brand, dp.model;


