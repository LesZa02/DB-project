/* indexes */
CREATE INDEX ON booking_base.bookings (booking_id);
CREATE INDEX ON booking_base.hotels (hotel_id);
CREATE INDEX ON booking_base.placements (placement_id);
CREATE INDEX ON booking_base.guests (first_name, last_name);


/* view */
CREATE SCHEMA booking_view;

CREATE VIEW booking_view.categories AS
SELECT name, description
FROM booking_base.categories;

CREATE VIEW booking_view.company AS
SELECT name, website
FROM booking_base.company;

CREATE VIEW booking_view.hotels AS
SELECT hotels.name AS hotel_name, city, email, phone, categories.name AS category, AVG(reviews.rating)
FROM booking_base.hotels JOIN booking_base.company ON hotels.hotel_company_id = company.hotel_company_id
    JOIN booking_base.categories ON hotels.category_id = categories.category_id
    RIGHT JOIN booking_base.reviews ON hotels.hotel_id = reviews.hotel_id
GROUP BY categories.category_id, hotels.hotel_id;

CREATE VIEW booking_view.guests AS
SELECT first_name, last_name, SUBSTRING(email, 0, 1) || '***' || SUBSTRING(email, STRPOS(email, '@'))
FROM booking_base.guests;

CREATE VIEW booking_view.placement AS
SELECT hotels.name, placements.capacity, placements.description
FROM booking_base.placements JOIN booking_base.hotels ON placements.hotel_id = hotels.hotel_id;

CREATE VIEW booking_view.bookmarks AS
SELECT guests.first_name, guests.last_name, hotels.name
FROM booking_base.guests JOIN booking_base.bookmarks ON guests.guest_id = bookmarks.guest_id
    JOIN booking_base.hotels ON bookmarks.hotel_id = hotels.hotel_id
GROUP BY guests.guest_id, hotels.name;

