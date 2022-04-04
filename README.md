# Data Base project
## Тема: сервис для бронирования отелей.

Смоделируем сервис для бронирования отелей, взяв за основу такой сайт, как booking. 
Выделим следующие сущности:
1 - Бронирования (информация о госте, отеле, бронировании)
2 - Отели (общая информация об отелях, которая показывается при поиске)
3 - Гости (информация о госте, его контакты, история бронирований)
4 - Закладки (сохраненные пользователей отели)
5 - Отзывы (на отель от гостей)
6 - Комнаты отелей
7 - Категории отелей

## Концепуальная модель
![image](https://user-images.githubusercontent.com/70393328/161622169-f236e386-551a-4900-9f9a-7b922e96687e.png)

## Логическая модель
![log](https://user-images.githubusercontent.com/70393328/161622050-f5c30506-53ea-4ece-8af5-8b7916bf8980.png)

 ## Физическая модель
 
 #### Booking
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| booking_id | booking's id | SERIAL | PRIMARY KEY |
| guest_id |  guest's id | SERIAL | PRIMARY KEY |
| room_id | room's id | SERIAL | PRIMARY KEY |
| number_of_nights | number of nights | INTEGER | NOT NULL |

#### Hotels
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | booking's id | SERIAL | PRIMARY KEY |
| name |  hotel name | SERIAL | PRIMARY KEY |
| email | email | SERIAL | PRIMARY KEY |
| city | city name | INTEGER | NOT NULL |
| website | website | SERIAL | PRIMARY KEY |
| phone | phone number | INTEGER | NOT NULL |
| category_id | category's id | SERIAL | PRIMARY KEY |

#### Guests
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | booking`s id | SERIAL | PRIMARY KEY |
| first_name |  guest`s id | SERIAL | PRIMARY KEY |
| last_name | room`s id | SERIAL | PRIMARY KEY |
| email | number of nigths | INTEGER | NOT NULL |

#### Bookmarks
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | booking`s id | SERIAL | PRIMARY KEY |
| hotel_id |  guest`s id | SERIAL | PRIMARY KEY |

#### Reviews
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| guest_id | booking`s id | SERIAL | PRIMARY KEY |
| hotel_id |  guest`s id | SERIAL | PRIMARY KEY |

#### Rooms
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| hotel_id | booking`s id | SERIAL | PRIMARY KEY |
| bed_number |  guest`s id | SERIAL | PRIMARY KEY |
| description |  guest`s id | SERIAL | PRIMARY KEY |

#### Category
| Field name | Description | Data type | Restrictions |
|---|---|---|---| 
| category_id | booking`s id | SERIAL | PRIMARY KEY |
