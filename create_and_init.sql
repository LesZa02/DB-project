/* create schema */
CREATE SCHEMA IF NOT EXISTS booking_base;

/* init */
CREATE TABLE IF NOT EXISTS booking_base.categories(
    category_id	SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    description	VARCHAR(400)
);

CREATE TABLE IF NOT EXISTS booking_base.company(
    hotel_company_id	SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    website	VARCHAR(40)	UNIQUE
);

CREATE TABLE IF NOT EXISTS booking_base.hotels(
    hotel_id SERIAL PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    city VARCHAR(20),
    email VARCHAR(40) UNIQUE,
    phone VARCHAR(40) UNIQUE,
    hotel_company_id SERIAL REFERENCES booking_base.company (hotel_company_id),
    category_id	SERIAL REFERENCES booking_base.categories (category_id)
);

CREATE TABLE IF NOT EXISTS booking_base.placements(
    placement_id	SERIAL	PRIMARY KEY,
    hotel_id SERIAL REFERENCES booking_base.hotels (hotel_id),
    capacity INTEGER,
    description	VARCHAR(400)
);

CREATE TABLE IF NOT EXISTS booking_base.guests(
    guest_id	SERIAL	PRIMARY KEY,
    first_name	VARCHAR(20)	NOT NULL,
    last_name	VARCHAR(20)	NOT NULL,
    email VARCHAR(40) UNIQUE
);

CREATE TABLE IF NOT EXISTS booking_base.bookings(
    booking_id	SERIAL	PRIMARY KEY,
    guest_id SERIAL REFERENCES booking_base.guests (guest_id),
    guest_number	INTEGER	NOT NULL,
    placement_id SERIAL REFERENCES booking_base.placements (placement_id),
    check_in	DATE	DEFAULT now()::date,
    check_out	DATE	NOT NULL
);

CREATE TABLE IF NOT EXISTS booking_base.reviews(
    review_id	SERIAL	PRIMARY KEY,
    guest_id SERIAL REFERENCES booking_base.guests (guest_id),
    hotel_id SERIAL REFERENCES booking_base.hotels (hotel_id),
    rating INTEGER NOT NULL,
    review_content	VARCHAR(400)
);

CREATE TABLE IF NOT EXISTS booking_base.bookmarks(
    bookmark_id	SERIAL	PRIMARY KEY,
    guest_id SERIAL REFERENCES booking_base.guests (guest_id),
    hotel_id SERIAL REFERENCES booking_base.hotels (hotel_id)
);

