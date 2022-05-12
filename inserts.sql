/* inserts */
INSERT INTO booking_base.categories
VALUES (1, 'отель', 'средство размещения, состоящее из определённого количества номеров, имеющее единое руководство, предоставляющее набор услуг (минимум — заправка постелей, уборка номера и санузла');
INSERT INTO booking_base.categories
VALUES (2, 'хостел', 'система размещения, предоставляющая своим постояльцам на короткий или длительный срок жильё, представляющее собой спальное место без дополнительных удобств в комнате');
INSERT INTO booking_base.categories
VALUES(3, 'вилла', 'загородный дом, предназначенный для сезонного проживания, дорогостоящий, богато украшенный, на большой территории, для проживания одной семьи');
INSERT INTO booking_base.categories
VALUES(4, 'глэмпинг', 'разновидность кемпинга, объединяющая в себе комфорт гостиничного номера с возможностью отдыха на природе');
INSERT INTO booking_base.categories
VALUES(5, 'коттедж', 'индивидуальный городской или сельский малоэтажный жилой дом с небольшим участком прилегающей земли');
INSERT INTO booking_base.categories
VALUES(6, 'апартаменты', 'комната или отдельное помещение в доме с собственной кухней');
INSERT INTO booking_base.categories
VALUES(7, 'кемпинг', 'оборудованный летний лагерь для автотуристов c местами для установки палаток или лёгкими домиками, местами для стоянки автомобилей и туалетами');
INSERT INTO booking_base.categories
VALUES(8, 'проживание в семье', 'частным домом, где хозяин проживает вместе c гостями и совместно пользуется основными удобствами.');
INSERT INTO booking_base.categories
VALUES(9, 'загородный дом', 'жилое строение с прилегающими постройками приусадебно-хозяйственного назначения');
INSERT INTO booking_base.categories
VALUES(10, 'отели типа «постель и завтрак»', 'мини-отель, сдающий небольшое кол-во номеров, где отсутствует наемный персонал; обычно всем руководством занимается владелец здания ');

INSERT INTO booking_base.company
VALUES (1, 'Hilton Hotels & Resorts', 'hilton.com/');
INSERT INTO booking_base.company
VALUES (2, 'Holiday Inn Hotels', 'holidayinn.com/');
INSERT INTO booking_base.company
VALUES (3, 'My Hostel Almaty', 'my-hostel-almaty.almaty-hotel.com');
INSERT INTO booking_base.company
VALUES (4, 'Aldemar Hotels & Spa', 'https://www.aldemar-resorts.gr/ru/');
INSERT INTO booking_base.company
VALUES (5, 'Novotel', 'https://novotel.accor.com/ru/');
INSERT INTO booking_base.company
VALUES (6, 'Hyatt Hotels Corporation', 'https://www.hyatt.com/en-US/home/');
INSERT INTO booking_base.company
VALUES (7, 'Nord Camping', 'https://nordcamping.ru/');
INSERT INTO booking_base.company
VALUES (8, 'GLAMP INN', NULL);
INSERT INTO booking_base.company
VALUES (9, 'Phystech Hotel', 'https://phystech-hotel.ru/');
INSERT INTO booking_base.company
VALUES (10, 'Riders Lodge', 'https://ridersfamily.ru/');

INSERT INTO booking_base.hotels
VALUES (1, 'Holiday Inn Express Toluca Galerias Metepec, an IHG Hotel', 'Metepec', NULL, '+527222359595', 2, 1);
INSERT INTO booking_base.hotels
VALUES (2, 'My Hostel Almaty', 'Almaty', NULL, '+77766788344', 3, 2);
INSERT INTO booking_base.hotels
VALUES (3, 'Hilton Baku', 'Baku', NULL, '+994124645000', 1, 1);
INSERT INTO booking_base.hotels
VALUES (4, 'Holiday Inn London Heathrow - Bath Road, an IHG Hotel', 'London', NULL, '84951800398', 2, 1);
INSERT INTO booking_base.hotels
VALUES (5, 'Hotel Novotel Sharm El-Sheikh', 'Sharm El-Sheikh', NULL, '+20693600172', 5, 1);
INSERT INTO booking_base.hotels
VALUES (6, 'Phystech Hotel', 'Dolgoprudny', 'info@phystech-hotel.ru', '+78002005645', 9, 1);
INSERT INTO booking_base.hotels
VALUES (7, 'Nord Camping', 'Crimea', NULL, '+79114106719', 7, 2);
INSERT INTO booking_base.hotels
VALUES (8, 'Nord Camping', 'Petrozavodsk', NULL, '+79110525557', 7, 2);
INSERT INTO booking_base.hotels
VALUES (9, 'Glamp Inn', 'Kapolcs', NULL, '+36702789100', 8, 4);
INSERT INTO booking_base.hotels
VALUES (10, 'Riders Lodge', 'Baku', 'hotel@ridersfamily.ru', '+78622419245', 10, 1);

