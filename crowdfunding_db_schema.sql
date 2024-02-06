-- crowdfunding_db_schema.sql

-- Create categories table
DROP crowdfunding_db_schema.category;
CREATE TABLE crowdfunding_db_schema.category (
    category_id VARCHAR(255) PRIMARY KEY,
    category VARCHAR(255) NOT NULL
);

-- Create subcategories table
drop table crowdfunding_db_schema.subcategory;
CREATE TABLE crowdfunding_db_schema.subcategory (
    subcategory_id VARCHAR(255) PRIMARY KEY,
    subcategory VARCHAR(255) NOT NULL
);

-- Create contacts table
DROP TABLE crowdfunding_db_schema.contacts;
CREATE TABLE crowdfunding_db_schema.contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Create campaign table
CREATE TABLE crowdfunding_db_schema.campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(255) NOT NULL,
    description VARCHAR(255) NOT NULL,
    goal INT,
    pledged INT,
	outcome VARCHAR(255) NOT NULL,
	backers_count VARCHAR(255) NOT NULL,
	country VARCHAR(255) NOT NULL,
	currency VARCHAR(255) NOT NULL,
	launched_date INT,
	end_date INT,
	category_id VARCHAR (255) NOT NULL,
	subcategory_id VARCHAR(255) NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES crowdfunding_db_schema.contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES crowdfunding_db_schema.category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES crowdfunding_db_schema.subcategory(subcategory_id)
);