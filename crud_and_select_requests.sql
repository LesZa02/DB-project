/* crud-request */
/* исправляем ошибку в почте */
UPDATE booking_base.guests
SET email = 'maria_ivanova@gmail.com'
WHERE guest_id = 1;
/* меняем описание номер */
UPDATE booking_base.placements
SET description = 'Номер с кроватью размера «king-size» и односпальной кроватью. 32 кв. м. Вид на город. Кондиционер. Патио. Ванная комната в номере. Телевизор с плоским экраном. Бесплатный Wi-Fi. Бесплатная парковка'
WHERE placement_id = 3;
/* меняем параметры номера */
UPDATE booking_base.placements
SET capacity = 3
WHERE placement_id = 3;
/* посмотрим все бронирования пользователя 2 */
SELECT booking_id
FROM booking_base.bookings
WHERE guest_id = 2;
/* добавим нового пользователя без почты */
INSERT INTO booking_base.guests
VALUES (11, 'Dmitry', 'Petrov', NULL);
/* добавим почту новому пользователю */
UPDATE booking_base.guests
SET email = 'dmitry_petrov@gmail.com'
WHERE guest_id = 11;
/* изменим номер для связи одному из отелей */
UPDATE booking_base.hotels
SET phone = '+78002005645, +74995509645'
WHERE hotel_id = 6;
/* посмотрим все вариаты размещения в отеле 2 */
SELECT placement_id
FROM booking_base.placements
WHERE hotel_id = 2;
/* удалим у пользователя один отель из избранных */
DELETE from booking_base.bookmarks
WHERE guest_id = 9 AND hotel_id = 2;
/* посмотрим все вариаты размещения в категории "отель" */
SELECT placement_id
FROM booking_base.placements JOIN booking_base.hotels h on placements.hotel_id = h.hotel_id
WHERE category_id = 1;


/* select-request */
/* GROUP BY + HAVING */
/* пользователи, которые имеют более 1 бронирования */
SELECT booking_base.guests.first_name, booking_base.guests.last_name
FROM booking_base.guests JOIN booking_base.bookings ON guests.guest_id = bookings.guest_id
GROUP BY booking_base.guests.guest_id
HAVING count(booking_base.guests.guest_id) > 1;

/* ORDER BY */
/* отсортировать людей, имеющих хоть 1 бронирование, по кол-ву бронирований */
SELECT booking_base.guests.first_name, booking_base.guests.last_name, count(booking_base.guests.guest_id)
FROM booking_base.guests JOIN booking_base.bookings ON guests.guest_id = bookings.guest_id
GROUP BY booking_base.guests.guest_id
ORDER BY count(booking_base.guests.guest_id) DESC ;

/* PARTITION BY OVER */
/* для каждого отеля выведем кол-во бронирований и кол-во гостей в каждом бронировании */
SELECT h.hotel_id, COUNT(b.booking_id) OVER (PARTITION BY h.hotel_id),
       b.booking_id, b.guest_number
FROM booking_base.hotels h JOIN booking_base.placements p ON h.hotel_id = p.hotel_id
    JOIN booking_base.bookings b ON p.placement_id = b.placement_id;

/* ORDER BY OVER */
/* пронумеруем бронирования по дате заезда*/
SELECT ROW_NUMBER() OVER (ORDER BY b.check_in),
       b.booking_id, h.name, b.check_in
FROM booking_base.hotels h JOIN booking_base.placements p ON h.hotel_id = p.hotel_id
    JOIN booking_base.bookings b ON p.placement_id = b.placement_id;

/* PARTITION BY + ORDER BY OVER */
/* для каждого отеля пронумеруем бронирования по мере увеличения даты заезда */
SELECT h.hotel_id, ROW_NUMBER() OVER (PARTITION BY h.hotel_id ORDER BY b.check_in),
       b.booking_id, b.check_in
FROM booking_base.hotels h JOIN booking_base.placements p ON h.hotel_id = p.hotel_id
    JOIN booking_base.bookings b ON p.placement_id = b.placement_id;

/* OVER */
/* для каждого бронирования рассчитаем его порядковый номер (по дате заезда) среди всех бронирований,
   среди бронирований внутри отеля и кол-во бронирований внутри отеля*/
SELECT b.booking_id, h.name, b.check_in, ROW_NUMBER() OVER (ORDER BY b.check_in) AS ov_rating,
       ROW_NUMBER() OVER (PARTITION BY h.hotel_id ORDER BY b.check_in) AS h_rating,
       COUNT(b.booking_id) OVER (PARTITION BY h.hotel_id)
FROM booking_base.hotels h JOIN booking_base.placements p ON h.hotel_id = p.hotel_id
    JOIN booking_base.bookings b ON p.placement_id = b.placement_id;