INSERT INTO booking_base.placements
VALUES (1, 1, 4, 'Номер с 2 кроватями размера «queen-size». 32 кв. м. Вид на город. Кондиционер. Патио. Ванная комната в номере. Телевизор с плоским экраном. Бесплатный Wi-Fi. Бесплатная парковка');
INSERT INTO booking_base.placements
VALUES (2, 1, 2, 'Стандартный двухместный номер с 1 кроватью. 32 кв. м. Вид на город. Кондиционер. Патио. Ванная комната в номере. Телевизор с плоским экраном. Бесплатный Wi-Fi. Бесплатная парковка');
INSERT INTO booking_base.placements
VALUES (3, 1, 2, 'Номер с кроватью размера «king-size». 32 кв. м. Вид на город. Кондиционер. Патио. Ванная комната в номере. Телевизор с плоским экраном. Бесплатный Wi-Fi. Бесплатная парковка');
INSERT INTO booking_base.placements
VALUES (4, 1, 2, 'Представительский люкс с кроватью размера «king-size». 35 кв. м. Вид на город. Кондиционер. Патио. Ванная комната в номере. Телевизор с плоским экраном. Бесплатный Wi-Fi. Бесплатная парковка');
INSERT INTO booking_base.placements
VALUES (5, 4, 2, 'Двухместный номер с 1 кроватью. 23 кв. м. Кондиционер. Ванная комната в номере. Телевизор с плоским экраном. Звукоизоляция. Бесплатный Wi-Fi');
INSERT INTO booking_base.placements
VALUES (6, 4, 2, 'Двухместный номер с 2 отдельными кроватями. 23 кв. м. Кондиционер. Ванная комната в номере. Телевизор с плоским экраном. Звукоизоляция. Бесплатный Wi-Fi');
INSERT INTO booking_base.placements
VALUES (7, 4, 2, 'Номер Делюкс с кроватью размера «king-size». 1 диван-кровать и 1 большая двуспальная кровать. 29 кв. м. Кондиционер. Ванная комната в номере. Телевизор с плоским экраном. Звукоизоляция. Мини-бар. Бесплатный Wi-Fi. Парковка (платно)');
INSERT INTO booking_base.placements
VALUES (8, 2, 1, 'Кровать в общем номере для мужчин и женщин с 10 кроватями. 35 кв. м. Собственная кухня. Собственная ванная комната. Вид на город. Вид во внутренний дворик. Кондиционер. Посудомоечная машина. Звукоизоляция. Бесплатный Wi-Fi');
INSERT INTO booking_base.placements
VALUES (9, 2, 1, 'Спальное место на двухъярусной кровати в общем номере для женщин. 33 кв. м. Собственная кухня. Собственная ванная комната. Вид на город. Вид во внутренний дворик. Кондиционер. Посудомоечная машина. Звукоизоляция. Бесплатный Wi-Fi');
INSERT INTO booking_base.placements
VALUES (10, 2, 1, 'Спальное место на двухъярусной кровати в общем номере для мужчин. 38 кв. м. Собственная кухня. Собственная ванная комната. Вид на город. Вид во внутренний дворик. Кондиционер. Посудомоечная машина. Звукоизоляция. Бесплатный Wi-Fi');

