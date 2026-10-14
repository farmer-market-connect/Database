-- ==========================================
-- Project: Farmer to Consumer Connection
-- Database: PostgreSQL
-- ==========================================

-- 1. Users (शेतकरी आणि ग्राहक) टेबल
CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    location VARCHAR(100)
);

-- 2. Products (शेतीमाल) टेबल
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    farmer_id INT REFERENCES Users(user_id),
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- 3. Orders (ऑर्डर्स) टेबल
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    consumer_id INT REFERENCES Users(user_id),
    total_amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Pending'
);

-- ==========================================
-- Sample Data (नमुना माहिती)
-- ==========================================

-- शेतकरी आणि ग्राहकांची माहिती भरणे
INSERT INTO Users (name, role, phone, location) VALUES
('रमेश पाटील', 'Farmer', '9876543210', 'नाशिक'),
('सुरेश देशमुख', 'Consumer', '8765432109', 'मुंबई');

-- शेतकऱ्याची उत्पादने भरणे 
INSERT INTO Products (farmer_id, product_name, price, stock) VALUES
(1, 'सेंद्रिय टोमॅटो', 40.00, 100),
(1, 'ताजा कांदा', 30.00, 500);

-- ग्राहकाची ऑर्डर भरणे
INSERT INTO Orders (consumer_id, total_amount, status) VALUES
(2, 200.00, 'Confirmed');