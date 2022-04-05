# Data Base project
## Тема: сервис для бронирования отелей.
Цели работы: получение практических навыков работы с промышленными СУБД, проектирование
БД (концептуальное, логическое, физическое), создание хранимых процедур, представлений,
триггеров, индексов.

За предметную область выберем сервис для бронирования отелей. За основу возьмем такой сайт, как booking. 

![image](https://user-images.githubusercontent.com/70393328/161640973-991eeaa5-335b-42db-b1d0-a0d99724ec75.png)

Выделим следующие сущности:

1 - Бронирования (информация о госте, отеле, бронировании)

2 - Отели (общая информация об отелях, которая показывается при поиске)

3 - Гости (основная информация о госте)

4 - Закладки (сохраненные пользователем отели)

5 - Отзывы (на отель от гостей)

6 - Комнаты отелей

7 - Категории отелей

Определим взаимосвязи между сущностями и отбразим их на следующей можели:
## Концепуальная модель
![image](https://user-images.githubusercontent.com/70393328/161622169-f236e386-551a-4900-9f9a-7b922e96687e.png)

Деталезируем сущности, определим атрибуты:
## Логическая модель
![image](https://user-images.githubusercontent.com/70393328/161745240-80565f10-5a97-42dc-88e2-3360cd42e9ad.png)

Определим, какие данные будем хранить и какие будут ограничения:
 ## Физическая модель
 
 #### Booking
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| booking_id | booking's id | SERIAL | PRIMARY KEY |
| guest_id |  guest's id | SERIAL | FOREIGN KEY |
| room_id | room's id | SERIAL | FOREIGN KEY |
| check_in | check-in data | DATE | NOT NULL |
| check_out | check-out data | DATE | NOT NULL |

#### Hotels
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | hotels's id | SERIAL | PRIMARY KEY |
| name |  hotel name | VARCHAR(20) | NOT NULL |
| email | hotel email adress | VARCHAR(40) | UNIQUE |
| city | city name |  VARCHAR(20) |  |
| website | website | VARCHAR(40) | UNIQUE |
| phone | phone number | INTEGER | UNIQUE |
| category_id | category's id | SERIAL | FOREIGN KEY |

#### Guests
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | guest`s id | SERIAL | PRIMARY KEY |
| first_name |  guest`s first name | VARCHAR(20) | NOT NULL |
| last_name | guest`s last name | VARCHAR(20) | NOT NULL |
| email | guest's email adress | VARCHAR(40) | UNIQUE |

#### Bookmarks
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | guest`s id | SERIAL | FOREIGN KEY |
| hotel_id |  hotel`s id | SERIAL | FOREIGN KEY |

#### Reviews
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | guest`s id | SERIAL | FOREIGN KEY |
| hotel_id |  hotel`s id | SERIAL | FOREIGN KEY |
| review_content | content of review | VARCHAR(400) | |

#### Rooms
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | hotel`s id | SERIAL | FOREIGN KEY |
| bed_number |  number of bed in room | INTEGER |  |
| description |  guest`s id | VARCHAR(400) |  |

#### Category
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| category_id | category`s id | SERIAL | PRIMARY KEY |

Хранить историю изменений объявлений и данных пользователя нет необходимости, поэтому достаточно использовать SCD2.