INSERT INTO booking_base.guests
VALUES (1, 'Ivan', 'Ivanov', 'ivan_ivanov@gmail.com');
INSERT INTO booking_base.guests
VALUES (2, 'Petr', 'Petrov', 'petr_petrov@gmail.com');
INSERT INTO booking_base.guests
VALUES (3, 'Maria', 'Ivanova', 'marria_ivanova@gmail.com');
INSERT INTO booking_base.guests
VALUES (4, 'Daria', 'Ivanova', 'daria_ivanova@gmail.com');
INSERT INTO booking_base.guests
VALUES (5, 'Anna', 'Petrova', 'anna_petrova@gmail.com');
INSERT INTO booking_base.guests
VALUES (6, 'Ksenia', 'Ivanova', 'ksenia_ivanova@gmail.com');
INSERT INTO booking_base.guests
VALUES (7, 'Vlad', 'Ivanov', 'vlad_ivanov@gmail.com');
INSERT INTO booking_base.guests
VALUES (8, 'Michael', 'Ivanov', 'michael_ivanov@gmail.com');
INSERT INTO booking_base.guests
VALUES (9, 'Andrey', 'Petrov', 'andrey_petrov@gmail.com');
INSERT INTO booking_base.guests
VALUES (10, 'Sergey', 'Petrov', 'sergey_petrov@gmail.com');

INSERT INTO booking_base.bookings
VALUES (1, 1, 3, 1, '2022-01-01', '2022-01-03');
INSERT INTO booking_base.bookings
VALUES (2, 2, 2, 1, '2022-01-01', '2022-01-20');
INSERT INTO booking_base.bookings
VALUES (3, 2, 2, 5, '2021-04-01', '2021-04-15');
INSERT INTO booking_base.bookings
VALUES (4, 3, 1, 8, '2021-05-15', '2021-05-20');
INSERT INTO booking_base.bookings
VALUES (5, 3, 1, 9, '2020-05-15', '2020-05-20');
INSERT INTO booking_base.bookings
VALUES (6, 3, 1, 9, '2022-04-20', '2022-04-30');
INSERT INTO booking_base.bookings
VALUES (7, 4, 1, 3, '2021-06-20', '2021-06-30');
INSERT INTO booking_base.bookings
VALUES (8, 5, 2, 4, '2021-12-29', '2022-01-7');
INSERT INTO booking_base.bookings
VALUES (9, 6, 2, 6, '2021-07-10', '2021-08-10');
INSERT INTO booking_base.bookings
VALUES (10, 7, 1, 10, '2021-04-01', '2021-04-15');

INSERT INTO booking_base.reviews
VALUES (1, 1, 1, 10, '');
INSERT INTO booking_base.reviews
VALUES (2, 2, 1, 7, 'Плохая шумоизоляция');
INSERT INTO booking_base.reviews
VALUES (3, 2, 4, 7, 'Слышин шум с улицы');
INSERT INTO booking_base.reviews
VALUES (4, 3, 2, 9, NULL);
INSERT INTO booking_base.reviews
VALUES (5, 3, 10, 7, NULL);
INSERT INTO booking_base.reviews
VALUES (6, 3, 9, 8, NULL);
INSERT INTO booking_base.reviews
VALUES (7, 4, 1, 7, 'Скучный выбор на завтраке');
INSERT INTO booking_base.reviews
VALUES (8, 5, 1, 8, 'Выбор на завтраке не очень');
INSERT INTO booking_base.reviews
VALUES (9, 6, 4, 7, NULL);
INSERT INTO booking_base.reviews
VALUES (10, 7, 2, 7, 'Плохо проветриваемая комната');

INSERT INTO booking_base.bookmarks
VALUES (1, 1, 1);
INSERT INTO booking_base.bookmarks
VALUES (2, 2, 6);
INSERT INTO booking_base.bookmarks
VALUES (3, 3, 8);
INSERT INTO booking_base.bookmarks
VALUES (4, 3, 9);
INSERT INTO booking_base.bookmarks
VALUES (5, 4, 3);
INSERT INTO booking_base.bookmarks
VALUES (6, 7, 6);
INSERT INTO booking_base.bookmarks
VALUES (7, 8, 10);
INSERT INTO booking_base.bookmarks
VALUES (8, 9, 7);
INSERT INTO booking_base.bookmarks
VALUES (9, 9, 8);
INSERT INTO booking_base.bookmarks
VALUES (10, 9, 2);

