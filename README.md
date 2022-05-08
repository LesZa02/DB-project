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

4 - Закладки (сохраненные пользователей отели)

5 - Отзывы (на отель от гостей)

6 - Комнаты отелей

7 - Категории отелей

Определим взаимосвязи между сущностями и отбразим их на следующей можели:
## Концепуальная модель
![image](https://user-images.githubusercontent.com/70393328/161622169-f236e386-551a-4900-9f9a-7b922e96687e.png)

Деталезируем сущности, определим атрибуты:
## Логическая модель
![log](https://user-images.githubusercontent.com/70393328/161622050-f5c30506-53ea-4ece-8af5-8b7916bf8980.png)

Определим, какие данные будем хранить и какие будут ограничения:
 ## Физическая модель
 
#### Hotels
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | hotels's id | SERIAL | PRIMARY KEY |
| name |  hotel name | VARCHAR(20) | NOT NULL |
| email | hotel email adress | VARCHAR(40) | UNIQUE |
| city | city name |  VARCHAR(20) |  |
| website | website | VARCHAR(40) | UNIQUE |
| phone | phone number | INTEGER | UNIQUE |
| hotel_chain_id | hotel's chain id | SERIAL | FOREIGN KEY |
| category_id | category's id | SERIAL | FOREIGN KEY |

#### Bookings
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| booking_id | booking's id | SERIAL | PRIMARY KEY |
| guest_id |  guest's id | SERIAL | FOREIGN KEY |
| guest_number | number of guest | INTEGER | NOT NULL |
| room_id | room's id | SERIAL | FOREIGN KEY |
| check_in | check in date | DATE | NOT NULL |
| check_out | check out date | DATE | NOT NULL |

#### Guests
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | guest`s id | SERIAL | PRIMARY KEY |
| first_name |  guest`s first name | VARCHAR(20) | NOT NULL |
| last_name | guest`s last name | VARCHAR(20) | NOT NULL |
| email | guest's email adress | VARCHAR(40) | UNIQUE |

#### Rooms
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| room_id | room`s id | SERIAL | PRIMARY KEY |
| hotel_id | hotel`s id | SERIAL | FOREIGN KEY |
| bed_number |  number of bed in room | INTEGER |  |
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
| review_content |  review content | VARCHAR(400) |  |

#### Category
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| category_id | category`s id | SERIAL | PRIMARY KEY |
| discription |  description | VARCHAR(400) |  |

#### Hotel's chain
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_chain_id | category`s id | SERIAL | PRIMARY KEY |
| discription |  description | VARCHAR(400) |  |
| email | chain's email adress | VARCHAR(40) | UNIQUE |

