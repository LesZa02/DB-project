# Data Base project
## Тема: сервис для бронирования отелей.
Цели работы: получение практических навыков работы с промышленными СУБД, проектирование
БД (концептуальное, логическое, физическое), создание хранимых процедур, представлений,
триггеров, индексов.

За предметную область выберем сервис для бронирования отелей. За основу возбмем такой сайт, как booking. 

Выделим следующие сущности:

1 - Бронирования (информация о госте, отеле, бронировании)

2 - Отели (общая информация об отелях, которая показывается при поиске)

3 - Гости (информация о госте, его контакты, история бронирований)

6 - Тип размещения

Определим взаимосвязи между сущностями и отбразим их на следующей можели:
## Концепуальная модель
![bd1](https://user-images.githubusercontent.com/70393328/167959727-537c1035-1364-4f94-86a0-b41f52e3a3ae.png)

Деталезируем сущности, определим атрибуты:
## Логическая модель
![bd2](https://user-images.githubusercontent.com/70393328/167959735-13d313ae-13d7-46e6-b9ff-51a1bb283ca3.png)

Определим, какие данные будем хранить и какие будут ограничения:
 ## Физическая модель
 
#### Hotels
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | hotels's id | SERIAL | PRIMARY KEY |
| name |  hotel name | VARCHAR(60) | NOT NULL |
| city | city name |  VARCHAR(20) |  |
| email | hotel email adress | VARCHAR(40) | UNIQUE |
| phone | phone number | VARCHAR(40) | UNIQUE |
| hotel_company_id | hotel's company id | SERIAL | FOREIGN KEY |
| category_id | category's id | SERIAL | FOREIGN KEY |

#### Bookings
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| booking_id | booking's id | SERIAL | PRIMARY KEY |
| guest_id |  guest's id | SERIAL | FOREIGN KEY |
| guest_number | number of guest | INTEGER | NOT NULL |
| placement_id | placement's id | SERIAL | FOREIGN KEY |
| check_in | check in date | DATE | NOT NULL |
| check_out | check out date | DATE | NOT NULL |

#### Guests
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | guest`s id | SERIAL | PRIMARY KEY |
| first_name |  guest`s first name | VARCHAR(20) | NOT NULL |
| last_name | guest`s last name | VARCHAR(20) | NOT NULL |
| email | guest's email adress | VARCHAR(40) | UNIQUE |

#### Placements
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| placement_id | placement`s id | SERIAL | PRIMARY KEY |
| hotel_id | hotel`s id | SERIAL | FOREIGN KEY |
| capacity |  number of beds | INTEGER |  |
| description |  description | VARCHAR(400) |  |

#### Bookmarks
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| bookmark_id | bookmark`s id | SERIAL | PRIMARY KEY |
| guest_id | guest`s id | SERIAL | FOREIGN KEY |
| hotel_id |  hotel`s id | SERIAL | FOREIGN KEY |

#### Reviews
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| review_id | review`s id | SERIAL | PRIMARY KEY |
| guest_id | guest`s id | SERIAL | FOREIGN KEY |
| booking_id |  booking`s id | SERIAL | FOREIGN KEY |
| rating |  rating | INTEGER | NOT NULL |
| review_content |  review content | VARCHAR(400) |  |

#### Category
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| category_id | category`s id | SERIAL | PRIMARY KEY |
| name |  category name | VARCHAR(20) | NOT NULL |
| discription |  description | VARCHAR(400) |  |

#### Company
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_chain_id | category`s id | SERIAL | PRIMARY KEY |
| name |  company name | VARCHAR(20) | NOT NULL |
| website	| website | VARCHAR(40)	| UNIQUE |

