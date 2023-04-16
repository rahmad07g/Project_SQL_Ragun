CREATE TABLE dim_location (
    location_id INT PRIMARY KEY,
    city VARCHAR(50) NOT NULL,
    latitude DECIMAL(10, 8) NOT NULL,
    longitude DECIMAL(11, 8) NOT NULL
);

CREATE TABLE dim_user_seller (
    user_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    body_type VARCHAR(50) NOT NULL,
    transmission VARCHAR(10) NOT NULL,
    year INT NOT NULL
);

CREATE TABLE dim_user_buyer (
    user_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    contact VARCHAR(20) NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);

CREATE TABLE dim_bid_buyer (
    bid_buyer_id INT PRIMARY KEY,
    user_id_buyer INT NOT NULL,
    product_id INT NOT NULL,
    bid_price INT NOT NULL,
    date_created TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id_buyer) REFERENCES dim_user_buyer(user_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

CREATE TABLE fact_advertisement (
    ad_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    user_id INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    price_sell INT NOT NULL,
    date_created TIMESTAMP NOT NULL,
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (user_id) REFERENCES dim_user_seller(user_id)
);

CREATE TABLE fact_interest (
    interest_id INT PRIMARY KEY,
    user_id_buyer INT NOT NULL,
    product_id INT NOT NULL,
    location_id INT NOT NULL,
    date_created TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id_buyer) REFERENCES dim_user_buyer(user_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id),
    FOREIGN KEY (location_id) REFERENCES dim_location(location_id)
);
