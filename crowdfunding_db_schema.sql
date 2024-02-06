-- crowdfunding_db_schema.sql

-- Create categories table
CREATE TABLE crowdfunding_db_schema.category (
    category_id SERIAL PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Create subcategories table
drop table crowdfunding_db_schema.subcategory;
CREATE TABLE crowdfunding_db_schema.subcategory (
    subcategory_id SERIAL PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Create contacts table
CREATE TABLE crowdfunding_db_schema.contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
FOREIGN KEY (category_id) REFERENCES crowdfunding_db_schema.category(category_id)

-- Create Projects table
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(255) NOT NULL,
    description TEXT,
    user_id INT,
    category_id INT,
    subcategory_id INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategories(subcategory_id)
);